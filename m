Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GNA2ObXDS2qbZwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 17:03:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA83712569
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 17:03:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b="nmjtd/A8";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F3B10E5CD;
	Mon,  6 Jul 2026 15:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99FBD10E5CD;
 Mon,  6 Jul 2026 15:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783350194; x=1814886194;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=LYEMIbEO/sTf04eWAim6MdgrzqoFsuc1ywlwJiJkFCw=;
 b=nmjtd/A8+6496DvcJYXpVtd/L/Z95aacKJlm3S/2EGP7dewlNNTFRWGf
 Nbzts8QzobM4y/xcrymH0WF77nODs2A+RE16kf3DIPQQZTCsJa6Z+ecxX
 AOGBaSy76gen80jjfvxtEDpy65hrXgF/UAh6EQRp1IGvUruhRZ/8xcULT
 I0hzoQi7b312HzIwIoSw9KFO+TtXc7EzWUXOmX2RH+U0dqE8hfJHmHksq
 dXihtgDZORAneCddyuSIrgdPZX6GF7eVOXqaVTPSIM/29fX5sMbEnZTQ1
 X8sIe6mJUonETe6ZEE9A7uYgme90SHV0lEZSiRMF+ijt1pkx9hlRtmPde A==;
X-CSE-ConnectionGUID: eVcK1z+6T2y3RELfgQl7Zw==
X-CSE-MsgGUID: bONQDF35TH6myQRBxZX/9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="94591884"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="94591884"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:03:14 -0700
X-CSE-ConnectionGUID: yYcQ4i9/SqeY2qd3IW0h9g==
X-CSE-MsgGUID: WOrDG7XkSlKo0DMYjA2Whw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="291895167"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:03:14 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 08:03:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 08:03:13 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 08:03:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UcEhA7Xhy7tS4PczflHZMM91P6d4wJNwGgFEj2kCif7d9ltr57tG7bkSI9HZRmbeufV+dFnShp+EcJg0d84/t2e6NHnH2RmPGQtnaCRSEdaFxhYgDzUdCjBt4vkIGNqG1U7mWqDR9elve67OmRwzt6NH/DclBLsfiSNjCH+oeYYevDL0CYXMQf9pd7lz+d4zEeZnmRUGOqbGfAFIwYkmAZkoyICT+2tMhq9WI8XJ0WWwBzrRQL73QOKlXEsiZx74HBWg2HQ34+pRi147beqOOYMEzLkdBEvdkRfR+8cRQJCkOPaj6PKMI1RC7izVcUTwmlO+t8w6SP8UNQLQ1op4fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ErX/3R26ZI2hh4NKvs4TsfXDH9Hp1kZeuYvipa8Rcuo=;
 b=LdjK8MVnTrMwoY0/CwLOezhREVF41NxWU68CNphIi6zdLgZT5xiT6TwAWgyDr1EeU+Hc/aUSVojNY5JLdCKK+MhHm329TrM8TYifd5+zU4c/RTVqwD76rfLDXeBmb8Lq+kL+Ld+LkwTWUlJILh08PTTwoEgMwXJ+xATlA3hZ2Jqi2EQ0tDjexR76V+fo8Uy2yqjj5rJSyR9rQ2K/Ll/YkxRiANQRxK/SU7x5+XwO3EQvCBVd8ujaMfUoGVZI8tF+XO2YvyEURlRODHPXyD7INF8ji8EsEH/xDlC9pDZ2cuQImJE4kmjOCmnSQEP+G50QXBIWEvbawrKK2r1Vs+wUCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CYXPR11MB8732.namprd11.prod.outlook.com (2603:10b6:930:d6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 15:03:10 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 15:03:10 +0000
Date: Mon, 6 Jul 2026 18:03:04 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 19/34] drm/i915/dp: Use link caps for eDP DSC config
 selection
Message-ID: <akvDqN60We54W4Ad@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-20-imre.deak@intel.com>
 <c496755d198f317620e2cfaae20851aa3fc206a8.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c496755d198f317620e2cfaae20851aa3fc206a8.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239D5.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::166) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CYXPR11MB8732:EE_
