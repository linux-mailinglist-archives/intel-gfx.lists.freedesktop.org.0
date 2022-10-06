Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B305F6A37
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 17:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BAF10E31D;
	Thu,  6 Oct 2022 15:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1C010E218
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 15:05:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="283183523"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="283183523"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 08:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="655645952"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="655645952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 06 Oct 2022 08:05:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Oct 2022 18:05:14 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Thu, 6 Oct 2022 18:05:14 +0300
Resent-Message-ID: <Yz7uquIFzsKExzNM@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.stink.local with IMAP (fetchmail-6.4.27)
 for <vsyrjala@localhost> (single-drop); Thu, 06 Oct 2022 12:37:19 +0300 (EEST)
Received: from fmsmga002.fm.intel.com (fmsmga002.fm.intel.com [10.253.24.26])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id AE438580514;
 Thu,  6 Oct 2022 02:34:09 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="729069310"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="729069310"
Received: from orsmga106.jf.intel.com ([10.7.208.65])
 by fmsmga002-1.fm.intel.com with ESMTP; 06 Oct 2022 02:34:07 -0700
Authentication-Results: mtab.intel.com;
 dkim=none (message not signed) header.i=none;
 spf=None smtp.pra=simon.rettberg@rz.uni-freiburg.de;
 spf=Pass smtp.mailfrom=simon.rettberg@rz.uni-freiburg.de;
 spf=None smtp.helo=postmaster@smtp2.uni-freiburg.de
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: 633ea0eb_Jq2aLOikfUTEzO+pEtpmnxrvoTBHtsdO46o4ADBulyLElSq
 C5Pm0L7Iy+BsKOVd5/yexSlZjYTRi+HOsXRhhHQ==
X-IPAS-Result: =?us-ascii?q?A0FAAACroD5jmNQC5oRQChwBAQEBAQEHAQESAQEEBAEBQ?=
 =?us-ascii?q?IE+BAEBCwGCI4EBVy0EUI1NiBeBFpBXiVWDFjwLAQEBAQEBAQEBCTcJAgQBA?=
 =?us-ascii?q?QMEgUyDMoR1HwcBBDMGDgECBAEBAQEDAgECAQEBAQEBAwEBAQICAQEBAgEBA?=
 =?us-ascii?q?gQCAQEBAQIQAQEBAQEBAQEUCRkFEA4FIoVoDYI1KQF0Sj4BAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQ8CCFJMAQEiPD+BPgESgn0BgyADBQupVIE0gQGDU?=
 =?us-ascii?q?AGETYFfBgkBgTMBjAGETxCBVUSBFYJzdYJiA4EyhmkEmhU4AwkDBwUsHUEDC?=
 =?us-ascii?q?x8NFjQDFQMUAwUhBwMZDyMNDQQdDAMDBSUDAgIbBwICAwIGEwUCAhceGDQIB?=
 =?us-ascii?q?AgEKyQPBQIHLwUELwIeBAUGEQgCFgIGBAQEBBUCEAgCCCYXBxMzGQEFMicOC?=
 =?us-ascii?q?SEWBigNBQYTAyBJJgUHOw8oL2kiCR0bCoEMKgkfFQMEBAMCBhMDAyICECoxF?=
 =?us-ascii?q?AQpExItBytxCQIDImsDAwQoLAMJIR8HKCQ8B1gSKAUDAhAiPQYDCQMCIll3D?=
 =?us-ascii?q?CYSFAUDDRkmCAUkFhsECDwCBQZTEwIKEgMSDy1KD0pCmXOCEz0cCBoJCgshB?=
 =?us-ascii?q?HcRQEgpC5IpkBudGYF+NAeCG4FFgUMGDJ5LTBGDZZMABjCRWpcQIKIKJ0yEU?=
 =?us-ascii?q?IF3JIFcTSSDNk4DGQ+OKQMNCRWDO4ohAT5AMwI5AgYLAQEDCYVEAiQTCwGFE?=
 =?us-ascii?q?gEB?=
