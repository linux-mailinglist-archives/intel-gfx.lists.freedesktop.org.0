Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EBFB13397
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 06:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FEE510E03B;
	Mon, 28 Jul 2025 04:14:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="BDTxZ2gb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E30E310E033;
 Mon, 28 Jul 2025 04:14:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B60F4A5272E;
 Mon, 28 Jul 2025 04:14:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00423C4CEE7;
 Mon, 28 Jul 2025 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753676050;
 bh=icdK9UZhHwudcxk2XYqruHbGN8wX/pzhgMNyjCP2DlE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=BDTxZ2gbrhwQYwhsJR96QEIIioWeagwFcV9QjzBq9U+kgbHvy5wa8/70A+BeYsVci
 sAa2vOduXK6res64vp9Z7hFvUe4gWpWSyrllDXhf5hpMdDPkn3/Qkn7pEGwAJofJCV
 Ki+PBI2Br8XuWhPpt9UA2+6GC59WpZxnOK9LIqyuqyKTJ7fONV1lsJLmatyhSMtUsT
 +vjXf9hxJDRiuHZiXarAptucyYboZev++U8HQAZKDuIDnytCbm0VE9QxL623P6fZS5
 zwaYxm3NnKNd6ws4OHwEw3Wqk3KsvhXKGriB/HXVltWeP0KIrRT1B8LVvUJ1+m5NX3
 OT9uyMxKv0l4g==
Content-Type: multipart/mixed; boundary="------------8PspsMq80uB7NlP91NHAb0Yt"
Message-ID: <f3f779e3-e269-4ac9-9bed-042859d98a83@kernel.org>
Date: Mon, 28 Jul 2025 13:11:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-ide@vger.kernel.org, mika.westerberg@intel.com,
 anshuman.gupta@intel.com, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 lucas.demarchi@intel.com
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------8PspsMq80uB7NlP91NHAb0Yt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/25/25 3:43 PM, Borah, Chaitanya Kumar wrote:
> For some context in our kms_pm_rpm tests, we enable min_power policy for SATA
> so that we can reach deep runtime power states and restore the original policy
> after finishing. [5][6]
> 
> IIUC, the above change is based on spec and not something which can be
> reverted. So as I see it, we have to drop this code path for external ports.
> However I am not sure if we can achieve deep power states without enforcing it
> through the sysfs entry.
> 
> Atleast for the basic-rte subtest, the test passes if we comment out the
> functions controlling the SATA ports. We will need more testing to determine if
> this approach work. Any thoughts on it?
> 
> Also, are there other ways to detect a port is external other than receiving
> EOPNOTSUPP on the sysfs write?

The attached patch adds the "link_power_management_supported" sysfs device
attribute for drives connected to AHCI. Would that work for you ?

diff --git a/drivers/ata/ata_piix.c b/drivers/ata/ata_piix.c
index 229429ba5027..495fa096dd65 100644
--- a/drivers/ata/ata_piix.c
+++ b/drivers/ata/ata_piix.c
@@ -1089,6 +1089,7 @@ static struct ata_port_operations ich_pata_ops = {
 };

 static struct attribute *piix_sidpr_shost_attrs[] = {
+       &dev_attr_link_power_management_supported.attr,
        &dev_attr_link_power_management_policy.attr,
        NULL
 };
