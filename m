Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILPGM0WLsWnkDAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 16:33:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB07F2669A3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 16:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F96C10E913;
	Wed, 11 Mar 2026 15:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20CCF10E2A4;
 Wed, 11 Mar 2026 15:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773243189; x=1804779189;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=n1s9SDtZTBVSa6XYISpM0MQYXSHWO7azRL9+fiOrUm8=;
 b=jyz2M4JST064T/fjBlWMy0epM9R+D71BDoXzTm52wirGrfibqeZBvb2R
 BUMPJAPyBgfoP9C4ck19I3G+rckW3v0/a1PzPw16kOlkfrUurrI7Hyrt5
 AK6hQguEhlS6YOiTmYTZR6gonFgP72boJ8MoLsWdWk/JghBy1tBYr0Rtb
 Y/oL05mOo4mXv9dk//EF+jGjEA1JKP96ObVUuFjOUqsTUwtWpKpK+0Zq4
 OIEuRIYOCjOpE+crkskaf6ni+FRB7kY4FN0OHP669PR1ZO8sKRTvm3BZW
 Af5Waa1zZGKsDW//Qyl2RAMnD3v9glUtavqq1zOxM4cDFz0wbBNCDIk8V A==;
X-CSE-ConnectionGUID: oeT6JjtXRSSJi1u7CiMKMQ==
X-CSE-MsgGUID: uHfK11R7Q7ilvYuAAu0rLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="84945425"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="84945425"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:33:08 -0700
X-CSE-ConnectionGUID: DF5K/3nUTamG7d5wy9uQ9A==
X-CSE-MsgGUID: Ky1+ohakS+KusIL/F8fLOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219647112"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:33:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 08:33:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 08:33:03 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 08:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AiKlRWeEcfFX72LWuzncrMs8A7ViCXQW9ikGaUyHRm1ZB7OT9KnR1pD9XuXr0JjqIyUVBEWTGbRcowYvZRX6CW9PCUNvbOHOkBdrEWgDFxR9eTrVVoiH0azkAjOCyBO2beKi+GlAFXi99ELncL/htG8mk/HPP8iWVHK49KxjoT2hcAH11wt2BuJpGZijJ4lzbswfgpupXGPoA89WUWP2820WRw+MZKf2PGZL/JSvf30STUZmauhGnKLHseFEhZE/ePLrIqnhv9fM1VSRVM4UXIe6nPQLjE6paPPmx4fcR02b3R2DyolhlFS/JyF1qjk/M+PUX6PtnnOl4R5ggWrT2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BLwziTUm+/IAdvH2OQrDo+HgFesduudyeKKZoFhXIUg=;
 b=YdUCcu6s9t8FxipOZAByB7Hq2Mdsotx82jYP+eivsmj7Rh4xQ0viSaf9DJ34A1buppS0/05vlVieLXl9JP4mt/fqbJgcYG9lAn6suuz+YHuNmnt4OrWl7TWOYj4kBDvC4RjbEUqdkDbfUsW82WNHcC4b5Q8D/ZFh4ZYE2QAmaGqvyEY6mEybtDwDZKM0+4fH1ZC7i2XQGyyFFyMeN54WhCmV2Dwi9QSxE1mMxdK9ObnAGGF5wcyXEnjpl9RsGctwEEvX1imRjBC4z2gy0o+Zm6HkDc5kmgmlvknSn/hI48otW9UbZd1VusOXDXrBwOUkpo/ut3Z26nyQyl/FtyG4cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9371.namprd11.prod.outlook.com (2603:10b6:208:56a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.14; Wed, 11 Mar
 2026 15:32:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 15:32:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/2] drm/i915/dp: Simplify forcing a link retraining
