Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sCznNQ+iMmoV3AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:33:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC2569A249
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:33:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b="oJCa/UQd";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=canonical.com (policy=reject)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C198C10EA4A;
	Wed, 17 Jun 2026 13:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE2D10EA4A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2026 13:33:00 +0000 (UTC)
X-CSE-ConnectionGUID: FnUqvnQ8TKyj7lgegDUylQ==
X-CSE-MsgGUID: UjK+sIQVSX2d78WOOv6Yyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93870693"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93870693"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:31:49 -0700
X-CSE-ConnectionGUID: QU1izbbkS0asvIiiR8FRbw==
X-CSE-MsgGUID: K+8BpooDSKuePvr1q2mRag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245680732"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:31:48 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business
 Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 17 Jun 2026 16:31:45 +0300
Resent-Message-ID: <877bc90771748ef95cda06d798c14400ba0ea0c6@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa001.jf.intel.com (ORVIESA001.jf.intel.com
 [10.64.159.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6686F20B5713;
 Mon, 15 Jun 2026 22:38:11 -0700 (PDT)
X-CSE-ConnectionGUID: Z4ordTXETVuCI3PoJLBhPw==
X-CSE-MsgGUID: NHgUZj+jSLCz29wyhWCgRQ==
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="285785662"
Received: from fmvoesa101.fm.intel.com ([10.64.2.11])
 by smtp.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026
 22:38:11 -0700
X-CSE-ConnectionGUID: krncMu6ISm+aW5HOjqeEag==
X-CSE-MsgGUID: irDVXZHmR9WK4vZQZNdkGg==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EBAAAJ4DBqhbHS/INaGQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?RIBAQEBAQEBAQEBAQGBfQMBAQEBAQsBgkABFQUBboFqjVOEDYJLgiGBFpcqh?=
 =?us-ascii?q?V6BPxYfCBEBAQEBAQEBAQEHAQEuDxEBAgQBAQMEkkECJjUIDQEBAgQDAgECA?=
 =?us-ascii?q?QEBAQEBAQEBAQELAQEBAgIBAQECAQEGAwEBAQECEAEBAUFJhglGDYI9JQGBJ?=
 =?us-ascii?q?GECBQM7AQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQINH?=
 =?us-ascii?q?xFPAQEEAQEPIAENAQUKKQECAQIBAgYCBT8ECAMBIgEMAQUBIgEJBQQBBB2CY?=
 =?us-ascii?q?AGCIgEGEQM2AgEFDKY5gQJCjG+BAYINBtszDYJWAQICAQYUAQGBNwGNXYEvg?=
 =?us-ascii?q?0d6J1uBTXoaAYJzB2+BUoEPAQMBF4gLBIMugkqOSUiBHgNZLAFVEw0KCwcFP?=
 =?us-ascii?q?nUzAyAKCxISGBUCFC8PBBYyHXAMJxIsF3kTGwcFOmREdVaBBT2EUiMfAzl/g?=
 =?us-ascii?q?W+BJWdmFTA1gQEBER8KOgMLGA1IESwWIQYOGwQ+bgeMZRcPgUtyAVcjCQuBM?=
 =?us-ascii?q?BOBXwOSQy6DJI8QoRIHA4QdjCGNPod8TYQEk08MPJJQAS6HZpB0I41nmw0CC?=
 =?us-ascii?q?gcHESSBRgI2AoFacIM3UxkPjiEJAxaDYIUTiioBuHU4NBItBwIHDwKFTAMBA?=
 =?us-ascii?q?SETjCEBgUsBAQ?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23:ELsJUK29ZRzaMjGclvbD5cB2kn2cJEfYwER7XKvMYLTBsI5bpzAGz
 GEXDG2DP67famD2fo90Odyx9kgHu5DczIBlQQVsqSg9HnlHgPSeOdnIdU2Y0wF+jyHgoOCLy
 +1HMoGowBUcFyeEzvuLGuax9SEUOYagH+OsUb6s1hhZHFEiEGF9z0o6xYbVu6Yy6fChGQSBp
 NjulMPWPV6hylZcP3kdg065gEoHUM/a5nVC4jTSWdgR5AWAzydMUcpFTU2MByKQrrd8T7bSq
 9nrkenRElPxp38FFt6jm7DnRUwGKpa6FRSOkHdfR5+5iRFEoCEouo5jXBbLQRwP49kht4kZJ
 ORl7fRcey9wVkH/sL11vy1jLs1LFfYuFInveiHj7JPJnyUqRFO3qxlmJBle0YT1YY+bC0kWn
 RATAGllghxuHItaaV90IwVhrp1LESXlAG8QknJ6yzr8EKgHepWASpqXxfhaxTodj88bSJ4yZ
 +JBAdZuRBvJaRAJNE0aBZ4zh+S0gWG5dCdXwL6XjfNsui6JkVY3iuG1doOKJbRmRu0N9qqcj
 m7c/iH1Dw8XMJmVzieD+X+3ruvOhj/gHowIGbC0++VpnFqLgGsJB3X6UHPi+abm1RXnA4g3x
 0o8+zACk5gA1EmRH+beAwOKmUyish0zVI8FewE9wFjRlfuFum51HFMsZzhNcs4rtokVTDcyz
 FiWhNDoLThutqCFD3Ob6rqQ6zi1PEA9JGMLYGkBTBAX6Mvqo6k3jxTSXpBiFrK4ipv+HjSY6
 zmMoCl4nLUCkc8j06S94ECBgjSwq5yPRQkwji3eRGu77wV1Io+pa4Wt8lXH8edoKIefU0nHv
 X4YlszY5+cLZbmPnSqMBuMMH6yt7t6BMTvBkRhuGYUs83Km/HvLVYJZ5ixlNgFqKNQVYi31Z
 0HSuitV5ZlOLD2ra7N6Z8S6DMFC5arnEtLsTbbQZ9pSY558cieD/SdzdQiR2XzglA4nlqRXE
 ZSSa8GoS2kTAqRg0yG1Rs8Z0Lk21mY/w3/eQdbwyBHP+b+Xb3+YS/EdOUeDausr/aCspATT7
 sYZNs2WxhEZW+r7CgHP/JIeNxYRIH49DLjyqspKZqiCJBZrHCcqDPq5/F86U4NslakTmP3F8
 32wQUxEz0K5gmfIQemXVpx9QLD1W51asCwaBilvNGn1+18heIuC5ahKIvPbYoIbGPpfIemYp
 sTplu2PC/5CDDrd9jkRYIL+sIt6MhOximpi3hZJghBvIfaMpCSTo7cImzcDEgFTVkJbUuNj+
 dWdOvvzG8ZreuibJJ++hAiTI6yNUYg1wb4tDhqRSjWiUF3r6pRuIir9xuQrKt0BYQjFxyWXz
 R2XHQZwmNQhV7QdqYGT7Yjd9tfBO7UlRCJyQTKEhYtawAGBpQJPN6cbC77QJVgwlQrcpM2fW
 Ami56qibqdexA4V7NUU/nQC5ftW2uYDboRylmxMdEgnpXz3Yl+8ChFqFvWjekGAKnG1dOd2t
 o+yFgFmBIi0
IronPort-HdrOrdr: A9a23:+/VsZaOalyoDcMBcTuGjsMiBIKoaSvp037BL7TEXdfU7SKKlfq
 yV/cjztiWE7Ar5OktQ++xoUZPoKRmwmaKdh7NwAV7LZmbbUQCTXeRfBOXZsl7d83KUzIVg/J
 YlX6x3CNjcFlhkgd2/xAWjCd4vzJ2m3cmT9J7jJt1WPHlXgtpbnmFENjo=
X-Talos-CUID: =?us-ascii?q?9a23=3AVVaVUGpMOTt/N9jp31MSFW7mUcM/dHb40SnxGEr?=
 =?us-ascii?q?7AFk0aJqXUFK98awxxg=3D=3D?=
X-Talos-MUID: 9a23:syLIXAQVe3J2I/YIRXTtnh1cBPVI5p7/N2NRj6c/ie+INgN/bmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="107773102"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="107773102"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026
 22:38:10 -0700
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B47410E429;
 Tue, 16 Jun 2026 05:38:07 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C92F10E429
 for <dri-devel@lists.freedesktop.org>; Tue, 16 Jun 2026 05:38:06 +0000 (UTC)
Received: by mail-dl1-f47.google.com with SMTP id
 a92af1059eb24-13809223fd4so4415254c88.1
 for <dri-devel@lists.freedesktop.org>; Mon, 15 Jun 2026 22:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781588285; x=1782193085;
 darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=h9Hy3tDOEo1WyPKfqS6KI+ShJZyzd2h8DxHBmApwqwI=;
 b=oJCa/UQdEIxIpCjIELEsiUvndc3ZNAgssgvlKYSrvtvH51YGR0PCcVJjbQk7Ciio2l
 VwhFZI3aqYG3X/Wvj7oOFvBLVYlqlscYsc7ujyBeeULu1dJ1PWljs2SO2LTPq9EPH9pW
 hp3ReqptqxWEmGFtRI+dWWudJH2zyn71aDPHtuIgPpqsJaDCmk/61+Gupfe6V/ucYnvx
 zAMfAxMy0WgRruxBt0JhgL+ivvSe/kTkX2UUpFYort5uE2Lkj02s89Cne09sMTS97y3w
 6D20/DNKdRrzH5WtFcfOGJ0C1rWTirYENrn1ewGpfheA9MA1MMoh6qeOkFhATLHaBjCc
 /8rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781588285; x=1782193085;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h9Hy3tDOEo1WyPKfqS6KI+ShJZyzd2h8DxHBmApwqwI=;
 b=TmQi9UuSv/huYn1GTCLn/TVl1ypDYLsjDrgoK9m505FB5QHWEp7GCQC7SflzuylWP3
 4Df5IqGSzMySuZbr1OtuGnLZlIE5PvsCwwITJtjHDyCAoSpuBxrVoqyLbsKXTjs5fslW
 3jTRjcMIe8rvvmy5accbzjkHrHk0GGs6QZvqpPK/vhZcOHS26bGLnJKKaMi060v8PK35
 8whZEq7cbkYr0XiiydfxElhflVFDEwGy5rCYvOtA1pMuZrvoj6I791p8NkqLBU1l5T3n
 dE8I9sqh+wZIAMkihTI2z6HN2vvvZ/j/KL8/d+DGGSmM3+ziNy6Tq1REjELsrBIQ3OEv
 Shzg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+2PhnOBhmBscFPqtWiS77HJTBcwcP/BXMHz56MtQG9BV2C4EDUQPzXJTl3je6YI30ETb8KggPKWnM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyutCkLIuq9SGGthKP4CFAjIEhXyhF7COUyNnS7PcdaceIfX+uG
 SfP1qPzaf1nJ36hISBp+uGSX2MQ8bwNYT4zsouYlbG3f/jFumKeaVRFU
X-Gm-Gg: Acq92OHHT8hvgEleUYvVv3V6ZEvan2ulpQ+Adyi0AFpTJQjpyNWRp8lchbM7yyfb8eC
 eEfr5N/PMjGkUs8yfUZ1BvAydRrCqLsprZEKcW1uzjP5WedFg6lnD6kmqIts8HucYMqG3y4WWix
 586rAw08+4vqvV+FiKQXiTTh/kdbEBd5A21J3+JfWdCeJDooiaoGV/5MktkzxHCkRtFqmBTt6Tw
 PUUNhmLsLLwf5O30786/ld2xz7N4VGlRjjyyn6mIH+gFMF+KC3BAhzTpSQICVIWHqb73suS9qGc
 a0h9bXBZl+LJxpXC0G+/HmXyPztv36UdmAtmroXre2oZPugyOhU9AmYgtZcKXMgYVXJ4VeojfKr
 tmagqaA/03CV4hyx5x05gRiQ+zzvwwfnC5QQMag9+w8/UCuIuU3z7qMxWCxYJHgiL1GKgTO4RkF
 ZY1wdLnbQx1aQC7EEbyZORizzvrhVEmKwxyiePCa6VP0/Uar9RdnLTMQjNbZ6HKkk=
X-Received: by 2002:a05:7300:7b8d:b0:304:bce9:25fa with SMTP id
 5a478bee46e88-30ba596ab20mr1343852eec.4.1781588285239; 
 Mon, 15 Jun 2026 22:38:05 -0700 (PDT)
Received: from localhost (118-163-61-247.hinet-ip.hinet.net. [118.163.61.247])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-3081ea43bc7sm17208123eec.22.2026.06.15.22.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2026 22:38:04 -0700 (PDT)
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Imre Deak <imre.deak@intel.com>, 
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Christopher Obbard <christopher.obbard@linaro.org>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/dp: Move byte-by-byte AUX read fallback to
 drm_dp_dpcd_read()
Date: Tue, 16 Jun 2026 13:38:02 +0800
Message-ID: <20260616053802.1673782-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: 7NPcR7iSv+G5
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[31];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:suraj.kandpal@intel.com,m:imre.deak@intel.com,m:arun.r.murthy@intel.com,m:ville.syrjala@linux.intel.com,m:ankit.k.nautiyal@intel.com,m:christopher.obbard@linaro.org,m:superm1@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CC2569A249

Move the workaround for USB-C hubs/adapters with buggy firmware (where
multi-byte AUX reads timeout but single-byte reads work) from the
high-level drm_dp_dpcd_read_data() helper down into drm_dp_dpcd_read().

This ensures all direct and indirect callers of drm_dp_dpcd_read()
benefit from the fallback mechanism, and restores the original clean
semantics and layout of include/drm/display/drm_dp_helper.h.

Also, avoid using drm_dp_dpcd_readb() in the fallback loop since it may
return 0 when the underlying transfer returns no bytes, which would be
silently treated as success. Instead, call drm_dp_dpcd_read_byte() which
goes through drm_dp_dpcd_read_data() and maps a short transfer to
-EPROTO; check err < 0 to catch all failure cases.

Fixes: a8f49a004301 ("drm/dp: Add byte-by-byte fallback for broken USB-C adapters")
Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 21 +++++++++
 include/drm/display/drm_dp_helper.h     | 57 +++++++++----------------
 2 files changed, 41 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 9c31e14cc413b..d14a8b40a1f17 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -762,6 +762,27 @@ ssize_t drm_dp_dpcd_read(struct drm_dp_aux *aux, unsigned int offset,
 		ret = drm_dp_dpcd_access(aux, DP_AUX_NATIVE_READ, offset,
 					 buffer, size);
 
+	if (ret < 0 && size > 1) {
+		size_t i;
+		u8 *buf = buffer;
+		int err;
+
+		/*
+		 * Workaround for USB-C hubs/adapters with buggy firmware that fail
+		 * multi-byte AUX reads but work with single-byte reads.
+		 * Known affected devices:
+		 * - Lenovo USB-C to VGA adapter (VIA VL817, idVendor=17ef, idProduct=7217)
+		 * - Dell DA310 USB-C hub (idVendor=413c, idProduct=c010)
+		 * Attempt byte-by-byte reading as a fallback.
+		 */
+		for (i = 0; i < size; i++) {
+			err = drm_dp_dpcd_read_byte(aux, offset + i, &buf[i]);
+			if (err < 0)
+				return err;
+		}
+		ret = size;
+	}
+
 	drm_dp_dump_access(aux, DP_AUX_NATIVE_READ, offset, buffer, ret);
 	return ret;
 }
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 8c2d77a032f06..0126fb8080ab8 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -555,22 +555,6 @@ ssize_t drm_dp_dpcd_read(struct drm_dp_aux *aux, unsigned int offset,
 ssize_t drm_dp_dpcd_write(struct drm_dp_aux *aux, unsigned int offset,
 			  void *buffer, size_t size);
 
-/**
- * drm_dp_dpcd_readb() - read a single byte from the DPCD
- * @aux: DisplayPort AUX channel
- * @offset: address of the register to read
- * @valuep: location where the value of the register will be stored
- *
- * Returns the number of bytes transferred (1) on success, or a negative
- * error code on failure. In most of the cases you should be using
- * drm_dp_dpcd_read_byte() instead.
- */
-static inline ssize_t drm_dp_dpcd_readb(struct drm_dp_aux *aux,
-					unsigned int offset, u8 *valuep)
-{
-	return drm_dp_dpcd_read(aux, offset, valuep, 1);
-}
-
 /**
  * drm_dp_dpcd_read_data() - read a series of bytes from the DPCD
  * @aux: DisplayPort AUX channel (SST or MST)
@@ -590,29 +574,12 @@ static inline int drm_dp_dpcd_read_data(struct drm_dp_aux *aux,
 					void *buffer, size_t size)
 {
 	int ret;
-	size_t i;
-	u8 *buf = buffer;
 
 	ret = drm_dp_dpcd_read(aux, offset, buffer, size);
-	if (ret >= 0) {
-		if (ret < size)
-			return -EPROTO;
-		return 0;
-	}
-
-	/*
-	 * Workaround for USB-C hubs/adapters with buggy firmware that fail
-	 * multi-byte AUX reads but work with single-byte reads.
-	 * Known affected devices:
-	 * - Lenovo USB-C to VGA adapter (VIA VL817, idVendor=17ef, idProduct=7217)
-	 * - Dell DA310 USB-C hub (idVendor=413c, idProduct=c010)
-	 * Attempt byte-by-byte reading as a fallback.
-	 */
-	for (i = 0; i < size; i++) {
-		ret = drm_dp_dpcd_readb(aux, offset + i, &buf[i]);
-		if (ret < 0)
-			return ret;
-	}
+	if (ret < 0)
+		return ret;
+	if (ret < size)
+		return -EPROTO;
 
 	return 0;
 }
@@ -646,6 +613,22 @@ static inline int drm_dp_dpcd_write_data(struct drm_dp_aux *aux,
 	return 0;
 }
 
+/**
+ * drm_dp_dpcd_readb() - read a single byte from the DPCD
+ * @aux: DisplayPort AUX channel
+ * @offset: address of the register to read
+ * @valuep: location where the value of the register will be stored
+ *
+ * Returns the number of bytes transferred (1) on success, or a negative
+ * error code on failure. In most of the cases you should be using
+ * drm_dp_dpcd_read_byte() instead.
+ */
+static inline ssize_t drm_dp_dpcd_readb(struct drm_dp_aux *aux,
+					unsigned int offset, u8 *valuep)
+{
+	return drm_dp_dpcd_read(aux, offset, valuep, 1);
+}
+
 /**
  * drm_dp_dpcd_writeb() - write a single byte to the DPCD
  * @aux: DisplayPort AUX channel
-- 
2.53.0

