Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6845EA3E6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 13:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C7210E2C2;
	Mon, 26 Sep 2022 11:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5445A10E2C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 11:35:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="301903778"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="301903778"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 04:35:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="866090941"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="866090941"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 04:35:44 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 26 Sep 2022 14:35:24 +0300
Resent-Message-ID: <87illa2wsj.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Mon, 26 Sep 2022 13:45:13 +0300 (EEST)
Received: from orsmga003.jf.intel.com (orsmga003.jf.intel.com [10.7.209.27])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 85CF5580BE1;
 Mon, 26 Sep 2022 03:40:31 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="572162502"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="572162502"
Received: from fmsmga103.fm.intel.com ([10.1.193.90])
 by orsmga003-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26
 Sep 2022 03:40:31 -0700
X-IPAS-Result: =?us-ascii?q?A0GQAACigDFjmLHS/INQChsBAQEBAQEBAQUBAQESAQEBA?=
 =?us-ascii?q?wMBAQFAgU+BUmsBZ1iBAI1NhXGCJRl9kFWMajMUAQEBAQEBAQEBCSwLCAECB?=
 =?us-ascii?q?AEBAwSBTIghJzgTAQIEAQEBAQMCAQIBAQEBAQEDAQEBAgIBAQECAQEGAgEBA?=
 =?us-ascii?q?QECEAEBAQEBAQEBFAkZBRAOBSKFLzkNgjUFAgMfAQZuSj4BAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQ8CCFJMAQEhAQMBATcMCikDAwECBgJEBAgDAVoSB?=
 =?us-ascii?q?YJ4AYMgAwEEC6l+gTSBAYNQAYRMgV8GgT2MAYRPEIFVRHobgnN1gmIDgTKGa?=
 =?us-ascii?q?QSZHjgDCQMHBSwdQQMLHw0WNQMVAxQDBSQHAxkPIw0NBB0MAwMFJQMCAhsHA?=
 =?us-ascii?q?gIDAgYTBQICNRg2CAQIBCskDwUCBy8FBC8CHgQFBhEIAhYCBgQEBAQVAhAIA?=
 =?us-ascii?q?ggmFwcTECMZAQUyJxAJIRwoDQUGEwMgbwUHPQ8oMWsrHRsKgQwqKBUDBAQDA?=
 =?us-ascii?q?gYTAwMiAhAqMRQEKRMSLQcrcwkCAyJsAwMEKCwDCSEfBxkPJjwHWDoFAwIQI?=
 =?us-ascii?q?j0GAwkDAiRbdzgUFAUDDRkmCAUkFh4ECDwCBQZXBgEMAgoSAxOYW4ISPRwIG?=
 =?us-ascii?q?gkKLARvCBFAGDApC5IpHQiPcoITmn2BfjQHghiBRIFDBgyeSEwRg2WSfwYwk?=
 =?us-ascii?q?VgBlwsgogYnTIRQgXgjgVxNJIM2URkPjikDFhWDO4pgQTICOQIGCwEBAwmFR?=
 =?us-ascii?q?AIBAQEhEwsBgl+BbgEB?=
IronPort-PHdr: A9a23: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
 iaH64c2+zmb