diff --git a/drivers/ata/libahci.c b/drivers/ata/libahci.c
index b335fb7e5cb4..c79abdfcd7a9 100644
--- a/drivers/ata/libahci.c
+++ b/drivers/ata/libahci.c
@@ -111,6 +111,7 @@ static DEVICE_ATTR(em_buffer, S_IWUSR | S_IRUGO,
 static DEVICE_ATTR(em_message_supported, S_IRUGO, ahci_show_em_supported, NULL);

 static struct attribute *ahci_shost_attrs[] = {
+       &dev_attr_link_power_management_supported.attr,
        &dev_attr_link_power_management_policy.attr,
        &dev_attr_em_message_type.attr,
        &dev_attr_em_message.attr,
diff --git a/drivers/ata/libata-sata.c b/drivers/ata/libata-sata.c
index 0708686ca58a..82a1a72e47bf 100644
--- a/drivers/ata/libata-sata.c
+++ b/drivers/ata/libata-sata.c
@@ -900,6 +900,18 @@ static const char *ata_lpm_policy_names[] = {
        [ATA_LPM_MIN_POWER]             = "min_power",
 };

+static ssize_t ata_scsi_lpm_supported_show(struct device *dev,
+                                struct device_attribute *attr, char *buf)
+{
+       struct Scsi_Host *shost = class_to_shost(dev);
+       struct ata_port *ap = ata_shost_to_port(shost);
+
+       return sysfs_emit(buf, "%d\n", !(ap->flags & ATA_FLAG_NO_LPM));
+}
+DEVICE_ATTR(link_power_management_supported, S_IRUGO,
+           ata_scsi_lpm_supported_show, NULL);
+EXPORT_SYMBOL_GPL(dev_attr_link_power_management_supported);
+
 static ssize_t ata_scsi_lpm_store(struct device *device,
                                  struct device_attribute *attr,
                                  const char *buf, size_t count)
diff --git a/include/linux/libata.h b/include/linux/libata.h
index 1c0580627dbb..e9a6f37bd7f9 100644
--- a/include/linux/libata.h
+++ b/include/linux/libata.h
@@ -547,6 +547,7 @@ typedef void (*ata_postreset_fn_t)(struct ata_link *link,
unsigned int *classes)

 extern struct device_attribute dev_attr_unload_heads;
 #ifdef CONFIG_SATA_HOST
+extern struct device_attribute dev_attr_link_power_management_supported;
 extern struct device_attribute dev_attr_link_power_management_policy;
 extern struct device_attribute dev_attr_ncq_prio_supported;
 extern struct device_attribute dev_attr_ncq_prio_enable;


-- 
Damien Le Moal
Western Digital Research
--------------8PspsMq80uB7NlP91NHAb0Yt
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-ata-libata-sata-Add-link_power_management_supported-.patch"
Content-Disposition: attachment;
 filename*0="0001-ata-libata-sata-Add-link_power_management_supported-.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSBlOTkzN2Q4NmQzN2E2YzFhOTU4NGVmMjMyNjEzZDVhOGE1YTNiNmExIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwu
b3JnPgpEYXRlOiBNb24sIDI4IEp1bCAyMDI1IDEzOjA0OjI5ICswOTAwClN1YmplY3Q6IFtQ
QVRDSF0gYXRhOiBsaWJhdGEtc2F0YTogQWRkIGxpbmtfcG93ZXJfbWFuYWdlbWVudF9zdXBw
b3J0ZWQKIGF0dHJpYnV0ZQoKQSBwb3J0IGxpbmsgcG93ZXIgbWFuYWdlbWVudCBwb2xpY3kg
Y2FuIGJlIGNvbnRyb2xsZWQgdXNpbmcgdGhlCmxpbmtfcG93ZXJfbWFuYWdlbWVudF9wb2xp
Y3kgc3lzZnMgZGV2aWNlIGF0dHJpYnV0ZS4gSG93ZXZlciwgdGhpcwphdHRyaWJ1dGUgZXhp
c3QgYWxzbyBmb3IgZGV2aWNlIGFuZCBwb3J0cyB0aGF0IGRvIG5vdCBzdXBwb3J0IExQTSBh
bmQgaW4Kc3VjaCBjYXNlLCBhdHRlbXB0aW5nIHRvIGNoYW5nZSB0aGUgTFBNIHBvbGljeSB3
aWxsIGZhaWwgd2l0aAotRU9QTk9UU1VQUC4KCkludHJvZHVjZSB0aGUgbmV3IHN5c2ZzIGxp
bmtfcG93ZXJfbWFuYWdlbWVudF9zdXBwb3J0ZWQgZGV2aWNlIGF0dHJpYnV0ZQp0byBpbmRp
Y2F0ZSB0byB0aGUgdXNlciBpZiBhIHBvcnQvZGV2aWNlIHN1cHBvcnRzIExQTSBhbmQgdGhl
IGF0dHJpYnV0ZQpsaW5rX3Bvd2VyX21hbmFnZW1lbnRfcG9saWN5IGNhbiBiZSB1c2VkLgoK
U2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2VybmVsLm9yZz4KLS0t
CiBkcml2ZXJzL2F0YS9hdGFfcGlpeC5jICAgIHwgIDEgKwogZHJpdmVycy9hdGEvbGliYWhj
aS5jICAgICB8ICAxICsKIGRyaXZlcnMvYXRhL2xpYmF0YS1zYXRhLmMgfCAxMiArKysrKysr
KysrKysKIGluY2x1ZGUvbGludXgvbGliYXRhLmggICAgfCAgMSArCiA0IGZpbGVzIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9hdGFfcGlp
eC5jIGIvZHJpdmVycy9hdGEvYXRhX3BpaXguYwppbmRleCAyMjk0MjliYTUwMjcuLjQ5NWZh
MDk2ZGQ2NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9hdGEvYXRhX3BpaXguYworKysgYi9kcml2
ZXJzL2F0YS9hdGFfcGlpeC5jCkBAIC0xMDg5LDYgKzEwODksNyBAQCBzdGF0aWMgc3RydWN0
IGF0YV9wb3J0X29wZXJhdGlvbnMgaWNoX3BhdGFfb3BzID0gewogfTsKIAogc3RhdGljIHN0
cnVjdCBhdHRyaWJ1dGUgKnBpaXhfc2lkcHJfc2hvc3RfYXR0cnNbXSA9IHsKKwkmZGV2X2F0
dHJfbGlua19wb3dlcl9tYW5hZ2VtZW50X3N1cHBvcnRlZC5hdHRyLAogCSZkZXZfYXR0cl9s
aW5rX3Bvd2VyX21hbmFnZW1lbnRfcG9saWN5LmF0dHIsCiAJTlVMTAogfTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvYXRhL2xpYmFoY2kuYyBiL2RyaXZlcnMvYXRhL2xpYmFoY2kuYwppbmRl
eCBiMzM1ZmI3ZTVjYjQuLmM3OWFiZGZjZDdhOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9hdGEv
bGliYWhjaS5jCisrKyBiL2RyaXZlcnMvYXRhL2xpYmFoY2kuYwpAQCAtMTExLDYgKzExMSw3
IEBAIHN0YXRpYyBERVZJQ0VfQVRUUihlbV9idWZmZXIsIFNfSVdVU1IgfCBTX0lSVUdPLAog
c3RhdGljIERFVklDRV9BVFRSKGVtX21lc3NhZ2Vfc3VwcG9ydGVkLCBTX0lSVUdPLCBhaGNp
X3Nob3dfZW1fc3VwcG9ydGVkLCBOVUxMKTsKIAogc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUg
KmFoY2lfc2hvc3RfYXR0cnNbXSA9IHsKKwkmZGV2X2F0dHJfbGlua19wb3dlcl9tYW5hZ2Vt
ZW50X3N1cHBvcnRlZC5hdHRyLAogCSZkZXZfYXR0cl9saW5rX3Bvd2VyX21hbmFnZW1lbnRf
cG9saWN5LmF0dHIsCiAJJmRldl9hdHRyX2VtX21lc3NhZ2VfdHlwZS5hdHRyLAogCSZkZXZf
YXR0cl9lbV9tZXNzYWdlLmF0dHIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9saWJhdGEt
c2F0YS5jIGIvZHJpdmVycy9hdGEvbGliYXRhLXNhdGEuYwppbmRleCAwNzA4Njg2Y2E1OGEu
LjgyYTFhNzJlNDdiZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9hdGEvbGliYXRhLXNhdGEuYwor
KysgYi9kcml2ZXJzL2F0YS9saWJhdGEtc2F0YS5jCkBAIC05MDAsNiArOTAwLDE4IEBAIHN0
YXRpYyBjb25zdCBjaGFyICphdGFfbHBtX3BvbGljeV9uYW1lc1tdID0gewogCVtBVEFfTFBN
X01JTl9QT1dFUl0JCT0gIm1pbl9wb3dlciIsCiB9OwogCitzdGF0aWMgc3NpemVfdCBhdGFf
c2NzaV9scG1fc3VwcG9ydGVkX3Nob3coc3RydWN0IGRldmljZSAqZGV2LAorCQkJCSBzdHJ1
Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVmKQoreworCXN0cnVjdCBTY3Np
X0hvc3QgKnNob3N0ID0gY2xhc3NfdG9fc2hvc3QoZGV2KTsKKwlzdHJ1Y3QgYXRhX3BvcnQg
KmFwID0gYXRhX3Nob3N0X3RvX3BvcnQoc2hvc3QpOworCisJcmV0dXJuIHN5c2ZzX2VtaXQo
YnVmLCAiJWRcbiIsICEoYXAtPmZsYWdzICYgQVRBX0ZMQUdfTk9fTFBNKSk7Cit9CitERVZJ
Q0VfQVRUUihsaW5rX3Bvd2VyX21hbmFnZW1lbnRfc3VwcG9ydGVkLCBTX0lSVUdPLAorCSAg
ICBhdGFfc2NzaV9scG1fc3VwcG9ydGVkX3Nob3csIE5VTEwpOworRVhQT1JUX1NZTUJPTF9H
UEwoZGV2X2F0dHJfbGlua19wb3dlcl9tYW5hZ2VtZW50X3N1cHBvcnRlZCk7CisKIHN0YXRp
YyBzc2l6ZV90IGF0YV9zY3NpX2xwbV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsCiAJ
CQkJICBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKIAkJCQkgIGNvbnN0IGNoYXIg
KmJ1Ziwgc2l6ZV90IGNvdW50KQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9saWJhdGEu
aCBiL2luY2x1ZGUvbGludXgvbGliYXRhLmgKaW5kZXggMWMwNTgwNjI3ZGJiLi5lOWE2ZjM3
YmQ3ZjkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbGliYXRhLmgKKysrIGIvaW5jbHVk
ZS9saW51eC9saWJhdGEuaApAQCAtNTQ3LDYgKzU0Nyw3IEBAIHR5cGVkZWYgdm9pZCAoKmF0
YV9wb3N0cmVzZXRfZm5fdCkoc3RydWN0IGF0YV9saW5rICpsaW5rLCB1bnNpZ25lZCBpbnQg
KmNsYXNzZXMpCiAKIGV4dGVybiBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSBkZXZfYXR0cl91
bmxvYWRfaGVhZHM7CiAjaWZkZWYgQ09ORklHX1NBVEFfSE9TVAorZXh0ZXJuIHN0cnVjdCBk
ZXZpY2VfYXR0cmlidXRlIGRldl9hdHRyX2xpbmtfcG93ZXJfbWFuYWdlbWVudF9zdXBwb3J0
ZWQ7CiBleHRlcm4gc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgZGV2X2F0dHJfbGlua19wb3dl
cl9tYW5hZ2VtZW50X3BvbGljeTsKIGV4dGVybiBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSBk
ZXZfYXR0cl9uY3FfcHJpb19zdXBwb3J0ZWQ7CiBleHRlcm4gc3RydWN0IGRldmljZV9hdHRy
aWJ1dGUgZGV2X2F0dHJfbmNxX3ByaW9fZW5hYmxlOwotLSAKMi41MC4xCgo=

--------------8PspsMq80uB7NlP91NHAb0Yt--