IronPort-PHdr: A9a23:bQ/+IhbcBIH8HKXtAt8eO0j/LTEV2YqcDmcuAnoPtbtCf+yZ8oj4O
 wSHvLMx1gSPBtuGoKsZw8Pt8InYEVQa5piAtH1QOLdtbDQizfssogo7HcSeAlf6JvO5JwYzH
 cBFSUM3tyrjaRsdF8nxfUDdrWOv5jAOBBr/KRB1JuPoEYLOksi7ze+/94PdbglSijewYLN/I
 BqroQjRq8IbnZZsJqEtxxXTv3BGYf5WxWRmJVKSmxbz+MK994N9/ipTpvws6ddOXb31cKokQ
 7NYCi8mM30u683wqRbDVwqP6WACXWgQjxFFHhLK7BD+Xpf2ryv6qu9w0zSUMMHqUbw5Xymp4
 rx1QxH0ligIKz858HnWisNuiqJbvAmhrAF7z4LNfY2ZKOZycqbbcNgHR2ROQ9xRWjRPDI28c
 YUCEfcPM+Vfr4f6qFQBsRSwCBKwBO7txDJEmmX70bEk3+knDArI3BYgH9ULsHnMsdv1NaISU
 eezzKLV0TvMce9W2Svm54fWaBAhruyHULVrccrQzEkvEAXFgk+KqYP7IzOVyv8CvHaB7+pvT
 u+vkW8mpxtsojipx8cgk4fJhpgLxVDF7ip53Zw1JdKiREFmf9GpCZ1dvDyVOIVqWM0tWX1ou
 Dokxb0cv562ZCgExYokyhLDZPKKcIeF7xL9WOuVPzt0mHNodrK+ihuv7UStyenxW8233VpWr
 ydJj8TAu3AD2RHS7sWLVPpw8Emn1D2S2Q7T7eRELlo1lardM5Mh3r8wmoAPvkTEGy/7nlj9g
 qyOdkg85+Sl5frrbq/4qpKSK4N4kB/yPr4wlsCiH+g0KhUCUmaF9eimyrHu81H1TK9Jg/Esj
 6XVrZ7XKMIGraCjGQBVyJws6xOnAjemztsYmX4HIUpeeBKCk4jpI0/CLOrlDfe5glSgiTlrx
 +rYMb3gGZrNM2LDkLj7cblg9UFQ0AszzdZB6JJIErwNPfz+VlHruNDGABI1Lxa4z/j9BNljy
 48SR3qDAqqDP6PTtV+I6PgvI+6JZIINozb9Kv0l5/nojXMjg18SY7Wp3YcMZ3+mBPRmLF6UY
 WDtg9sbDGcKuAs+QPXkiF2YTzFTZm29X78m5jE0Eo6pEJnMSpirgLOaxCi7BIFZZnhaClCQF
 nflb5uIV+8WaC2OOs9hjiAEVb+5Ro8/1BGusAv6xKR9IurP+iwYr5Dj28Jx5+LJjhwy8T10D
 8KA02CCVW10n2UIRyMo06B7u0By1lCD0a1gj/xCCdNT/+9JUhs9NZPEzex1EdbyWgPbctePS
 VamQcimATUrQd8qx98OYkB9G8itjxzZ3iqqBaMVmKKPBJAu7q3c2H3xdI5BzCP41a0lghEdU
 9FNuWkqzvph9gzXCsjSgl+bnqKjXaAd2jPdsmaF0WeK+kpfVVg0GYnMQ3ETLmLXt9D46wuWR
 r60DbUqPiNOzMeDLu1Bbdi/yR1qTfHiNdCWXW+th2qqTUKEz7WNYY7CdWsC2CGbA0hS10gx9
 HCHfS4/BTqlqiqKDjVoFBTpYkDx9eBWrHK9U19yzgeWYkkn3L2wrFpdufybTvoIloAFvSIss
 TB9GlD1i87ECt+FqhBkdaNaScgg+1oB2W+P5CJnOZn1FKFngVhWSQlro0njzRo/Xp5BlM8s6
 mkn0BZ4JLiX+ElTMS6e3NX+ILDWIHTo81ajZviFiRnlzN+K9/JXu7wDoFL5sVTsTxJ6m50G+
 9xJ2nHa55PWAQ5UWpX0AQ479Bl/8rfdZCR1p4bZzmZlPqT8tDjek8koC+0oxlfof9pWPK6eU
 g6nFcocCpvmM/Qkzn6uaB9MJ+VO7OgsJcrzbPqD36jtJut8gDirl2tv+pI7z0SNsiRmR+/Cw
 owKhf2VjUOcTzmptF66qYjsnJxcIzQbH26x0y/hUZVQY6p0O5wGFXukLte47s9swYPrWjtW7
 lOiDU4c14mldEnadETz