X-MS-Office365-Filtering-Correlation-Id: 32765f61-e23e-4156-61e0-08dedb6fb182
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|3023799007|56012099006|4143699003|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: I0lG9+pjDfwRy02d8P3rg9da2nOQyTyV5DFU2W84P2Qv+VsTFSaOpNdX9UjW8kF4AJn2OHGiWqS/4VCsn+X8w+kBJe15dIW6lHFdO67NCR8mbVRX/xIGlKIBUvyol3/qGms4baK3hMRaXGJwdRvNxbztWRbYqWTM0xd1IvIA2XZ7HDRojolD6/6ZcZ4RaFj9FqAuDZjOSFkSXUC1NKf+ED+LfaF8ZU6vxfEfczYJx55GxGV5kH0U227EXNyCBu/OV0nrBy8vGJg8RLGJYWFGj/R6bDSpne1R19tR3V3S8gdqFESWrooqvV33suggOyzNw/iaQpgebt1NeqghVip0nXnfijM2Vwx0HlwYMnYCNOCTVhpMQNlOSq2m55YIqA5k8g77J6+u8y3xHZn7zkgF4NJjjrxtH5SvF/qomNWbL3qCFP0nxXIVss2SxVGsfcanUgwiWNFTQcQPySwhfcOzeHiAgpNE9ID+LXY4nnadIQOheX6VrQi92mYb33B2RSbGlK1nzwOuVZd4MiqM/ya3IUXU2ZlR9kPoDuJEctKRNpBaDEMCqPTXFSRGH7XNKVDTMJYTRp2r8NQCQ96GNRV+p0tlKlUr56vHICRtNzs6rV8GBSTlj+WzLUUq2k4nOho/bwJNXEWAAVH3Web2dMog/ysCFxsabolv4Wu73J1X6U4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(3023799007)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LndX8WbI/mNFhl++D0q06xdxYyUJw12VNZcbMYg1+zgiU3Lvdcsc4b/Pizeh?=
 =?us-ascii?Q?ve/JxTDku5jea6jgZqWhxNgX2wneIqxVSKywWSc8iqDYI26F6BtmSDzUgqHx?=
 =?us-ascii?Q?AV4B/GJEQgq3QDXkqP1PTWb4rOkW4cCQjvz0VH3AFVG7/dzKboAigyuOdpAg?=
 =?us-ascii?Q?Pt3t7j2yULXTNNPUFkSAltSzbN7k3KE5eWthCLnB0bRxd6/p8gJaQt++GkzE?=
 =?us-ascii?Q?tjB3gf3DSVkYJpxOIVy9Pohsg5/DHb3a8R3zD4zPMgalw4jlVbdj2ltzJU+6?=
 =?us-ascii?Q?drwxu1HbSEBdhxe0r5WIYr6ns5ubPiiolkLOzVS2GbmxIB0za3hhVP76DKd6?=
 =?us-ascii?Q?L5X7rkX/lDGwgkpQmXxb+mgCStoBU+uvd3dpzjmxlF6pcAukj7/7buqaY81P?=
 =?us-ascii?Q?Fk5x6yqacS5kMo+KgbGEn7RFZf8gOJfxOtTgFc2JABq7vLbDoQUsDJKKfApE?=
 =?us-ascii?Q?ZFVT6STTxnM9lGyu4AlT+xrwROxyy7FjiZLyN7i1hWh97VUpgN8VmpU/42rN?=
 =?us-ascii?Q?lqAdYzXmMPDnzd65ef1MrnoB14HCXLh5SJuj3MuZTJrRsC9NiDnedtcQyWWI?=
 =?us-ascii?Q?nxtHcsSViFFdyYQbzPX+0G7v5A0+rsC+Ts9TXHaZKUrAvDJRxVAPXzBLm7mT?=
 =?us-ascii?Q?QWX6FJ6p1pQJ+9jcay9DXYI5195iw7eLicxcwLX7s+NfLP2YcKokwHENdLSS?=
 =?us-ascii?Q?aQ4TjbSfudt2m8vZxMStcwXFdy11K/gDsA0oLUBrCM+JxuQCblogBKSqYcYn?=
 =?us-ascii?Q?C7D9ntRsl58a4mDHXWi7LWhDpei+qYQgXgZ6kWucziFuTJz/eForA2Tlg7+Y?=
 =?us-ascii?Q?k9OzEpwaLW1G4nhw8XPi0Kc+WNGU8FgAO/ReW3Ygj2NnnzC9AgH1ZIXyjVkN?=
 =?us-ascii?Q?NNYWOQHgRHOeTbMScK54IpfuaepYmmBiRHYnV8GR2O+Nsuw1Z77nOeB8oHUk?=
 =?us-ascii?Q?UdR6a4MmFXbpwotv6vxXsdsg3K7VDhDMAIaXAKNXNSLWMUw1BoxGUsWzK3ud?=
 =?us-ascii?Q?qibfvx3dy7htYXpwTIiYIcIMMAQMYVhNWEzg0zzZ5+0MZviGWg7kdcHt9Hy1?=
 =?us-ascii?Q?xaZ5mV5a3STEiK3k+ysZTLY7HnCfrwYJjH/3oX6iA5EYRtxSf6+9XxPd5SP6?=
 =?us-ascii?Q?gL+pIS7H4JfXnjnTUqWgniM/0R5rDO6F87AN7OZwbPwDffmW9fWfIsJ7KEHr?=
 =?us-ascii?Q?+AR6p36ji/2M9pCRqdtSQ0QCGr/eQvI+evIPg5ERy4b+UJRz7PvQjDr5A88L?=
 =?us-ascii?Q?bAeJ9Uhib0ZNCwW9PrJDroIpm4q9o5IIdHvV3T+vBI3c/0bPmCsV36E99S9j?=
 =?us-ascii?Q?AaQKs7I6AHdslH2FOl5HrByl3bNYu5XREhAEfeVnWOtx0ZSUdcpbCfFtbkYS?=
 =?us-ascii?Q?QaElpjlRzaZUPQTP2E8293Zu8NWzf4GH0+dMR61vdUSdPPHafBtvEDx4wkOC?=
 =?us-ascii?Q?vi2eQX4efipjCZasRbZaiEFGpkneI8bOiD4ZK7Z5hcwRi4VdkhTKNX/0PCAu?=
 =?us-ascii?Q?PhE4yy78EM+aCTZKWgr3O/wJ+nXQoNtcoUUS4wWIA5UDHWkspkdY3MJ1TLXx?=
 =?us-ascii?Q?YNVykvuYmvwosKAnC2wimjA4H7UY7H/vvZVzbqJNgeYdtNqzBzLehKnjzddw?=
 =?us-ascii?Q?TdZ2LR9IQFJi7bGOWhqkkX0KPUSOAFDoYGm7yH8Mu/0Ft/ELvivNmJg54Bmt?=
 =?us-ascii?Q?7z/HnvXXVMhWz+LXm9y4F6dw0GENnjnGiylJYQc043nLdl/EsOvK651TNuDh?=
 =?us-ascii?Q?xWumnxDbVA=3D=3D?=
