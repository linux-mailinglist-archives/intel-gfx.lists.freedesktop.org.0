Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJLMOByu8GnwXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962564854D7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1D010EC64;
	Tue, 28 Apr 2026 12:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VSo9wIM1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB24010EC3F;
 Tue, 28 Apr 2026 12:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380886; x=1808916886;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=wvfALXIl+M5enJqZCTRFpjNLkntWQe38vs/PZzLOwPc=;
 b=VSo9wIM1OG6d6kCoSB6M/rgbctPvf0jWYWzfLwNEUrBauwPuWD48YhZ0
 pK6RYsR5zg+swAU8jQ2M4vCJAXIPT9mHMCcdIYgDCRtFduVoeWQu0dntQ
 5RTXeG382UZe5yNm6+aNqpdWcNYNvdlAhnV3riiFbL/AZIm79ok+0EP3Y
 hr3AtotRU9L5nCyGTvaT1tEqEB+HcXL2YxQMpCR4slm2/KWsCReqlxg6e
 oRAgRAA7GR3MVPErfCCknPrCaUuado/ts8R7QLIAYKNyHIyeAMuXbwhhD
 YhsX6ZXgw1Q/w7JSqMErXOwK5gGhXZ1WpbwkJmHPHzMi15SeOYe85KYW7 w==;
X-CSE-ConnectionGUID: 1errgne5S06lPdLDXrJitA==
X-CSE-MsgGUID: Wpbuwl+jTnCDgRWtg49sGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893807"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893807"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:46 -0700
X-CSE-ConnectionGUID: 9Eg5FrZrSs2U512jEt172w==
X-CSE-MsgGUID: QEcMP1nOSTWriTKpY1Tx9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083560"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:45 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l36240xFe/JEmXYqwNtLUu7MmtWpk+4ZaIg/MuFuCnliI1U4bpnAfAy88FhY8D2qbwoyUbkfS8GmzuTHtd4YMymur8jZCNzQUk3KbbtH649kzJ/cMVc8f9dIOvLAMwkr6cNtlvP1j9xx58ABxn3tMkm88m+y4MTGSj9qoeo4kNiS2JDMlWqu7X+2GabiW25GFVhPp9PUnZzHLUcjf1K99PeUKXSwCtIjx8E6t5RXdBwIDfYY8AhRnGgLPQSG2rWbdp98g+OWjtcqUJIkIX4wIYWXK96BAVjiiCoemoAGuezq0oRUX+rv/kv+DewweDal8vbQyN+C6wJ4MOAePngkyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=egSt0/BJLGkKMOhC2YrtJlELL6VvLfYzmC9gut9jCos=;
 b=T4E7Pkp7Okzr6l6NGJ0lCH9biLSMwNfF1yzucVlIyevbRiv3N8r9K5XVCD54trLhY3Kc8ZMBzK8XlpjGpgiTcbThRt2vVTKhNuzaf8rKb4Wvla3QKhWE48p10Im5ixZg2O/HtWC2TLSrdwwGh7g/LD9JtegUYeZYYPesz+nbCy3AY1aa2UvMItPpMYDgqQgZFhO6zmlGCH1jKr06jc8XTXzZNw/A6juZHnGXA14PwgfrQCA/I9RwglfCuq4R1UR/T88VesGaM0QEbmDPFdqGxdh2MTtrV7YmmytaJKHAGb0+rhxnfzvwld1K9bPG4dEbphGHF1W9KZFFxe/uUa3wRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 066/108] drm/i915/doc: Document DP link capabilities