IronPort-Data: A9a23:q2gWs65Evxb22jcTTouYoAxRtCXBchMFZxGqfqrLsTDasY5as4F+v
 jcZWW7SOPmJYTH3c91xadm1pxxV7MKGz4RlHQRrqH89Eysa+MHILOrCEkqhZCn6wu8v7a5EA
 2fyTvGZdJhcoqr0/0/1WlTHhSchjfngqp3UUbaYankZqTdMEXtn01Q78wIAqtQAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8XuDh9yv/mJD1rACTaoT5gWGxiNIVMh3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0FiatY+6iDV0hK684D76vRzjnRaPpQTbZLwWm8O49m9pO2d/
 f0W3XCGYVxwYvCTwrR1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO1qxli4dpf0ST1NY+bDEkXn
 cH0JgzhYTjYge627qD8atAy2PU/Fu3JFawVhlNZmGSx4fYOGfgvQo3F7NVVmjkqi81CEO3de
 80BLz11Y3wsYTUWYQ5RUs9k2r3x3j+mLGIwRFG9/cLb50Df1g003LXzPd6QcNuXQ85YhW6cp
 3na5CL3GBwXONGEyiaC6jSrnOCncSbTA9pKReLlraMx6LGV7kBIDiEMemflm/6GpESzZ/cPc
 2cNvSV7+MDe82TyEoasDkTQTGS/ljcaV8BCHu98ywiG0rDT/B2aB0AATzhceJonstM7QXoh0
 Vrht9rlDDkptbyOW3mP/7S8qTK0JDhTLGkeaCtCRgwAi/Hqpo0yyAnPX8piOKq0iMDlXzD23
 z2O6iM5gt07j8cA2qb9+VnYmSOqoYfIRRwd4gTRQ3Lj7wVlaYrjbIutgXDZ5PBBaoCYTUSFt
 VAAms6D/KYPC42AkGqGR+BlNLOg4eueInvfm0x+BIs98Dqs+FanfIZN8Hd/IltkNoAPfjqBS
 E3UvgVY/9lXNXu2bKl6Zaq1CsI33e7hE8joUrbfad8mSp14fRWb8ScoYUeW3GDqilMwuaU+P
 4qLN8eqEXseT69gyVKeQu4W0LIpgDg32W7XToLqzDyj0LyDdDiUT6sINB2FaeVRxKaNvR/St
 d1fOsuDwT1bUevjcm/W95IeKRYBKn1TLZb3sclQZ6iPKxFOHGAnFu+XwLU9dogjlKNQ/s/U+
 XS0QV0ezVvkmXTbAQGLbG1zLrLpQZt763k8OEQEIUiyx3skJ5u197obdp0febgh6fwlzPhoQ
 v1DcMKFatxdSjnB6ikCRZ38qpFyMhWtmQ+KeSGiZVACk4VISAXD95nqZAbi+CQVDTawrY05u
 bLIOh7nrYQrHAJuDOjEL9KWkQ2AoUI5ustdVXfqG4wGEKnzy7RCJyv0h/4xBsgDLxTf2zeXv
 zqr7QckSfrl/9JpoIGV7UyQh8LwSbEjThsDd4XOxe/uXRQ26FZP1mOpvAygRTfHSGf9/qnKi
 Q59nq6maKNvcLqnVeNB/1tDwqs06p3hvbJXwgl/H2nMdxKsELwIzpi6MStn5vYlKlxx4FXet
 qezFj9yZO3h1CTNTQN5GebdRr7fvcz4YxGLhRjPHG305TVs4J2MWlhIMh+HhUR1deUrbNp+m
 bl/5ZdPsmRTbybG1P7b1ki4EEzRcxQ9v1kP7/n2/ae111dwlDmun7SBUkcaH61jm/0VbhZ7c
 2b8aFvqn7NG2k7LdXZ7DmTEwecVmJIPph1Q114eNjy0dint2JcKMOlq2W1vFGx9l0wfu8oqY
 zgDHxArec2momk57OAdBDrEM18aW3WkFrnZlgFheJvxFRf4DwQg7QQVZI6wwazu2zkFIGULo
 e7Ckj6NvPSDVJiZ4xbekHVN85TLJeGdPCWb8Cx7N6xp1KXWrdYobmFCqIbIR9ba7RsNuXD6
