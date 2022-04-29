Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E03514257
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 08:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C243D10FB8F;
	Fri, 29 Apr 2022 06:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C47E10FB2D;
 Fri, 29 Apr 2022 06:31:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B50AE61D92;
 Fri, 29 Apr 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2295DC385B1;
 Fri, 29 Apr 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651213887;
 bh=YFyHuYmc6SIjS2dllZCzaenBMhy2srBsAIJHOm3si5w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nuo6dp/3tl0nnZlmgHLbOlaAkA6qZLDf134fErf3iGDVtEKapgM8jZtI0cm+ltfN+
 ebBS9EauekpxEv43x7uBc6Q8jwVowJIiJ/iWsOL/p5PuF/pSYwD9Dt4NzWGsVVB5Ia
 RN2dxRJOTlMKlTAKNcZunqjyCWaw9795sKgR99/mEtJq2STM6W9RGv1pRIeBblld46
 m517QlKAkoVmVASeN5/9RBWI8KYmEGf/p3tE9UVsJ8B/tKMG0izj75hU8nO1Tll6s/
 NNPxP7ZceYNBsnZkYxkDle7ZVo6kPdUtTuIN9zAV4vlBlA5TVnF9p/xkdUBs9kD/a/
 KKU4CtlUBH6KA==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nkK9z-001Qmi-Mh; Fri, 29 Apr 2022 07:31:23 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Fri, 29 Apr 2022 07:31:15 +0100
Message-Id: <a078eb2e46d00ec59c8a91ea0afa5190730c9e58.1651212016.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651212016.git.mchehab@kernel.org>
References: <cover.1651212016.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] module: add a function to add module
 references
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
Cc: Kai Vehmanen <kai.vehmanen@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 mauro.chehab@intel.com, Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-modules@vger.kernel.org,
 Pierre-Louis Bossart <pierre-louis.bossart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes, device drivers are bound using indirect references,
which is not visible when looking at /proc/modules or lsmod.

Add a function to allow setting up module references for such
cases.

Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

See [PATCH 0/2] at: https://lore.kernel.org/all/cover.1651212016.git.mchehab@kernel.org/

 include/linux/module.h |  7 +++++++
 kernel/module/main.c   | 31 +++++++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/include/linux/module.h b/include/linux/module.h
index 46d4d5f2516e..be74f807e41d 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -596,6 +596,8 @@ static inline bool within_module(unsigned long addr, const struct module *mod)
 /* Search for module by name: must be in a RCU-sched critical section. */
 struct module *find_module(const char *name);
 
+int module_add_named_dependency(const char *name, struct module *this);
+
 /* Returns 0 and fills in value, defined and namebuf, or -ERANGE if
    symnum out of range. */
 int module_get_kallsym(unsigned int symnum, unsigned long *value, char *type,
@@ -772,6 +774,11 @@ static inline int lookup_module_symbol_attrs(unsigned long addr, unsigned long *
 	return -ERANGE;
 }
 
+static inline int module_add_named_dependency(const char *name, struct module *this)
+{
+	return 0;
+}
+
 static inline int module_get_kallsym(unsigned int symnum, unsigned long *value,
 					char *type, char *name,
 					char *module_name, int *exported)
diff --git a/kernel/module/main.c b/kernel/module/main.c
index 05a42d8fcd7a..dbd577ccc38c 100644
--- a/kernel/module/main.c
+++ b/kernel/module/main.c
@@ -631,6 +631,37 @@ static int ref_module(struct module *a, struct module *b)
 	return 0;
 }
 
+int module_add_named_dependency(const char *name, struct module *this)
+{
+	struct module *mod;
+	int ret;
+
+	if (!name || !this || !this->name) {
+		return -EINVAL;
+	}
+
+	mutex_lock(&module_mutex);
+	mod = find_module(name);
+	if (!mod) {
+		ret = -EINVAL;
+		goto ret;
+	}
+
+	ret = ref_module(this, mod);
+	if (ret)
+		goto ret;
+
+#ifdef CONFIG_MODULE_UNLOAD
+	ret = sysfs_create_link(mod->holders_dir,
+				&this->mkobj.kobj, this->name);
+#endif
+
+ret:
+	mutex_unlock(&module_mutex);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(module_add_named_dependency);
+
 /* Clear the unload stuff of the module. */
 static void module_unload_free(struct module *mod)
 {
-- 
2.35.1