Date: Tue, 28 Apr 2026 15:51:47 +0300
Message-ID: <20260428125233.1664668-67-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 0da71062-de2d-4c64-ae71-08dea525488f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: TUPmj/ankPZxpbP6ZaQyr4dA2Sq1p8Qpk1uALxBXew1+0BRw/9mCy2b0W+YGBW7q0A3sd+v0bauQF+Mxi00AKZQG5PZtyEjaYELrEms15Ai0E3oHegA5+GkWyl1OAtfRezVGB1rsRmjM8+Jofj6t3J1Cxbc9USDBxWCOx//E9lztvuFOUX/X4C9EeNQJfnhxolFszarFxMWpsJJ70zVXlcRLu94PIyVA4MtCiLiPoedDR58htLM/p56wYkx6KvP9NVpKQxm/A4/2R675HjriH93r2WglyWLdvP0ISvyajp+gFWfF8FrdTVIz1x8UX91ucdVRqynTAJ8fx2GYaLdwfJITWoj/IS7vlPFHfsfX8gCqw76VSn/Dy9fa0Gm3NbDeQo+jqctQPX1Y6TfsD9GPLneLfZKtV9hjfG3u842vXx7G11wDWr/S9YGm8GN1lKFz10toxBZm9DgFbVP8HPCMY8ZPPQtqsnJz5Eq444Bd2L85e/65JsaCFiqhx9FSNj2VcqptAAp0S4gn+Imq8WJLoXHFtb4tcZzqjjVw+zOvg30OFTXlVcsgvpTovuLEOhxyhcnlPc5067Vm6RwQ1kxDftX9VvTLBkcVCxO7gCcLsFjjIroB4d+B3LCEhZoeQTlk/f3ikuDAHrsqChh6aoYwhaYLUr45ts/sIB3v9SrBZzLKQ6TGaMildlSbdwpDtZxw7NrMxojujO+b95+DAFtEB2drmpuPk/cLVTMoSIA0lCU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5OfthjBgA5r+pEBgNfGVKOzCdSoS3imwkjUOijgEIdZTuJcKNR6Cje4q6lfD?=
 =?us-ascii?Q?sxDhZ9X4BVQWtP+nAl7l5on1H0nf6JTwG2484WRxCqzhIsz3ttgjJYTYeVJ9?=
 =?us-ascii?Q?ZA18sZF/lEUKkIAqMowKlsQ8w6PZdKFd+iUKovcSPbcfhXpF45j5WaKpv+BF?=
 =?us-ascii?Q?NFeqr+G63u6UjLpDkW4v9DFQbwhqGEaFPwQ4mm9luE84Xqx6ZDKrzEWMF6i0?=
 =?us-ascii?Q?jzpCUk5G0IY7NVg4X6OhFDYndQ0Hcgm6wpvyz/CbvIVXtICYa9OgTXYtIYJE?=
 =?us-ascii?Q?0g023VlwEmGwSVnnVr9JCxdUcktaXE/EIl3FK6mYou2FxEnHHR/39GMK6KFh?=
 =?us-ascii?Q?/EAJQWEQz8gyM4jYyRW26uzG+uV8OKqX1iWOHGMJbvq90TWdH6BUyc0c+dOj?=
 =?us-ascii?Q?XFP5Eb3V1GjFjPyup9WeaAcDZ/Ati6MXNaaQGDH3RKqMZPgO4WqXYv0itD9e?=
 =?us-ascii?Q?B7HYP+ok+NtIUJteEG7ezKAdElsX4Ms+slIZleZnLwwOzqIiopiopb2vPxo2?=
 =?us-ascii?Q?KkRd4G9vrKLP0vrJ12QWAkaLbxTQBO2IFFXONeEs14gxMubi2hx+Ql5uqLGv?=
 =?us-ascii?Q?XyI1SFz9G7E2f8xKDTZQQCiCWmT1VLLRXtGvd5RBUvSy7kn6AqnFjbgazTto?=
 =?us-ascii?Q?574v2fgcpnHvao2HavjdG3I2urHS4WAtCSmi8ncpNsy4ThB4cG2/qLrNhnEW?=
 =?us-ascii?Q?6AtnMWytw+G3vf0+Wq+0DgENN+FmTtxo1LemHD6ahk5MBfbwRZIboW0koR4V?=
 =?us-ascii?Q?S/5PaR4wTvjhZ87bNYV4w+F8zaFs6+RxScDwjpytgPRl0E4bKII8TmB4tubm?=
 =?us-ascii?Q?ysMrDfW6Y9aLWeG/nOR68dj+cRa4HvlYwjeOslEdwG8OtkPe7p26wuvhotK4?=
 =?us-ascii?Q?L8PObvi02d7BomPuUY9S451smRURC6Ejv14UgKh6C3Orl4x/9hES+I5fMjYh?=
 =?us-ascii?Q?yNjwiqaQ0k3U875Odz9HYZheiOnC0+FqGUnufr63MeN2fCtlDilL5kBmx9sR?=
 =?us-ascii?Q?A9E27J32Ck8FqZpQisdpk3+cdyMyzqFQaely1ZzP5YIskMAmyY74uqSSVN9o?=
 =?us-ascii?Q?FodSgDATXtOUFbZSJrsx37XPCMm6I5IgiW+yzdx+sX/BKmoCRGAgVVW7dQFX?=
 =?us-ascii?Q?hP8wiAk5G6He3atY/JhUCw04Sl+n/GPZL9frSvdYgc0J6dHd8h477mnYrJUw?=
 =?us-ascii?Q?oAX7zdzfDM85+kNw8OQbJvB6l9TWkWCeKQlmsA97J7BDxgdjDk6OuSVPU4l8?=
 =?us-ascii?Q?CDXuUo3VrklGZXHJFgtmjf8hcuHhXwSCr3irai4JCYwCKrqPqiy8WwXHZeno?=
 =?us-ascii?Q?kRftBEXAlL8yDeAK2hhrZn2pG/THKYZe53FaHlAKwwrDae/Ku9JLUmF6apLN?=
 =?us-ascii?Q?IS+HTI0XaRXkhsPEHc3R25n9QWMExiYcFRubc6haS6ySrFhGKpNN4eV5rXH1?=
 =?us-ascii?Q?M8EEylEl0MTB10bwGsCi1EcnqdGe3rszwyqayEBjox8LZUmU2hiIkXk6KTHm?=
 =?us-ascii?Q?Zd+gAt0oV+TBzQ/cWdrCTeeP3GqlKbogRgNY5/4CdJMba/H7a3I4HHqJBiVR?=
 =?us-ascii?Q?bDAkNEhRm852jmTG6wl0mzSodcktfl9tfztGwjGN1r+2mWI5XDQkKus0353/?=
 =?us-ascii?Q?ifGC1CQof747uAM687ipUqMpn7Bb080MpJTqFxBRz8lPrwS7H6wzmDJPYXHe?=
 =?us-ascii?Q?Lq0ZUfGHIERxIGS5ixS80gjvwUJ2HYzQo2XZ9nLZLupF7r5HeABydknyuSwx?=
 =?us-ascii?Q?5hXfCgEHdQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: eBnymvYHk+jxHVs87RtYG4k/s+5UPpdZLMgoyyaiCG/dx9arzg6ndDln+fLdhxvrVAZ0l66KbzxiAN4F4EoRdMBf29K90eqqIIv4wBN/+uS2Rzoa+TVpWw7B1TzWXOol3ytj2cCEvuG4aJ0LfExef66Wa9Rhi3Th+1GHIqVDuuVgTjTo0nuwZP/rlWxShy3Qbe+64VSpRTnuWmphKVRwD1a74NM9oCHRsbvOuhBwSJAU8Ye2GiGAJ/b2hZVQJ7pnQXNyl+sSnhKKSUlyoJHhBOd+MPlASlEHPqDBzkX3TYDx1Q5YtTvsju5tSNUAabarTOPqp4EHpJ5VZqhE/9iETQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0da71062-de2d-4c64-ae71-08dea525488f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:28.5003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X61VMHVIuYHjQD/0mAHElRDTXP6TKMzNb5MCVPNFn2ybaTxHBST3bn67u3YzihpHbnaDDbHwyvsnVYrTqvpL+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 962564854D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add documentation for the DP link capabilities interface.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 Documentation/gpu/i915.rst                    | 12 ++++
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 60 +++++++++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 34556b2104aa5..38680f277328d 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -150,6 +150,18 @@ DisplayPort Link Training
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_training.c
    :internal:
 