IronPort-HdrOrdr: A9a23:i9vJUa3gYOF0qzG5UonnHAqjBFYkLtp133Aq2lEZdPWaSL3sqy
 nIpoVh6faUskdoZJhOo7C90cO7LE/02JJx4ZYcJqfnUQH6tAKTQ72K07GStwEIdxeOldK0O8
 9bAtlD4POZNykIsS/R2njGLz4YqOP3gJxBb4/lvgVQpHhRGt9dBmRCe3+m+y9NNW177EoCZf
 2hD5F81kadkB0sB6zRahdlYwHtnay9qHuMW29iO/dI0njtsdtogISKaSRwpi1uNQ+mTt8ZgB
 X4emHCjJmejw==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="300975353"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="300975353"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2022
 03:40:30 -0700
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15E6410E2C9;
 Mon, 26 Sep 2022 10:40:26 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from smtp2.uni-freiburg.de (smtp2.uni-freiburg.de
 [IPv6:2001:7c0:2500:4::25:2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273E510E2CE
 for <dri-devel@lists.freedesktop.org>; Mon, 26 Sep 2022 10:40:20 +0000 (UTC)
Delivery-date: Mon, 26 Sep 2022 12:40:20 +0200
Received: from fe2.uni-freiburg.de ([132.230.2.222] helo=uni-freiburg.de) port
 45042 by smtp2.uni-freiburg.de with esmtp ( Exim )
 id 1oclX9-0003QU-0L for dri-devel@lists.freedesktop.org;
 Mon, 26 Sep 2022 12:40:18 +0200
Received: from [132.230.8.113] (account simon.rettberg@rz.uni-freiburg.de HELO
 computer) by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.14)
 with ESMTPSA id 96347721; Mon, 26 Sep 2022 12:40:18 +0200
Date: Mon, 26 Sep 2022 12:40:17 +0200
From: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Message-ID: <20220926124017.529806df@computer>
Organization: Rechenzentrum Uni Freiburg
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
Subject: [Intel-gfx] [PATCH RESEND] drm/display: Don't assume dual mode
 adaptors support i2c sub-addressing
X-BeenThere: intel-gfx@lists.freedesktop.org
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current dual mode adaptor ("DP++") detection code assumes that all adaptors
support i2c sub-addressing for read operations from the DP-HDMI adaptor ID
buffer.  It has been observed that multiple adaptors do not in fact
support this, and always return data starting at register 0.  On
affected adaptors, the code failed to read the proper registers that
would identify the device as a type 2 adaptor, and handled those as
type 1, limiting the TMDS clock to 165MHz.
Fix this by always reading the ID buffer starting from offset 0, and
discarding any bytes before the actual offset of interest.

Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
Reviewed-by: Rafael Gieschke <rafael.gieschke@rz.uni-freiburg.de>
---
(Resend because of no response, probably my fault since I ran
get_maintainers on a shallow clone and missed a bunch of people)

We had problems with multiple different "4k ready" DP++ adaptors only
resulting in 1080p resolution on Linux. While one of them turned out to
actually just be a type1 adaptor, the others, according to the data
retreived via i2cdump, were in fact proper type2 adaptors, advertising a
TMDS clock of 300MHz. As it turned out, none of them supported
sub-addressing when reading from the DP-HDMI adaptor ID buffer via i2c.
The existing code suggested that this is known to happen with "broken"
type1 adaptors, but evidently, type2 adaptors are also affected.
We tried finding authoritative documentation on whether or not this is
allowed behavior, but since all the official VESA docs are paywalled,
the best we could come up with was the spec sheet for Texas Instruments'
SNx5DP149 chip family.[1] It explicitly mentions that sub-adressing is
supported for register writes, but *not* for reads (See NOTE in
section 8.5.3). Unless TI blatantly and openly decided to violate the
VESA spec, one could take that as a strong hint that sub-addressing is
in fact not mandated by VESA.

[1] https://www.ti.com/lit/ds/symlink/sn75dp149.pdf

 .../gpu/drm/display/drm_dp_dual_mode_helper.c | 52 ++++++++++---------
 1 file changed, 28 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
index 3ea53bb67..6147da983 100644
--- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
@@ -63,23 +63,42 @@
 ssize_t drm_dp_dual_mode_read(struct i2c_adapter *adapter,
 			      u8 offset, void *buffer, size_t size)
 {
+	int ret;
+	u8 zero = 0;
+	char *tmpbuf;
+	/*
+	 * As sub-addressing is not supported by all adaptors,
+	 * always explicitly read from the start and discard
+	 * any bytes that come before the requested offset.
+	 * This way, no matter whether the adaptor supports it
+	 * or not, we'll end up reading the proper data.
+	 */
 	struct i2c_msg msgs[] = {
 		{
 			.addr = DP_DUAL_MODE_SLAVE_ADDRESS,
 			.flags = 0,
 			.len = 1,
-			.buf = &offset,
+			.buf = &zero,
 		},
 		{
 			.addr = DP_DUAL_MODE_SLAVE_ADDRESS,
 			.flags = I2C_M_RD,
-			.len = size,
-			.buf = buffer,
+			.len = size + offset,
+			.buf = NULL,
 		},
 	};
-	int ret;
 
+	tmpbuf = kmalloc(size + offset, GFP_KERNEL);
+	if (!tmpbuf)
+		return -ENOMEM;
+
+	msgs[1].buf = tmpbuf;
 	ret = i2c_transfer(adapter, msgs, ARRAY_SIZE(msgs));
+	if (ret == ARRAY_SIZE(msgs))
+		memcpy(buffer, tmpbuf + offset, size);
+
+	kfree(tmpbuf);
+
 	if (ret < 0)
 		return ret;
 	if (ret != ARRAY_SIZE(msgs))
@@ -208,18 +227,6 @@ enum drm_dp_dual_mode_type drm_dp_dual_mode_detect(const struct drm_device *dev,
 	if (ret)
 		return DRM_DP_DUAL_MODE_UNKNOWN;
 
-	/*
-	 * Sigh. Some (maybe all?) type 1 adaptors are broken and ack
-	 * the offset but ignore it, and instead they just always return
-	 * data from the start of the HDMI ID buffer. So for a broken
-	 * type 1 HDMI adaptor a single byte read will always give us
-	 * 0x44, and for a type 1 DVI adaptor it should give 0x00
-	 * (assuming it implements any registers). Fortunately neither
-	 * of those values will match the type 2 signature of the
-	 * DP_DUAL_MODE_ADAPTOR_ID register so we can proceed with
-	 * the type 2 adaptor detection safely even in the presence
-	 * of broken type 1 adaptors.
-	 */
 	ret = drm_dp_dual_mode_read(adapter, DP_DUAL_MODE_ADAPTOR_ID,
 				    &adaptor_id, sizeof(adaptor_id));
 	drm_dbg_kms(dev, "DP dual mode adaptor ID: %02x (err %zd)\n", adaptor_id, ret);
@@ -233,11 +240,10 @@ enum drm_dp_dual_mode_type drm_dp_dual_mode_detect(const struct drm_device *dev,
 				return DRM_DP_DUAL_MODE_TYPE2_DVI;
 		}
 		/*
-		 * If neither a proper type 1 ID nor a broken type 1 adaptor
-		 * as described above, assume type 1, but let the user know
-		 * that we may have misdetected the type.
+		 * If not a proper type 1 ID, still assume type 1, but let
+		 * the user know that we may have misdetected the type.
 		 */
-		if (!is_type1_adaptor(adaptor_id) && adaptor_id != hdmi_id[0])
+		if (!is_type1_adaptor(adaptor_id))
 			drm_err(dev, "Unexpected DP dual mode adaptor ID %02x\n", adaptor_id);
 
 	}
@@ -343,10 +349,8 @@ EXPORT_SYMBOL(drm_dp_dual_mode_get_tmds_output);
  * @enable: enable (as opposed to disable) the TMDS output buffers
  *
  * Set the state of the TMDS output buffers in the adaptor. For
- * type2 this is set via the DP_DUAL_MODE_TMDS_OEN register. As
- * some type 1 adaptors have problems with registers (see comments
- * in drm_dp_dual_mode_detect()) we avoid touching the register,
- * making this function a no-op on type 1 adaptors.
+ * type2 this is set via the DP_DUAL_MODE_TMDS_OEN register.
+ * Type1 adaptors do not support any register writes.
  *
  * Returns:
  * 0 on success, negative error code on failure
-- 
2.35.1