IronPort-Data: A9a23:VF3iC6wdNCxZEAVb7A56t+d8zSrEfRIJ4+MujC+fZmUNrF6WrkUHm
 2saXzjQOPzeY2Lwfd4gbI+x8RtVu8TRm4Q1HAs/+y00HyNBpOP7XuiUfxz6V8+wwmwvb67FA
 +E2M4GYRCzhZiaE/n9BFJC/8CEkvU2vbuOkVL+dUsxJbVY4Dn1n0XqPosZj6qZwm9+1HgiRj
 t37pszbKTeN1iV9Wo4uw/vrRChH4bKj5Vv0gnRkPaoR5QeGySFMZH4iDfjZw0XQE9E88tGSG
 r6rIIGRpgvx4xorA9W5pbf3GmVirmn6ZlDmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TrEFt0Yfec8Agqe0Iw/ylWZcWq8VJcSJS1mZT7I0buKhMAzxj1Za2f0EJxFutfWAlzG
 fIkxD8lcTKZnuuJ3r6BTuRsrJ8eFcSyJNM0gyQ1pd3ZJa5OrZHrWKDW/YUewTExw85UEPfUe
 tAWLzZiBPjCS0QUYBFNU8p4xqHy3yOXnz5w8Dp5oYIs4m3Uykpr3aTxOtfPdfSQV4NImEfdq
 HjL/m7kGB5cONH3JT+tqCLy2LWWwXykMG4UPJqC8ON1kgC2/XQwVQE6UF6RucmSlFHrDrqzL
 GRPpnRy9/FqnKCxdfHjXhm8rTifrwQeUt5ZO+k77hydjKvS/wudQGMDS1ZpatUgtYkwRD830
 lahm9LvGCwpsbuJRHbb/bCRxQ5eIgAOKHMaP2kZSwpA7cPuoYsulB2JQtsL/LOJYsPdBhPq2
 jm1siQEg7gTp5U27qji5QDsumf5znTWdTId6gLSV2Ojywp2Yo+5eoClgWTmAeZ8wJWxEgnZ5
 ChU8ySKxL9eUc/W/MCYaLxVdIxF8cppJxXwrDaD9bEP7Tms8WO5cshR5XlUPkpoKckNZFcFi
 2eM6FoJuPe/0FOAZKN6ZceOFt420aXlH9n/WZjpgjdmeZ1tbFXB4SdvIECK0mHnjVIj160yU
 Xt6TSpOJSlEYUiE5GPoLwv47VPN7nxkrY80bcynpylLKZLEOBaopU4taTNilNwR4qKeuxny+
 N1CLcaMwBg3eLSgPHWGoNJNdw5TdSlT6XXKRyp/K7/rzu1ORjtJNhMt6e16E2CYt/4Nx7qTo
 CnVtrFwlAqj3hUr1jlmmlg4NO2zB88nxZ7KFSYhOUm11jA+Z4ex4b0EdocmNb8q6PNk1/0cc
 hX2U5roPxi7cRyeo251RcCk9ORKLU377SrTYXbNSGVhLvZIGVeTkve6JVSHycX7Jnft3SfIi
 +f+hlqzrFtqb1kKMfs6n9r0lgPp7SVGyLgsN6YKS/EKEHjRHEFRA3SZppcKzwskdEyrKuKyh
 l/OUyQL7/LAuZE0+9TvjKWJ5dXhWehnE0YQWyGR4b+qPGOItiCu0K1RYtauJDr9bWLT/Ln9R
 ON3y/qnDuYLsmwXuKVBEpFq75kE2f3Rm5FgwD9JJk77N2aQNus4I12t/9V+ialW97oI5Sq0Q
 h2u//dZC5WoOeTkMk8cJVd8ZOGAycMSuD3b0tZsK0Dx+R1YwbujemdRNimqlyZyAuZUMoQk4
 OF5o+8QyVW1pSQLO+a8rBJ/1jqzPFkfdY44p7cYKoPPoSg6+GFoOJDzJHf/38CSVo9qLEIvH
 A6xuIPDoLZtnmz5bHs5ECn279p33JghlkhD8w4fGg6vhNHAu/4Q2S9R+xQRSiB+7E1O88B3C
 1hRG3xFH4e81BY2u5EbREGpIR9LOzOB8E+oy1cpqnzQf3P1akPzdl8CKcS/12FH1VIEZTVK3
 qCq+EC8WxbQQczB9C8TW0lklv/dceJM5jDywP6AIcDUMKQ5MBzEg7Cvb1UmsxHII908r2yZq
 PhI/NRfU7zaNykRqKs8FoWliKw0dyKVFlNGQP1R3qUtGFvYWTCt2AqhL1K6VdNNKsfrr265K
 Z1KDeBeWyuu0B2hqmgg