X-Exchange-RoutingPolicyChecked: G4ViE513DaY3KYON7dKhDMOR7Fx4Kf73mp/tjJXHmwXp+jsuXryno0g2Lm1upXbne1xpiJ9foX9HG3tvYgTsK4tUF+aXmwrLS9dMSFbso2+C/OnQGAejn8gklUPtRW3BhVCz7McuYf0F1D1JnLEmPQugzE0iPmoJDKnTjpLYuhpAxE0du89l/4Ck6pDctXpLyHYeWodg8BH4JmwLZ+mxWykGW0abN7DdeyvRV2LV7udCEt5YNmuUiOODGzpCFy1mIf7ID+ARVDzzHeAIvVXJsBoyLqiuUXHu3lMaxQj7cw97BRje82IjhD9lK4Bu832MNpQENHJKSNDEifo3xyLZDA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 32765f61-e23e-4156-61e0-08dedb6fb182
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 15:03:10.0445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: swscX72PI9HvjXvRU0jA1RxR2uVMM/oWBNKo0FB3ozYMXXOKWht8C3kD6k9eptjKpuEcOP9n/M4nTuuidGEsqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8732
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:replyto,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BA83712569

On Mon, Jul 06, 2026 at 01:49:35PM +0300, Luca Coelho wrote:
> On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> > Use the link caps helper to select the maximum eDP link configuration
> > for DSC computation, instead of using the separate max rate and lane
> > count limits, which may not form a valid configuration after individual
> > configs are disabled by fallback.
> > 
> > This is a step towards unifying configuration selection and iteration
> > across connector types and between compute and fallback paths.
> > 
> > The state computation should likely consider all allowed configurations,
> > as noted in the code comment; for now keep the existing eDP DSC behavior
> > of selecting the maximum configuration determined by the eDP connector
> > rate / lane config iteration order.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++---
> >  1 file changed, 14 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index c6920afb50902..79e3334d24332 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2248,7 +2248,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> >  				      int pipe_bpp)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > -	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
> > +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> >  	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
> >  	int bpp_x16;
> >  	int ret;
> > @@ -2260,8 +2260,19 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> >  	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
> >  						   pipe_bpp, max_bpp_x16);
> >  	if (intel_dp_is_edp(intel_dp)) {
> > -		pipe_config->port_clock = limits->max_rate;
> > -		pipe_config->lane_count = limits->max_lane_count;
> > +		struct intel_dp_link_config max_link_config;
> > +
> > +		/*
> > +		 * FIXME: Clarify why eDP does not use the regular SST BW
> > +		 * check and instead always uses the maximum link config,
> > +		 * regardless of intel_dp::use_max_params. Then unify this eDP
> > +		 * path with the regular DP path.
> > +		 */
> 
> Are you planning to clarify this? Will it be part of your current
> refactoring (maybe in later patches)?

This patchset doesn't want to change the behavior, so here the link
configuration with the max rate and lane count is selected as before.
The above comment only serves as a reminder to make the eDP case work as
the SST-DP case, in a follow-up.

> > +		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
> > +			return -EINVAL;
> > +
> > +		pipe_config->port_clock = max_link_config.rate;
> > +		pipe_config->lane_count = max_link_config.lane_count;
> >  
> >  		pipe_config->dsc.compressed_bpp_x16 = max_bpp_x16;
> >  
> 
> Regardless:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