Date: Wed, 11 Mar 2026 17:31:52 +0200
Message-ID: <20260311153152.133744-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260311153152.133744-1-imre.deak@intel.com>
References: <20260311153152.133744-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0049.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9371:EE_
X-MS-Office365-Filtering-Correlation-Id: 13c14424-8cbf-4d96-da5f-08de7f836618
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: d2XjPfdSPrlzAqQyMWPXAB2BZHIEIT6o7EcT3YCYpTMBr+XnP2228aPxnYXtUnzPBEqeoQ3ggMslOdcK7AAiwN6QK6zqKe3p1ifedDBh/UUzGHJPzvmx1kNFuRl6EUh5Nkn2NZO1zaO9Qrd+CK3l+5Mf2qfQh8Op7eeTd/6NK7i0atlSh2ygiBX7NiCULgH67MjU7e6vNAE4f4E6uFrzGvZFeWrkeZNJhtfzdKoHRdVzqLokv+oVR51anmMPLMpS9sYb8YAtCQ3WRk4eXMpRSPjbmo198vbgT1h3orGhSk7oVvKqxQgUzBIouXWmDHdYngrFaRFwsWBZ4L3xVV321UB9hYz82yIjFVRlXD0K44SAL9J/8zkMC7bdqlZTw10OdJutIpnUx1c7pLEkl/mzwhhNAndlH9KJ3kR2BoztceFvy1yUjT46HMSCi1ZyM0w8jUPOEYCiEb5VDtgXBK8bZ9QNyZSaoaEanQpB6ynL7M2W62crwgsVXb+OEgdk3JRyqv/GYcyVcfuJItlSM4F1s+1pzcy61Vu1I6ij6bgyhYeKaTUydjk2lYWN2yviWoLn2fegpICZEJCxilf5oDxEc+pjprR+CHI5U8kG49lFxghOJmaeyfFL/uPh4oCvX7hwxXGFJY0tDWRUHZLieSK2chuEscpeRUX7wv4CviCwJ2PwaucqoH13EnuL6O4Mi+Z2hsIyjMBJS10618wnkV9gDO0VFwuymyHIS+ut+1lG0b8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RN1zYSSX9kT1eTgf14TbEpYPswzVdfDoOYZq17EsyUqEjiDATJzHQfa/EF1G?=
 =?us-ascii?Q?2kK3VIgyfJIXDrgoEcr0XBvVvf1nX6s+LlVGHW8JBq7bZo2s3k6IQKGud7Sz?=
 =?us-ascii?Q?62RHPyIsfYfo1wkj9kgSOQIrhONQPQOwF572prOTCx4B+tSIlQQO76+2oBAe?=
 =?us-ascii?Q?hyIaVYybE4pHmbC6W+gvao/4QbQja4qifydYBdV5bT1IZtKZao9BhN1Myg19?=
 =?us-ascii?Q?Zd2hSyTiUXwCFNFSXAKzE4rY0CHzqES5DWJxAoGUuLPxZYKPcwSg6y5qcLtU?=
 =?us-ascii?Q?FIvTbNYS1hsy/HS+VJM+kdivU6otPWvFyzrk/WAeae436+1j4hHUTJLdYUOh?=
 =?us-ascii?Q?wJlXoL18O8SuW6c7ZLUuBoQXy6agxwsut29V5SNlVN2NzJc3fbWtBlcwliJR?=
 =?us-ascii?Q?EukpFuvtq1+kQkqjbM3jxUNt76gam90oAcYTqKlQsegwaEjez2Wt6xdm57HR?=
 =?us-ascii?Q?7TgiuTCXvjh7s/I0Qpd8U/ug8jdNs27RAcwH3s7JSGppZgmZmMP4n6XlrCMp?=
 =?us-ascii?Q?nljVGc+I1KqPYjSC9lJNVgL6zAHKSsKboF8g7sQHayhSxp7G6dsxtk8sCJEx?=
 =?us-ascii?Q?7aRryEMPauY9w4RoGmGtqLzoKJaE3wpNkhyxQdVKfiqJYmHO8rsApUq1MTFc?=
 =?us-ascii?Q?PZvMxyPY+3oMz6z979KGaLTNdc/dIKX3WLt8K1Ioo3iAptQOG2a6pjDefrv5?=
 =?us-ascii?Q?knHbneF7vIzA4P7ENJirwo9H1l67j+7wagXu78FdTKNl1NYKUSBhnnxl2fvN?=
 =?us-ascii?Q?AwXPSsQkHm2zF2gahjuT9F/T2ggmSKVZfnYFqrwbWoqXeCU3yzyrmROG9FBu?=
 =?us-ascii?Q?50WhjaoIr+u1RT7TLziwkimAaUoFIQQrCgLHn0xCI8Syah9n3y3fPPr/sl+S?=
 =?us-ascii?Q?BnT4td3VQshAXzXLPe7OBetC7fxkhQTm9K2vveyEGTOwwacFUYQAVU+rZ5Ic?=
 =?us-ascii?Q?ry11wTzIq+/vd0P0oVeqvDtX+mUduVukdltBcQOhgdVlTKt1+p/cJvJDv/ei?=
 =?us-ascii?Q?2gJ7cXcRlSFny648TNkFOSQxbapMx/Bp+fhS2Xf3WZl7HZYXbqf9AtrGD5Gd?=
 =?us-ascii?Q?bsVqCcQWyVeDUGJB1Vl52ZiTLgs6izetLQ5AFnqgftS+u0zu81n6T3j/t7lI?=
 =?us-ascii?Q?f49RROMplqhVFSPOgsutQER0055fcHBV/qxPDwyiBmbaQ6Q5y9aI7Aao4Txu?=
 =?us-ascii?Q?oXUf4EMcZUoKJ5k8D2r+1Lxcr3WEBtfoqQwtPa0IsYzAToq7SVDBQiy59AUR?=
 =?us-ascii?Q?dkRlKa/rf51ocvonX15bw3sIFl+Uc5/UctTa9+0GLrp9rRkKAt08MS8ZA210?=
 =?us-ascii?Q?uXoRShU9mzDCEokk6L1GUwZ9VdpcjIasWzy5g47wvAgsT0pcOybvSjwNXmxC?=
 =?us-ascii?Q?j4a/UAKtwIu+obGNL7s0rqZ+XSe2x1OCXf3Mbz83NSvNeqPbykcSKaS/t+tp?=
 =?us-ascii?Q?c57K7uMiVF6aFJCD590XJzwD4LYei57mCntMfYPrHnzuR3b6ciOPDLUr4IB5?=
 =?us-ascii?Q?TR6UfNEaadJi6xjY77xFYWBlRpvUPuMFDBcsPYLzgNrtSQoDfcP3Vj3iWko7?=
 =?us-ascii?Q?FAExJRf26PgMed3SEaNeUlrY1xfC5wGy7JeZ4Lt7JODd2MAMYQ1JlGceeK0t?=
 =?us-ascii?Q?tWeOLO3JXR/l1XsuA4CAIggADCkqAMD7kTLIeBdi21dutg1ZUoG2Jxhzs6Oc?=
 =?us-ascii?Q?/E0tDdr2WBygtQmxwM2T6+E2PGgC9Sznq+AWzlx7X6lqII+iEb6NatEuS+LX?=
 =?us-ascii?Q?rhVvsMSeHQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: RvIR5Rlzr47AJybpkNPelWraRQmXpZ/auJiGE2PDuvmvEtKWNxD1N5iPNcMXVi4jc3Z/J/kVds6g2AwCNIIHUkGIYY5BTeQEQZdJnnEdIp0noERe/3F/mmjYdC/z+nXsmcrX62/SSJvBUP0Ot0RFF1/VpA00aegASysYWRZT5H8n+pMFZFVgY2l2/3Yr6M7nWKXa84pzQvtQyamrVuT2vAPNSXwuoqdtMeo/tLCJzPuGtu3AeSTgyT7g5qKYZ6XonM6NyrhF9CcZuuEJP5LYSSxfzbKXi9UbYnsvquWglxrUlA2/RE3oJBzYRbgAd3Yp3FDg6ZhPMgrfXQrFwi8WNw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 13c14424-8cbf-4d96-da5f-08de7f836618
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 15:32:26.7085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ez5XEL62O6ddhLhVy9okqVUBWPwyWbeux16EYTUvl+zdzGwYk7xwMX/uzH/TFZQ7gGWWHANNlRckNaXgOOHRAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9371
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB07F2669A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since both the DP SST and MST HPD IRQ handlers call
intel_dp_handle_link_service_irq() with LINK_STATUS_CHANGED set in
irq_mask if intel_dp->link.force_retrain is set, checking for the former
flag is sufficient to determine if the link status needs to be checked
(which includes retraining the link if this is forced); remove checking
for the latter flag.

Since LINK_STATUS_CHANGED is currently set unconditionally for DP SST,
extend the related comment to note that it must be set if
intel_dp->link.force_retrain is set (in case setting LINK_STATUS_CHANGED
becomes conditional on DPCD_REV).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2ae030eda73ee..4955bd8b11d7a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5925,7 +5925,7 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if ((irq_mask & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
+	if (irq_mask & LINK_STATUS_CHANGED)
 		intel_dp_check_link_state(intel_dp);
 
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
@@ -5984,7 +5984,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	/*
 	 * Force checking the link status for DPCD_REV < 1.2
 	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
-	 * for DPCD_REV >= 1.2
+	 * or intel_dp->link.force_retrain for DPCD_REV >= 1.2
 	 */
 	esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
-- 
2.49.1