+DisplayPort Link Capabilities
+-----------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+   :doc: DisplayPort link capabilities
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+   :internal:
+
 High Definition Audio
 ---------------------
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e8d1fd86b327f..01eba9fb0b887 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -18,6 +18,66 @@
 #include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
+/**
+ * DOC: DisplayPort link capabilities
+ *
+ * The Intel DP link caps API tracks the supported and allowed DP link
+ * configurations for a DP encoder and its attached connectors, and
+ * provides helpers to iterate, filter, disable, and constrain them.
+ *
+ * Locking:
+ *   All accesses to this API must be serialized. The only exception
+ *   is intel_dp_link_caps_get_max_limits(), which allow lockless
+ *   lookup. Such lookups may observe an out-of-sync &struct
+ *   intel_dp_link_config tuple, i.e. a rate from one state and a lane
+ *   count from another.
+ *
+ *   The Intel i915/xe drivers ensure the above serialization by holding
+ *   &drm_mode_config.connection_mutex and, while holding the lock,
+ *   flushing pending asynchronous atomic commits. This also allows use
+ *   of the API from the tails of asynchronous atomic commits, which
+ *   cannot hold the lock.
+ *
+ * Configuration indexing and iteration position:
+ *   A configuration index or mask always refers to the same
+ *   configuration or set of configurations across all API calls.
+ *
+ *   In contrast, an iteration position depends on the selected
+ *   configuration ordering (key and direction). Any mapping between
+ *   iteration positions and configuration indices is
+ *   ordering-dependent and not part of the API, and must not be relied
+ *   upon.
+ *
+ *   Configuration indices are not stable across
+ *   intel_dp_link_caps_update() calls. API users must not cache
+ *   configuration indices or masks across such updates.
+ *
+ *   The API also supports iterating configurations in ascending and
+ *   descending BW order, and in ascending and descending rate/lane order.
+ *   The for_each_dp_link_config*() helpers iterate configurations in
+ *   these orders.
+ *
+ * Terminology:
+ *   "Common link capabilities" (or "common caps") refer to the link
+ *   rates and maximum lane count supported by both the source and the
+ *   sink, i.e. the intersection of their respective capabilities.
+ *
+ *   "Supported configurations" are all configurations defined by the
+ *   common link capabilities' link rates and maximum lane count.
+ *
+ *   "Disabled configurations" are supported configurations disabled via
+ *   this API.
+ *
+ *   "Enabled configurations" are supported configurations that are not
+ *   disabled.
+ *
+ *   "Forced configurations" are enabled configurations forced via
+ *   debugfs.
+ *
+ *   "Allowed configurations" are the enabled configurations, or if
+ *   forcing is in effect the forced configurations, constrained by a
+ *   maximum rate and lane count set via the API.
+ */
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
-- 
2.49.1

