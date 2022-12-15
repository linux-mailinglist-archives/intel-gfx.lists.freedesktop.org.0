Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEC96751E8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 10:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8AC10E0E7;
	Fri, 20 Jan 2023 09:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E4210E0E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 09:59:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305913020"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="305913020"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 01:59:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="834365314"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="834365314"
Received: from ajgorman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.233])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 01:59:35 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 20 Jan 2023 11:59:31 +0200
Resent-Message-ID: <87zgad8r24.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Thu, 15 Dec 2022 19:36:21 +0200 (EET)
Received: from orsmga005.jf.intel.com (orsmga005.jf.intel.com [10.7.209.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 1133E580DAB;
 Thu, 15 Dec 2022 09:10:03 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="823784968"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="823784968"
Received: from orsmga106.jf.intel.com ([10.7.208.65])
 by orsmga005-1.jf.intel.com with ESMTP; 15 Dec 2022 09:10:01 -0800
X-IPAS-Result: =?us-ascii?q?A0GVAQCsU5tjmLHS/INaHAEBAQEBAQcBARIBAQQEAQGCD?=
 =?us-ascii?q?wKCRAGBQ4ECF402hXqCJRmRY40wGgEBAQEBAQEBAQgBLhMBAgQBAYoVAiU4E?=
 =?us-ascii?q?wECBAEBAQEDAgECAQEBAQEBAwEBAQICAQEBAgEBBgIBAQEBAhABAQEBAQEBA?=
 =?us-ascii?q?RUJGQUQDgUihS9GQBYBgWEFAgMfAQaDeQMDAQEBJAsBEwopAwMBAgYBAUQEC?=
 =?us-ascii?q?AMBUwYBEgWCeYMjAwQBs18zgQGfV4FngUABi1yBEoQxJxyBSUR6GjeDMosCB?=
 =?us-ascii?q?Jg8CoFCgQF2NwMJAwcFLB1AAwsYDRYyChMyFh8GBQxMEBIJGhsHgQoqCR8VA?=
 =?us-ascii?q?wQEAwIGEwMgAg0oMRQEKRMNKSZrCQIDIWEFAwMEKC0JQAcYDiQ8B1YSJQUDA?=
 =?us-ascii?q?g8fNwYDCQMCIVNxCiUSFAUDCxUqRwQINgUGUQYBCwIIERIPLEMOQjc2EwZcA?=
 =?us-ascii?q?SoLDhMDUEcZbwSCDwoGKSicGgFSCjEKRJRbJLAsg3egREwYlmmSHgGSCYU5I?=
 =?us-ascii?q?KczAgQCBAUCFoF5I4FcMxoIGxWDIlIXAg+cMwE9QDQ7AgcLAQEDCYVHAQGCO?=
 =?us-ascii?q?mhrgRQBAQ?=
IronPort-PHdr: A9a23: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
 pWrtX8Vnls7NLYI
IronPort-Data: A9a23:iVGKL6sUTcjYAbC7HWLH557lEufnVGRYMUV32f8akzHdYApBsoF/q
 tZmKTyAM6mLZjfweowlOYqzoE9VsZSEm9MxTwA5r3s3EXxD9ZOVVN+UB3mrAy7DdceroGCLT
 ik9hnssCOhtFie0SsKFa+C5xZVa/f/VHuKU5MnsY3gsG1UMpB8J0E4lwahg6mJRqYLRKxuXv
 t/vqNHoNlag2jplWkoZ8KvrRClH5ZwegxtF+A1gDRx3lAWGzSNMVstCffzZw0bQG+G4IMbrH
 44v85nkpgs1zz91Yvu5n7DydFE9Q7K6FWBiXVINA8BOKjAbzsAD+v5T2Mg0MC+7uB3Q9zxF8
 +ihgLTrIesfFvaVxLlCCUkw/xZWZsWq8JefSZS2XFf6I0fuKxMAyN03ZK060BZxFk+azgii+
 NRBQA3hYCxviMqtg5GhFOBuufglPeX2Hq81nXNnkijgWKNOrZDrG80m5PdX1T09wM5UEPvSa
 tEadT13KhPabHWjOH9OU8t4xrrywCOmK3sB9w39SakfuwA/yCR9yrmoPNfLd9jPT8JImE2Vv
 UrC/n/lGVcULtGSxTee8W6rnqnIhyyTtIc6T+Xir6Az0ALOroAVID0YRHqZr8WQsUWnA9FRC
 nMGqwYRtrdnoSRHSfGkA0Lp8SfsUgQnc/NWH/co5QPL6aPf+xyeGXMHTxZFado7pIk3QyAn0
 hmCmNaBLTVjubjTTHOG5LyGpDCaPSkTMH9EZCkYQA9D6N7myKk6iB7OCM1jAbK0ptn0Hyzgh
 TGMsCU6wb4UiKYj1ayw8FOBhzuzvInPSRE07Rf/WmOj8xM/ZYi5aoju4l/ehd5CJYCYCF+Av
 2UAkuCa7eYTHdeMkjCARKMGG7TBz/SMNiDHkxhsBYsw7Cax/HCifqhU4TdjNAFoNNoJfXniZ
 0q7kQFW45laJz2uZK9rYoS8DewuzK79BZLkUOzZapxFZZ0ZXAqO9yBjZwiI1nzglEM+gKIXP
 ZadbNbqDHAGBKAhxz2zL88Y2KIxwWY1xW7TTJrTyxWhzKrYZXiJRLNDO1yLBsg/7bmBpxST/
 99EH8+LzQhPFuz4fiTTt4UUKDgiNmQyA5Htr8VIMOGZPxF0G2gJD/7X3KNneop5kqATneDNl
 lmhXUpR00i5gHzcNQyWQnRibq7/G5d5sX8/eycrOD6Ax2Y5fYWoqroFbIYzfL8P8O1l0O4yT
 v8ZdsHGCfNKIhzZ+jAZYN/mvZZgfRCirQaPOTe1Jjk5Y5NkAQfO/7fMbAvi8jgTEQKztM0js
 /uh0B/WRdwIQAEKMSrNQP2mxV73s2IQle5/REjUJcEVf1/jmGR3F8DvpuR0ANtSIBf8+j2L+
 xu0LT0/p+6SurZgpbElmpu4h4uuFuJ/GG9TEG/a8au6OEHmw4az/WNTeLrVIGiCDwsY7I3nP
 L8PkaCmYZXriX4T6+JB/6BXIbXSDjcFj4dd1BhgFXPHB7hAIuI/eCHftSWjW0sk+1O0kQS/U
 E/J9MNXNLmEI8D5F0ZXIxAqBghi6R32smmLhRjWCBykjMOSwFZheRkDV/VroHEERIaZyKt/n
 Y8cVDc+smRTcCYCPNeclTxz/G+RNHEGWKhPnshEX9az1lB1lA4aMcy05srKDHenN4Qk3q4Cf
 2X8uUY+r+00KrfqLSduTialMRR12s1mVO92IK8qfgjWy4uc7hPG9AVW6ygzRwJZhg5b2v5+c
 nVtNlN4P76P4yYAuSSwdz7EJu21PzXAohaZ4wJQzAXxFhD4PkSQcjFVEbvTrSgxrTkGFhAFp
 +7w9YoQeWuwFC0H9nFsCRcNRj2KZYEZyzAub+j4RZ3fR8JmOmaNb23HTTNgliYLyPgZ3CXvz
 dSGNs4rOMUX6QZ4T2YH50V2GFjepN1o5ICPfB25wJ40IA==
IronPort-HdrOrdr: A9a23:un8t/KAaHbLFOjzlHek355DYdb4zR+YMi2TDGXoBPyC9Ffbo7P
 xG/c5rryMc5wxhPU3I8+rsBEC/ewKUyXcY2+ks1PKZLW/bUIXBFvAR0WPNqweQbxEW3NQtpZ
 uJSsBFeajN5bITt7eM3ODAKadS/DDlytHRuQ699QYIcegwUdAQ0+4RMG/yeSIZJTWuR6BJba
 Z0yfA37wZIEk5nDPhTaEN1PNQqZrXw5e3biUlsPW9a1OEA4AnF1FeDKWn+4v+QOwk/v4vKnF
 Kur+Wv3NTfj82G
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="302161875"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="302161875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2022
 09:09:46 -0800
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5EA810E0EE;
 Thu, 15 Dec 2022 17:09:42 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
X-Greylist: delayed 321 seconds by postgrey-1.36 at gabe;
 Thu, 15 Dec 2022 17:09:36 UTC
Received: from hi1smtp01.de.adit-jv.com (smtp1.de.adit-jv.com [93.241.18.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AABD10E0EE
 for <dri-devel@lists.freedesktop.org>; Thu, 15 Dec 2022 17:09:36 +0000 (UTC)
Received: from hi2exch02.adit-jv.com (hi2exch02.adit-jv.com [10.72.92.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hi1smtp01.de.adit-jv.com (Postfix) with ESMTPS id ABE2C5203A6;
 Thu, 15 Dec 2022 18:04:11 +0100 (CET)
Received: from vmlxhi-182.adit-jv.com (10.72.92.141) by hi2exch02.adit-jv.com
 (10.72.92.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.16; Thu, 15 Dec
 2022 18:04:11 +0100
From: Michael Rodin <mrodin@de.adit-jv.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Dave Airlie
 <airlied@redhat.com>, Alex Deucher <alexander.deucher@amd.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Date: Thu, 15 Dec 2022 18:03:59 +0100
Message-ID: <20221215170359.92422-1-mrodin@de.adit-jv.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107123657.24vbgep3jqeklb2s@houat>
References: <20221107123657.24vbgep3jqeklb2s@houat>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.72.92.141]
X-ClientProxiedBy: hi2exch02.adit-jv.com (10.72.92.28) To
 hi2exch02.adit-jv.com (10.72.92.28)
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
Subject: [Intel-gfx] [PATCH] drm: override detected status for connectors
 which are forced on
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
Cc: michael@rodin.online, Michael Rodin <mrodin@de.adit-jv.com>,
 erosca@de.adit-jv.com, laurent.pinchart@ideasonboard.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The detected status of a connector should be ignored when a connector is
forced as hinted in the commit d50ba256b5f1 ("drm/kms: start
adding command line interface using fb."). One negative side effect of
not ignoring this is observed on the RCar3 SoCs which use the dw-hdmi
driver. It continues executing drm_helper_hpd_irq_event even if its
connector is forced to ON. As consequence drm_helper_hpd_irq_event calls
"detect" so the connector status is updated to "disconnected":

[  420.201527] [drm:drm_helper_hpd_irq_event] [CONNECTOR:76:HDMI-A-1] status updated from connected to disconnected

This status is corrected by drm_helper_probe_single_connector_modes shortly
after this because this function checks if a connector is forced:

[  420.218703] [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:76:HDMI-A-1] status updated from disconnected to connected

To avoid similar issues this commit adapts functions which call "detect"
so they check additionally if a connector is forced and override the status
returned by "detect".

Fixes: 816da85a0990 ("drm: handle HPD and polled connectors separately")
Signed-off-by: Michael Rodin <mrodin@de.adit-jv.com>
---
 drivers/gpu/drm/drm_probe_helper.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index bcd9611dabfd..0a3b8223c87a 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -304,6 +304,12 @@ drm_helper_probe_detect_ctx(struct drm_connector *connector, bool force)
 	if (WARN_ON(ret < 0))
 		ret = connector_status_unknown;
 
+	if (connector->force == DRM_FORCE_ON ||
+	    connector->force == DRM_FORCE_ON_DIGITAL)
+		ret = connector_status_connected;
+	else if (connector->force == DRM_FORCE_OFF)
+		ret = connector_status_disconnected;
+
 	if (ret != connector->status)
 		connector->epoch_counter += 1;
 
@@ -346,6 +352,12 @@ drm_helper_probe_detect(struct drm_connector *connector,
 	else
 		ret = connector_status_connected;
 
+	if (connector->force == DRM_FORCE_ON ||
+	    connector->force == DRM_FORCE_ON_DIGITAL)
+		ret = connector_status_connected;
+	else if (connector->force == DRM_FORCE_OFF)
+		ret = connector_status_disconnected;
+
 	if (ret != connector->status)
 		connector->epoch_counter += 1;
 
-- 
2.25.1