IronPort-HdrOrdr: A9a23:TWK61au9Sot4psqv9YpIJSLD7skDW9V00zEX/kB9WHVpmwKj9/
 xG+85rrCMc6QxhPk3I9uruBICsTXbd6pJv8c0dNaqvNTONhILFFu9fBOjZslrd8k/Fh4xgPH
 dbAs1D4bTLZDAW4frS2wWkD80mhMCO7aHAv4zjJhxWPGJXgs9bjjuRcjzrdnFLeA==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="286621477"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="286621477"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from smtp2.uni-freiburg.de ([132.230.2.212])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 02:33:27 -0700
Delivery-date: Thu, 06 Oct 2022 11:33:31 +0200
Received: from fe2.uni-freiburg.de ([132.230.2.222] helo=uni-freiburg.de) port
 56666 by smtp2.uni-freiburg.de with esmtp ( Exim )
 id 1ogNFj-0008Os-1X; Thu, 06 Oct 2022 11:33:15 +0200
Received: from [132.230.8.113] (account simon.rettberg@rz.uni-freiburg.de HELO
 computer) by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.14)
 with ESMTPSA id 96946078; Thu, 06 Oct 2022 11:33:15 +0200
Date: Thu, 6 Oct 2022 11:33:14 +0200
From: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20221006113314.41101987@computer>
Organization: Rechenzentrum Uni Freiburg
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] [PATCH v2] drm/display: Don't assume dual mode adaptors
 support i2c sub-addressing
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current dual mode adaptor ("DP++") detection code assumes that all
adaptors support i2c sub-addressing for read operations from the
DP-HDMI adaptor ID buffer.  It has been observed that multiple
adaptors do not in fact support this, and always return data starting
at register 0.  On affected adaptors, the code fails to read the proper
registers that would identify the device as a type 2 adaptor, and
handles those as type 1, limiting the TMDS clock to 165MHz, even if
the according register would announce a higher TMDS clock.
Fix this by always reading the ID buffer starting from offset 0, and
discarding any bytes before the actual offset of interest.

We tried finding authoritative documentation on whether or not this is
allowed behaviour, but since all the official VESA docs are paywalled,
the best we could come up with was the spec sheet for Texas Instruments'
SNx5DP149 chip family.[1]  It explicitly mentions that sub-addressing is
supported for register writes, but *not* for reads (See NOTE in
section 8.5.3).  Unless TI openly decided to violate the VESA spec, one
could take that as a hint that sub-addressing is in fact not mandated
by VESA.
The other two adaptors affected used the PS8409(A) and the LT8611,
according to the data returned from their ID buffers.

[1] https://www.ti.com/lit/ds/symlink/sn75dp149.pdf

Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
Reviewed-by: Rafael Gieschke <rafael.gieschke@rz.uni-freiburg.de>
---

v2 changes form last submission's feedback (thanks for taking the time):
- Added a shortened version of our "background story" to the commit message
- Only use tmpbuf if the read offset is != 0

 .../gpu/drm/display/drm_dp_dual_mode_helper.c | 51 +++++++++++--------
 1 file changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
index 3ea53bb67d3b..bd61e20770a5 100644
--- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
@@ -63,23 +63,45 @@
 ssize_t drm_dp_dual_mode_read(struct i2c_adapter *adapter,
 			      u8 offset, void *buffer, size_t size)
 {
+	u8 zero = 0;
+	char *tmpbuf = NULL;
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
+			.len = size + offset,
 			.buf = buffer,
 		},
 	};
 	int ret;
 
+	if (offset) {
+		tmpbuf = kmalloc(size + offset, GFP_KERNEL);
+		if (!tmpbuf)
+			return -ENOMEM;
+
+		msgs[1].buf = tmpbuf;
+	}
+
 	ret = i2c_transfer(adapter, msgs, ARRAY_SIZE(msgs));
+	if (tmpbuf)
+		memcpy(buffer, tmpbuf + offset, size);
+
+	kfree(tmpbuf);
+
 	if (ret < 0)
 		return ret;
 	if (ret != ARRAY_SIZE(msgs))
@@ -208,18 +230,6 @@ enum drm_dp_dual_mode_type drm_dp_dual_mode_detect(const struct drm_device *dev,
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
@@ -233,11 +243,10 @@ enum drm_dp_dual_mode_type drm_dp_dual_mode_detect(const struct drm_device *dev,
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
@@ -343,10 +352,8 @@ EXPORT_SYMBOL(drm_dp_dual_mode_get_tmds_output);
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
