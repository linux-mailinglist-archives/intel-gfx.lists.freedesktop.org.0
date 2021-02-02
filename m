Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9694730C56F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 17:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F786E95C;
	Tue,  2 Feb 2021 16:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F79E6E952
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 16:24:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23774536-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Feb 2021 16:24:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Feb 2021 16:24:44 +0000
Message-Id: <20210202162444.25823-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] Revert "ALSA: jack: implement software jack
 injection via debugfs"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 2d670ea2bd53a9792f453bb5b97cb8ef695988ff.
---
 Documentation/sound/designs/index.rst         |   1 -
 .../sound/designs/jack-injection.rst          | 166 ----------
 include/sound/core.h                          |   6 -
 include/sound/jack.h                          |   1 -
 sound/core/Kconfig                            |   9 -
 sound/core/init.c                             |  16 -
 sound/core/jack.c                             | 304 +-----------------
 sound/core/sound.c                            |  13 -
 8 files changed, 4 insertions(+), 512 deletions(-)
 delete mode 100644 Documentation/sound/designs/jack-injection.rst

diff --git a/Documentation/sound/designs/index.rst b/Documentation/sound/designs/index.rst
index 1eb08e7bae52..f0749943ccb2 100644
--- a/Documentation/sound/designs/index.rst
+++ b/Documentation/sound/designs/index.rst
@@ -14,4 +14,3 @@ Designs and Implementations
    powersave
    oss-emulation
    seq-oss
-   jack-injection
diff --git a/Documentation/sound/designs/jack-injection.rst b/Documentation/sound/designs/jack-injection.rst
deleted file mode 100644
index f9790521523e..000000000000
--- a/Documentation/sound/designs/jack-injection.rst
+++ /dev/null
@@ -1,166 +0,0 @@
-============================
-ALSA Jack Software Injection
-============================
-
-Simple Introduction On Jack Injection
-=====================================
-
-Here jack injection means users could inject plugin or plugout events
-to the audio jacks through debugfs interface, it is helpful to
-validate ALSA userspace changes. For example, we change the audio
-profile switching code in the pulseaudio, and we want to verify if the
-change works as expected and if the change introduce the regression,
-in this case, we could inject plugin or plugout events to an audio
-jack or to some audio jacks, we don't need to physically access the
-machine and plug/unplug physical devices to the audio jack.
-
-In this design, an audio jack doesn't equal to a physical audio jack.
-Sometimes a physical audio jack contains multi functions, and the
-ALSA driver creates multi ``jack_kctl`` for a ``snd_jack``, here the
-``snd_jack`` represents a physical audio jack and the ``jack_kctl``
-represents a function, for example a physical jack has two functions:
-headphone and mic_in, the ALSA ASoC driver will build 2 ``jack_kctl``
-for this jack. The jack injection is implemented based on the
-``jack_kctl`` instead of ``snd_jack``.
-
-To inject events to audio jacks, we need to enable the jack injection
-via ``sw_inject_enable`` first, once it is enabled, this jack will not
-change the state by hardware events anymore, we could inject plugin or
-plugout events via ``jackin_inject`` and check the jack state via
-``status``, after we finish our test, we need to disable the jack
-injection via ``sw_inject_enable`` too, once it is disabled, the jack
-state will be restored according to the last reported hardware events
-and will change by future hardware events.
-
-The Layout of Jack Injection Interface
-======================================
-
-If users enable the SND_JACK_INJECTION_DEBUG in the kernel, the audio
-jack injection interface will be created as below:
-::
-
-   $debugfs_mount_dir/sound
-   |-- card0
-   |-- |-- HDMI_DP_pcm_10_Jack
-   |-- |-- |-- jackin_inject
-   |-- |-- |-- kctl_id
-   |-- |-- |-- mask_bits
-   |-- |-- |-- status
-   |-- |-- |-- sw_inject_enable
-   |-- |-- |-- type
-   ...
-   |-- |-- HDMI_DP_pcm_9_Jack
-   |--     |-- jackin_inject
-   |--     |-- kctl_id
-   |--     |-- mask_bits
-   |--     |-- status
-   |--     |-- sw_inject_enable
-   |--     |-- type
-   |-- card1
-       |-- HDMI_DP_pcm_5_Jack
-       |-- |-- jackin_inject
-       |-- |-- kctl_id
-       |-- |-- mask_bits
-       |-- |-- status
-       |-- |-- sw_inject_enable
-       |-- |-- type
-       ...
-       |-- Headphone_Jack
-       |-- |-- jackin_inject
-       |-- |-- kctl_id
-       |-- |-- mask_bits
-       |-- |-- status
-       |-- |-- sw_inject_enable
-       |-- |-- type
-       |-- Headset_Mic_Jack
-           |-- jackin_inject
-           |-- kctl_id
-           |-- mask_bits
-           |-- status
-           |-- sw_inject_enable
-           |-- type
-
-The Explanation Of The Nodes
-======================================
-
-kctl_id
-  read-only, get jack_kctl->kctl's id
-  ::
-
-     sound/card1/Headphone_Jack# cat kctl_id
-     Headphone Jack
-
-mask_bits
-  read-only, get jack_kctl's supported events mask_bits
-  ::
-
-     sound/card1/Headphone_Jack# cat mask_bits
-     0x0001 HEADPHONE(0x0001)
-
-status
-  read-only, get jack_kctl's current status
-
-- headphone unplugged:
-
-  ::
-
-     sound/card1/Headphone_Jack# cat status
-     Unplugged
-
-- headphone plugged:
-
-  ::
-
-     sound/card1/Headphone_Jack# cat status
-     Plugged
-
-type
-  read-only, get snd_jack's supported events from type (all supported events on the physical audio jack)
-  ::
-
-     sound/card1/Headphone_Jack# cat type
-     0x7803 HEADPHONE(0x0001) MICROPHONE(0x0002) BTN_3(0x0800) BTN_2(0x1000) BTN_1(0x2000) BTN_0(0x4000)
-
-sw_inject_enable
-  read-write, enable or disable injection
-
-- injection disabled:
-
-  ::
-
-     sound/card1/Headphone_Jack# cat sw_inject_enable
-     Jack: Headphone Jack		Inject Enabled: 0
-
-- injection enabled:
-
-  ::
-
-     sound/card1/Headphone_Jack# cat sw_inject_enable
-     Jack: Headphone Jack		Inject Enabled: 1
-
-- to enable jack injection:
-
-  ::
-
-     sound/card1/Headphone_Jack# echo 1 > sw_inject_enable
-
-- to disable jack injection:
-
-  ::
-
-     sound/card1/Headphone_Jack# echo 0 > sw_inject_enable
-
-jackin_inject
-  write-only, inject plugin or plugout
-
-- to inject plugin:
-
-  ::
-
-     sound/card1/Headphone_Jack# echo 1 > jackin_inject
-
-- to inject plugout:
-
-  ::
-
-     sound/card1/Headphone_Jack# echo 0 > jackin_inject
diff --git a/include/sound/core.h b/include/sound/core.h
index 2e24f194ef70..0462c577d7a3 100644
--- a/include/sound/core.h
+++ b/include/sound/core.h
@@ -122,9 +122,6 @@ struct snd_card {
 
 	size_t total_pcm_alloc_bytes;	/* total amount of allocated buffers */
 	struct mutex memory_mutex;	/* protection for the above */
-#ifdef CONFIG_SND_DEBUG
-	struct dentry *debugfs_root;    /* debugfs root for card */
-#endif
 
 #ifdef CONFIG_PM
 	unsigned int power_state;	/* power state */
@@ -183,9 +180,6 @@ static inline struct device *snd_card_get_device_link(struct snd_card *card)
 extern int snd_major;
 extern int snd_ecards_limit;
 extern struct class *sound_class;
-#ifdef CONFIG_SND_DEBUG
-extern struct dentry *sound_debugfs_root;
-#endif
 
 void snd_request_card(int card);
 
diff --git a/include/sound/jack.h b/include/sound/jack.h
index 1181f536557e..9eb2b5ec1ec4 100644
--- a/include/sound/jack.h
+++ b/include/sound/jack.h
@@ -67,7 +67,6 @@ struct snd_jack {
 	char name[100];
 	unsigned int key[6];   /* Keep in sync with definitions above */
 #endif /* CONFIG_SND_JACK_INPUT_DEV */
-	int hw_status_cache;
 	void *private_data;
 	void (*private_free)(struct snd_jack *);
 };
diff --git a/sound/core/Kconfig b/sound/core/Kconfig
index a4050f87f230..d4554f376160 100644
--- a/sound/core/Kconfig
+++ b/sound/core/Kconfig
@@ -187,15 +187,6 @@ config SND_CTL_VALIDATION
 	  from the driver are in the proper ranges or the check of the invalid
 	  access at out-of-array areas.
 
-config SND_JACK_INJECTION_DEBUG
-	bool "Sound jack injection interface via debugfs"
-	depends on SND_JACK && SND_DEBUG && DEBUG_FS
-	help
-	  This option can be used to enable or disable sound jack
-	  software injection.
-	  Say Y if you are debugging via jack injection interface.
-	  If unsure select "N".
-
 config SND_VMASTER
 	bool
 
diff --git a/sound/core/init.c b/sound/core/init.c
index d4e78b176793..56834febc7a4 100644
--- a/sound/core/init.c
+++ b/sound/core/init.c
@@ -13,7 +13,6 @@
 #include <linux/time.h>
 #include <linux/ctype.h>
 #include <linux/pm.h>
-#include <linux/debugfs.h>
 #include <linux/completion.h>
 
 #include <sound/core.h>
@@ -162,9 +161,6 @@ int snd_card_new(struct device *parent, int idx, const char *xid,
 {
 	struct snd_card *card;
 	int err;
-#ifdef CONFIG_SND_DEBUG
-	char name[8];
-#endif
 
 	if (snd_BUG_ON(!card_ret))
 		return -EINVAL;
@@ -248,12 +244,6 @@ int snd_card_new(struct device *parent, int idx, const char *xid,
 		dev_err(parent, "unable to create card info\n");
 		goto __error_ctl;
 	}
-
-#ifdef CONFIG_SND_DEBUG
-	sprintf(name, "card%d", idx);
-	card->debugfs_root = debugfs_create_dir(name, sound_debugfs_root);
-#endif
-
 	*card_ret = card;
 	return 0;
 
@@ -536,12 +526,6 @@ int snd_card_free(struct snd_card *card)
 		return ret;
 	/* wait, until all devices are ready for the free operation */
 	wait_for_completion(&released);
-
-#ifdef CONFIG_SND_DEBUG
-	debugfs_remove(card->debugfs_root);
-	card->debugfs_root = NULL;
-#endif
-
 	return 0;
 }
 EXPORT_SYMBOL(snd_card_free);
diff --git a/sound/core/jack.c b/sound/core/jack.c
index 32350c6aba84..503c8af79d55 100644
--- a/sound/core/jack.c
+++ b/sound/core/jack.c
@@ -8,9 +8,6 @@
 #include <linux/input.h>
 #include <linux/slab.h>
 #include <linux/module.h>
-#include <linux/ctype.h>
-#include <linux/mm.h>
-#include <linux/debugfs.h>
 #include <sound/jack.h>
 #include <sound/core.h>
 #include <sound/control.h>
@@ -19,11 +16,6 @@ struct snd_jack_kctl {
 	struct snd_kcontrol *kctl;
 	struct list_head list;  /* list of controls belong to the same jack */
 	unsigned int mask_bits; /* only masked status bits are reported via kctl */
-	struct snd_jack *jack;  /* pointer to struct snd_jack */
-	bool sw_inject_enable;  /* allow to inject plug event via debugfs */
-#ifdef CONFIG_SND_JACK_INJECTION_DEBUG
-	struct dentry *jack_debugfs_root; /* jack_kctl debugfs root */
-#endif
 };
 
 #ifdef CONFIG_SND_JACK_INPUT_DEV
@@ -117,291 +109,12 @@ static int snd_jack_dev_register(struct snd_device *device)
 }
 #endif /* CONFIG_SND_JACK_INPUT_DEV */
 
-#ifdef CONFIG_SND_JACK_INJECTION_DEBUG
-static void snd_jack_inject_report(struct snd_jack_kctl *jack_kctl, int status)
-{
-	struct snd_jack *jack;
-#ifdef CONFIG_SND_JACK_INPUT_DEV
-	int i;
-#endif
-	if (!jack_kctl)
-		return;
-
-	jack = jack_kctl->jack;
-
-	if (jack_kctl->sw_inject_enable)
-		snd_kctl_jack_report(jack->card, jack_kctl->kctl,
-				     status & jack_kctl->mask_bits);
-
-#ifdef CONFIG_SND_JACK_INPUT_DEV
-	if (!jack->input_dev)
-		return;
-
-	for (i = 0; i < ARRAY_SIZE(jack->key); i++) {
-		int testbit = ((SND_JACK_BTN_0 >> i) & jack_kctl->mask_bits);
-
-		if (jack->type & testbit)
-			input_report_key(jack->input_dev, jack->key[i],
-					 status & testbit);
-	}
-
-	for (i = 0; i < ARRAY_SIZE(jack_switch_types); i++) {
-		int testbit = ((1 << i) & jack_kctl->mask_bits);
-
-		if (jack->type & testbit)
-			input_report_switch(jack->input_dev,
-					    jack_switch_types[i],
-					    status & testbit);
-	}
-
-	input_sync(jack->input_dev);
-#endif /* CONFIG_SND_JACK_INPUT_DEV */
-}
-
-static ssize_t sw_inject_enable_read(struct file *file,
-				     char __user *to, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	int len, ret;
-	char buf[128];
-
-	len = scnprintf(buf, sizeof(buf), "%s: %s\t\t%s: %i\n", "Jack", jack_kctl->kctl->id.name,
-			"Inject Enabled", jack_kctl->sw_inject_enable);
-	ret = simple_read_from_buffer(to, count, ppos, buf, len);
-
-	return ret;
-}
-
-static ssize_t sw_inject_enable_write(struct file *file,
-				      const char __user *from, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	int ret, err;
-	unsigned long enable;
-	char buf[8] = { 0 };
-
-	ret = simple_write_to_buffer(buf, sizeof(buf) - 1, ppos, from, count);
-	err = kstrtoul(buf, 0, &enable);
-	if (err)
-		return err;
-
-	if (jack_kctl->sw_inject_enable == (!!enable))
-		return ret;
-
-	jack_kctl->sw_inject_enable = !!enable;
-
-	if (!jack_kctl->sw_inject_enable)
-		snd_jack_report(jack_kctl->jack, jack_kctl->jack->hw_status_cache);
-
-	return ret;
-}
-
-static ssize_t jackin_inject_write(struct file *file,
-				   const char __user *from, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	int ret, err;
-	unsigned long enable;
-	char buf[8] = { 0 };
-
-	if (!jack_kctl->sw_inject_enable)
-		return -EINVAL;
-
-	ret = simple_write_to_buffer(buf, sizeof(buf) - 1, ppos, from, count);
-	err = kstrtoul(buf, 0, &enable);
-	if (err)
-		return err;
-
-	snd_jack_inject_report(jack_kctl, !!enable ? jack_kctl->mask_bits : 0);
-
-	return ret;
-}
-
-static ssize_t jack_kctl_id_read(struct file *file,
-				 char __user *to, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	char buf[64];
-	int len, ret;
-
-	len = scnprintf(buf, sizeof(buf), "%s\n", jack_kctl->kctl->id.name);
-	ret = simple_read_from_buffer(to, count, ppos, buf, len);
-
-	return ret;
-}
-
-/* the bit definition is aligned with snd_jack_types in jack.h */
-static const char * const jack_events_name[] = {
-	"HEADPHONE(0x0001)", "MICROPHONE(0x0002)", "LINEOUT(0x0004)",
-	"MECHANICAL(0x0008)", "VIDEOOUT(0x0010)", "LINEIN(0x0020)",
-	"", "", "", "BTN_5(0x0200)", "BTN_4(0x0400)", "BTN_3(0x0800)",
-	"BTN_2(0x1000)", "BTN_1(0x2000)", "BTN_0(0x4000)", "",
-};
-
-/* the recommended buffer size is 256 */
-static int parse_mask_bits(unsigned int mask_bits, char *buf, size_t buf_size)
-{
-	int i;
-
-	scnprintf(buf, buf_size, "0x%04x", mask_bits);
-
-	for (i = 0; i < ARRAY_SIZE(jack_events_name); i++)
-		if (mask_bits & (1 << i)) {
-			strlcat(buf, " ", buf_size);
-			strlcat(buf, jack_events_name[i], buf_size);
-		}
-	strlcat(buf, "\n", buf_size);
-
-	return strlen(buf);
-}
-
-static ssize_t jack_kctl_mask_bits_read(struct file *file,
-					char __user *to, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	char buf[256];
-	int len, ret;
-
-	len = parse_mask_bits(jack_kctl->mask_bits, buf, sizeof(buf));
-	ret = simple_read_from_buffer(to, count, ppos, buf, len);
-
-	return ret;
-}
-
-static ssize_t jack_kctl_status_read(struct file *file,
-				     char __user *to, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	char buf[16];
-	int len, ret;
-
-	len = scnprintf(buf, sizeof(buf), "%s\n", jack_kctl->kctl->private_value ?
-			"Plugged" : "Unplugged");
-	ret = simple_read_from_buffer(to, count, ppos, buf, len);
-
-	return ret;
-}
-
-#ifdef CONFIG_SND_JACK_INPUT_DEV
-static ssize_t jack_type_read(struct file *file,
-			      char __user *to, size_t count, loff_t *ppos)
-{
-	struct snd_jack_kctl *jack_kctl = file->private_data;
-	char buf[256];
-	int len, ret;
-
-	len = parse_mask_bits(jack_kctl->jack->type, buf, sizeof(buf));
-	ret = simple_read_from_buffer(to, count, ppos, buf, len);
-
-	return ret;
-}
-
-static const struct file_operations jack_type_fops = {
-	.open = simple_open,
-	.read = jack_type_read,
-	.llseek = default_llseek,
-};
-#endif
-
-static const struct file_operations sw_inject_enable_fops = {
-	.open = simple_open,
-	.read = sw_inject_enable_read,
-	.write = sw_inject_enable_write,
-	.llseek = default_llseek,
-};
-
-static const struct file_operations jackin_inject_fops = {
-	.open = simple_open,
-	.write = jackin_inject_write,
-	.llseek = default_llseek,
-};
-
-static const struct file_operations jack_kctl_id_fops = {
-	.open = simple_open,
-	.read = jack_kctl_id_read,
-	.llseek = default_llseek,
-};
-
-static const struct file_operations jack_kctl_mask_bits_fops = {
-	.open = simple_open,
-	.read = jack_kctl_mask_bits_read,
-	.llseek = default_llseek,
-};
-
-static const struct file_operations jack_kctl_status_fops = {
-	.open = simple_open,
-	.read = jack_kctl_status_read,
-	.llseek = default_llseek,
-};
-
-static int snd_jack_debugfs_add_inject_node(struct snd_jack *jack,
-					    struct snd_jack_kctl *jack_kctl)
-{
-	char *tname;
-	int i;
-
-	/* Don't create injection interface for Phantom jacks */
-	if (strstr(jack_kctl->kctl->id.name, "Phantom"))
-		return 0;
-
-	tname = kstrdup(jack_kctl->kctl->id.name, GFP_KERNEL);
-	if (!tname)
-		return -ENOMEM;
-
-	/* replace the chars which are not suitable for folder's name with _ */
-	for (i = 0; tname[i]; i++)
-		if (!isalnum(tname[i]))
-			tname[i] = '_';
-
-	jack_kctl->jack_debugfs_root = debugfs_create_dir(tname, jack->card->debugfs_root);
-	kfree(tname);
-
-	debugfs_create_file("sw_inject_enable", 0644, jack_kctl->jack_debugfs_root, jack_kctl,
-			    &sw_inject_enable_fops);
-
-	debugfs_create_file("jackin_inject", 0200, jack_kctl->jack_debugfs_root, jack_kctl,
-			    &jackin_inject_fops);
-
-	debugfs_create_file("kctl_id", 0444, jack_kctl->jack_debugfs_root, jack_kctl,
-			    &jack_kctl_id_fops);
-
-	debugfs_create_file("mask_bits", 0444, jack_kctl->jack_debugfs_root, jack_kctl,
-			    &jack_kctl_mask_bits_fops);
-
-	debugfs_create_file("status", 0444, jack_kctl->jack_debugfs_root, jack_kctl,
-			    &jack_kctl_status_fops);
-
-#ifdef CONFIG_SND_JACK_INPUT_DEV
-	debugfs_create_file("type", 0444, jack_kctl->jack_debugfs_root, jack_kctl,
-			    &jack_type_fops);
-#endif
-	return 0;
-}
-
-static void snd_jack_debugfs_clear_inject_node(struct snd_jack_kctl *jack_kctl)
-{
-	debugfs_remove(jack_kctl->jack_debugfs_root);
-	jack_kctl->jack_debugfs_root = NULL;
-}
-#else /* CONFIG_SND_JACK_INJECTION_DEBUG */
-static int snd_jack_debugfs_add_inject_node(struct snd_jack *jack,
-					    struct snd_jack_kctl *jack_kctl)
-{
-	return 0;
-}
-
-static void snd_jack_debugfs_clear_inject_node(struct snd_jack_kctl *jack_kctl)
-{
-}
-#endif /* CONFIG_SND_JACK_INJECTION_DEBUG */
-
 static void snd_jack_kctl_private_free(struct snd_kcontrol *kctl)
 {
 	struct snd_jack_kctl *jack_kctl;
 
 	jack_kctl = kctl->private_data;
 	if (jack_kctl) {
-		snd_jack_debugfs_clear_inject_node(jack_kctl);
 		list_del(&jack_kctl->list);
 		kfree(jack_kctl);
 	}
@@ -409,9 +122,7 @@ static void snd_jack_kctl_private_free(struct snd_kcontrol *kctl)
 
 static void snd_jack_kctl_add(struct snd_jack *jack, struct snd_jack_kctl *jack_kctl)
 {
-	jack_kctl->jack = jack;
 	list_add_tail(&jack_kctl->list, &jack->kctl_list);
-	snd_jack_debugfs_add_inject_node(jack, jack_kctl);
 }
 
 static struct snd_jack_kctl * snd_jack_kctl_new(struct snd_card *card, const char *name, unsigned int mask)
@@ -629,7 +340,6 @@ EXPORT_SYMBOL(snd_jack_set_key);
 void snd_jack_report(struct snd_jack *jack, int status)
 {
 	struct snd_jack_kctl *jack_kctl;
-	unsigned int mask_bits = 0;
 #ifdef CONFIG_SND_JACK_INPUT_DEV
 	int i;
 #endif
@@ -637,21 +347,16 @@ void snd_jack_report(struct snd_jack *jack, int status)
 	if (!jack)
 		return;
 
-	jack->hw_status_cache = status;
-
 	list_for_each_entry(jack_kctl, &jack->kctl_list, list)
-		if (jack_kctl->sw_inject_enable)
-			mask_bits |= jack_kctl->mask_bits;
-		else
-			snd_kctl_jack_report(jack->card, jack_kctl->kctl,
-					     status & jack_kctl->mask_bits);
+		snd_kctl_jack_report(jack->card, jack_kctl->kctl,
+					    status & jack_kctl->mask_bits);
 
 #ifdef CONFIG_SND_JACK_INPUT_DEV
 	if (!jack->input_dev)
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(jack->key); i++) {
-		int testbit = ((SND_JACK_BTN_0 >> i) & ~mask_bits);
+		int testbit = SND_JACK_BTN_0 >> i;
 
 		if (jack->type & testbit)
 			input_report_key(jack->input_dev, jack->key[i],
@@ -659,8 +364,7 @@ void snd_jack_report(struct snd_jack *jack, int status)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(jack_switch_types); i++) {
-		int testbit = ((1 << i) & ~mask_bits);
-
+		int testbit = 1 << i;
 		if (jack->type & testbit)
 			input_report_switch(jack->input_dev,
 					    jack_switch_types[i],
diff --git a/sound/core/sound.c b/sound/core/sound.c
index 2f759febe365..b75f78f2c4b8 100644
--- a/sound/core/sound.c
+++ b/sound/core/sound.c
@@ -9,7 +9,6 @@
 #include <linux/time.h>
 #include <linux/device.h>
 #include <linux/module.h>
-#include <linux/debugfs.h>
 #include <sound/core.h>
 #include <sound/minors.h>
 #include <sound/info.h>
@@ -40,11 +39,6 @@ MODULE_ALIAS_CHARDEV_MAJOR(CONFIG_SND_MAJOR);
 int snd_ecards_limit;
 EXPORT_SYMBOL(snd_ecards_limit);
 
-#ifdef CONFIG_SND_DEBUG
-struct dentry *sound_debugfs_root;
-EXPORT_SYMBOL_GPL(sound_debugfs_root);
-#endif
-
 static struct snd_minor *snd_minors[SNDRV_OS_MINORS];
 static DEFINE_MUTEX(sound_mutex);
 
@@ -401,10 +395,6 @@ static int __init alsa_sound_init(void)
 		unregister_chrdev(major, "alsa");
 		return -ENOMEM;
 	}
-
-#ifdef CONFIG_SND_DEBUG
-	sound_debugfs_root = debugfs_create_dir("sound", NULL);
-#endif
 #ifndef MODULE
 	pr_info("Advanced Linux Sound Architecture Driver Initialized.\n");
 #endif
@@ -413,9 +403,6 @@ static int __init alsa_sound_init(void)
 
 static void __exit alsa_sound_exit(void)
 {
-#ifdef CONFIG_SND_DEBUG
-	debugfs_remove(sound_debugfs_root);
-#endif
 	snd_info_done();
 	unregister_chrdev(major, "alsa");
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
