Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BDUbCcHsL2qLJAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:14:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1478686116
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:14:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=bZYt+pJw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87CDC10E3A7;
	Mon, 15 Jun 2026 12:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DE510E3A7;
 Mon, 15 Jun 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781525693; x=1813061693;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=xbIdqo5mJ7OszC6M4MRQ2OemwgR4tJaY0cwk2kgdkvI=;
 b=bZYt+pJwJnLMn3SD0iN2LKe1imgBj04Eft/GMsbmDQu2+DlEqjR4gDEt
 +FaNcFZc+p3bLeSN97PiiS+2k8gxawKkpPqWIE6ZIdjpdwEaSEjK/CQYQ
 80NQjxtfDXDkkfjvRro6lGw/uH7nBzbSe66oi+SW6JO2H535+m0KHi3X3
 fRrhKd5Ui/8jWD1G0p9hkplWymHE3E1DY9Fx/F4HKJFp0QFnrNLCUz5zV
 Ya79U0Tx7uooxDAeoObGBiyW/wbZ8O5CXWDjWdO3VzzpThU1xJ8iGM6U/
 XpMXP8QHZk549ueO6q26+09xtNnMg2sMK9kqxTaklfl7gkgRcVx1Je08l A==;
X-CSE-ConnectionGUID: wiIcLk5ZQvOrcv2m5OCeLw==
X-CSE-MsgGUID: ivfQBJ/nQfSsPT886HO4Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82300923"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82300923"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:14:53 -0700
X-CSE-ConnectionGUID: C47kFv8PSyOkzx/STviMWg==
X-CSE-MsgGUID: wDR95b7cRUOO1Et4qopguA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:14:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 05:14:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 05:14:52 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 05:14:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jsCGIA3KrGxkN3NLI/8Vh6nQoSk8q9MD5uP3lCO7YH6JLiaw4JcDuabsHQ8482ttcqbNhOgpg7R1Qc4eMWUBu2hxJYdsFSPNOticVpKrIJ2iDAT0xUx5AIfPrCmV36yaRUFVXV7rht6U9vJu3Hm0XT0M0DRdH5GcUr27eELqQ1DVa2MUqG1QgcG53ZXWw1MEKOZMhMF9kcnWjjjswuGsnOfos284PZPIy9FHv+laU/UCHghdQ2+1F+DueFbKZZoLWW4fUdn3G+3SS1RL2FMswRsdx5f8YzKyFCXtB9PsOVhWkInViLI6lOZ0hY9d4Ab6a+nOz2TKrhRKH67zTL3JWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HapBv4ksm7f0wm/L/Spgl8hQ6MBvX6vOtoKQMCM6ivE=;
 b=lgA9NPpO229Gleiyfoan2vxs1vjIYhmG9bej60+mOBDn20ZsyZK1h/9e5Ja1OZYkwbKjp49igVxhBoTWeEcf+VGK8mlOLGb92+NwRvjGdOeoYcp0hwcslQKdWRqc7DOPiQhYFxUOcMBPu4cUkcad5tRF1lDxqQ3IZnfM2JUHo86V6GRnF5AYwAa6Vidcd8cR/BfRTPRxxX0qIqYijvgiUSqtW6dqJIJhgxI31oamdh4an2yWj/2mow4cdvOi+H5f/KMCTEU6OQunBfmwnrDkNaYs8qqFoGQeZ3umyols/g9miS9uUUnGAe1hKvVxpmDumjryC3Dv7R47Lpsz5y8VGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH3PR11MB8154.namprd11.prod.outlook.com (2603:10b6:610:15f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 12:14:46 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 12:14:46 +0000
Date: Mon, 15 Jun 2026 15:14:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/mtl+: Enable PPS before PLL
Message-ID: <ai_ssD6afI-qCrfs@ideak-desk.lan>
References: <20260612172617.3427027-1-imre.deak@intel.com>
 <178136432278.76225.6000200219288755826@6beec6c84f66>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <178136432278.76225.6000200219288755826@6beec6c84f66>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6FA.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::25a) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH3PR11MB8154:EE_
X-MS-Office365-Filtering-Correlation-Id: 344ca95b-e892-4db9-8086-08decad7b040
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|18002099003|22082099003|11063799006|5023799004|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: pO16EQXJOH2EkxyYQQHpmkXbbIvDjr1Rak1ry5C7LdSd9pNJsszeEbcuqaNR5PLddor/+qThTm2sb+ua33yUMqBiZ1hNfcuDvag6ntObRr3r/TC4LX0V7nhPEsL3eeYJAbm4895SjEU7TDsXHH0vR/aR4tAl6/izB1N27RaH94qQ7ww7Hd0zXts0cfj6Si6JcqdhUht+ZctnHklXik0Mp5aYV1N7qvCVrcgyQzlXztDwLMzggpFprFV4IRW3y+6yc6DKQ8PLNfKq264AeD5nPPXGHerCcAym+0LtsZ9VhbTcVWZHvcYqGFgAXhtMgkmt+YqFzk+JNEY3EbLxjtAIR1T4sK29jdV0TcUWA4mesgDoLmnqVX/FoyS9G4wTB/hypBbJ+I/dkmK4EAH8tEjyJ55cxuQY0i3SR16nwldHVmjC1mHLZPH7m/FFWZb496wlv7zXBw49csieaYZnB4Vov2kYkn5bSOwssGu7KC+OGaT6qy7kl9A5RV6+mY6IX2Wb+HKcLY74Iqd1jaXsfJ2s7NDcU3C3qxXftAyPElybUtDMfw0gc/8eo+pUgD+b2kELizyxGcRMmsJGkd7V77IXHxkc5hbOUz6lMirNdnyBagDPaYL+t1bXlb9krY1v7fIops0mYCffJTnxgHj+t9kuew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(18002099003)(22082099003)(11063799006)(5023799004)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hUMKZh6tvjOS5zau0Ht0+D0StT1v85zuY7v7pcZrkBuD+JwM1zR5JvCLfHMh?=
 =?us-ascii?Q?3ucrM96655KC1DItxFfOIjaS8tBkACxwNkwRF1gvi7sEDKDpXG2/c7TrouvE?=
 =?us-ascii?Q?eTCGUvbHhl6dKQJeWvHixG1V3BtbMN4AYCnpn3IvRvR/IC9F/E4WzdKUqEvU?=
 =?us-ascii?Q?wLHCPLhMYofPwgCjvNS8lRHVj3X1cbbjh8KZcN7/BG4DA/Up9PoeGfUJabPB?=
 =?us-ascii?Q?j0u72MfHVsTqY850KZMWUnTTBw2V9QXzDjV5bsc5HzYo4LputJjky2Fqmf2Z?=
 =?us-ascii?Q?kxPzmSHm5QUmMJq55/Ukc1eFqOxJotMFE9xtxmNfGTLQTH0cafZl9D2rFBol?=
 =?us-ascii?Q?vWZxfky9y1KqdwutmZizyiavrtfPE03HxKoJjhbBPfcAHjGzkKTE1h2kos1/?=
 =?us-ascii?Q?Af/M9Ubve9aVgBTJ1uQQjqMjcX+9yQEgRPR/EGrmVXs2GzAJpD16zAaL6ZnN?=
 =?us-ascii?Q?A80kTwzJuQaA9HFpUqMiq/Z+Aj4F7x9CI0bFZd9GqrLV0mnarkvOdoyUdBa9?=
 =?us-ascii?Q?LVRljX+ly77giz374C14rZvvO4wR0fnV+Xlw8dv3BshWlfDrbK19LZD0zT6e?=
 =?us-ascii?Q?cUR51F69aVgFLEY9tmTDyoS/8aGHEXqFnqg+YuqHp/4Et103pyVnlknpS2aH?=
 =?us-ascii?Q?TMJHsMMV5VVkbVd31uzsMhzSPojG+BeVpLKBQWht3KwI5tOaFrOG7BL8LByD?=
 =?us-ascii?Q?yXmD3CEXyB27b5pNnzveLJLIhjzqrluEotU97DVJhKL0rHiDw1r3ong23lsn?=
 =?us-ascii?Q?HH0cDvzGwsgIzQ/WYSo9ds/0nBBmgwDYHv86GbNBc9QP8IrtxcgPHNAmVCh5?=
 =?us-ascii?Q?8XECBvar7q+LVNpKqdehq74Ns/uo1oveqfsPVME3X7QjGpiBWYYTNBzPTa0H?=
 =?us-ascii?Q?NFShVsHgy8ODMJPJdjraVwhqcUqjmnD+zxt62ErTGkuiYRQCjiu+C371JGVo?=
 =?us-ascii?Q?wdq/F8TjVkLCoDPJqmoMYpuyuvGHVYGLKprvut9Gd/bvKqJrnK6S0ZqlVhj9?=
 =?us-ascii?Q?tAJ285muYL+dGBXPxs9CiZPtlaYGz5dte5JJSiiWFb3ZgSdgttOZndS3YpzW?=
 =?us-ascii?Q?TpstptTSlO8Vrk6coR95QqaOAKApcSCmVcyDgcp8zWJnbMZ/X1UJ6HQWDfhb?=
 =?us-ascii?Q?gd37LoMNyrHD2ZIAnSep/cOJVr2HBnKehFIYQO1cabdqKqJia1tsaPSv1fML?=
 =?us-ascii?Q?4fSHlJgVpVS4AjrvczZjgmYPHLALh5mFAfNlmqK6pmqILvunnzJMOKcJNFwA?=
 =?us-ascii?Q?E0Wagmn0R+YW3r6DjryEctD2zfD7NVbji2Y+70D+RnS5yuL522UxDpb+oQ/2?=
 =?us-ascii?Q?tnDvWJZhWEEPBS7jR2vL1oN3EXqrvLwhYaFY9dle6HpmvWTRIqtGbQwrkSCf?=
 =?us-ascii?Q?t/pz7ayZTpfLDiuQM8HvsEpqQ4uaKHUAyqCO7RbPOMszMHH17cks4ybwwFNk?=
 =?us-ascii?Q?TuZGWp1NB15DX0IKRfE/qiI8Zs0LSaUxcFtWJqQkwklcLoD7QW12v50lveoZ?=
 =?us-ascii?Q?2kQDa4lNRc8pxJnj/zv45oQxDrPmYf9DHVnl7dsND91vg9WUBJ2OdKsMaHMA?=
 =?us-ascii?Q?b3uXFMEDMIhgB6jMt6xkMKhtoJAgHqqTbpu+3CLFcihkdfyrHhYCdfxlhjse?=
 =?us-ascii?Q?iTJjTpTCl+or0Us3qUMbNBj18bUSRXOyvaH6rZeuTBV7pQYqZiQIzz+FVkRR?=
 =?us-ascii?Q?njZ2avh3u3AeUFfh3uoJ3tILf9i8WSB/2inv7EjgcrOvr6Q6Jkwz+9NkdB7J?=
 =?us-ascii?Q?ecVZkxsjQw=3D=3D?=
X-Exchange-RoutingPolicyChecked: BqWDaUzZx2JY2ZRUv4GWKF+NfRJWXyGWpyA6AwdtJBIWROn8N0J7SsCU+i84ypz/Sxlf19sNLX0bxcSEMPLlSwSwAc1PiJNc9S2ME78IwaARLI8mhx0EfQ3IaA362GwkTDirEvew2G/nMOWCa6Cd4KnBWjzvWsVubTg2t8SRCIkUgFJ8xDZPlRlSx7WbxNTmA3HGasLrSAHInDoEoL3fR/Q0SKn4TrvxnUeVTJWA7ezJYP92THbuCgymcf2mLIiTr+RrcNw97v4xTgO/LvezyO9KWrntLg3kS9cgF3AjedrE5QGaNW2bI4bd6T8iz/RlJaH/vBEYEsk2Pqu/ps23RQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 344ca95b-e892-4db9-8086-08decad7b040
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 12:14:46.0289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fEnFPD6Tb2Z2ApVrij2BHUQDTRcGHYC1LTW9qjga+0QZnvML8HpCmgETW6FUGFK35eCnCQhw3LzEiuqkTtQtZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8154
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [10.49 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	ALIAS_RESOLVED(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1478686116
X-Spam: Yes

On Sat, Jun 13, 2026 at 03:25:22PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl+: Enable PPS before PLL
> URL   : https://patchwork.freedesktop.org/series/168455/
> State : failure

Thanks for the review, patch is pushed to drm-intel-next.

The failure is unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18670_full -> Patchwork_168455v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_168455v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_168455v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_168455v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_async_flips@crc-atomic:
>     - shard-tglu:         [PASS][1] -> [FAIL][2] +4 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-tglu-2/igt@kms_async_flips@crc-atomic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-6/igt@kms_async_flips@crc-atomic.html

The DISPLAY_VER 14+ change doesn't affect the above host, so the failure
is unrelated.

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_18670_full and Patchwork_168455v1_full:
> 
> ### New IGT tests (11) ###
> 
>   * igt@dmabuf_sync_file@export-basic:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@dmabuf_sync_file@export-before-signal:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@dmabuf_sync_file@export-multiwait:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@dmabuf_sync_file@export-wait-after-attach:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@dmabuf_sync_file@import-basic:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@dmabuf_sync_file@import-multiple-read-only:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@dmabuf_sync_file@import-multiple-read-write:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@i915_module_load@load:
>     - Statuses : 175 pass(s)
>     - Exec time: [1.12, 4.11] s
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.78] s
> 
>   * igt@kms_async_flips@crc@pipe-d-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.87] s
> 
>   * igt@kms_async_flips@test-time-stamp@pipe-d-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.78] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_168455v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#6230])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@api_intel_bb@crc32.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#3281]) +8 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#3555] / [i915#9323])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#13008])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#7697])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#6335])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][9] ([i915#13356]) +1 other test incomplete
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk11/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] +57 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#4812])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#4525])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#6334]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-active:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3281])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@gem_exec_reloc@basic-write-wc-active.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-rkl:          [PASS][16] -> [INCOMPLETE][17] ([i915#13356]) +2 other tests incomplete
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][18] ([i915#13356])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#4613] / [i915#7582])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][20] ([i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk2/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4613]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#4613]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#3282]) +2 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk11:        NOTRUN -> [WARN][25] ([i915#2658])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk11/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#8411]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4077])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#3297])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3297]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#3297]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#2527] / [i915#2856]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#2527] / [i915#2856])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#2527]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu:         NOTRUN -> [ABORT][34] ([i915#15342]) +1 other test abort
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:
>     - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#15479]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#8399])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#8399])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#4387])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-dg2:          [PASS][39] -> [ABORT][40] ([i915#15131])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-10/igt@i915_suspend@basic-s3-without-i915.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-10/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][41] ([i915#16182] / [i915#4817]) +1 other test incomplete
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk9/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          [PASS][42] -> [INCOMPLETE][43] ([i915#4817])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [PASS][44] -> [ABORT][45] ([i915#15140])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-2/igt@i915_suspend@sysfs-reader.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-1/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#12454] / [i915#12712])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:
>     - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#14888]) +1 other test fail
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#9531])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#5286]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>     - shard-mtlp:         [PASS][51] -> [INCOMPLETE][52] ([i915#16365]) +2 other tests incomplete
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#5286]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#5286]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3638]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#3828])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4538] / [i915#5190])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][58] +109 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#12313])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#6095]) +151 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#6095]) +24 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#6095]) +24 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#6095]) +11 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#10307] / [i915#6095]) +77 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#6095]) +23 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#14098] / [i915#6095]) +15 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#15865]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#15865])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#15865]) +3 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#3555])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#13049])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3555])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#13049]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][78] ([i915#13566]) +3 other tests fail
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-rkl:          [PASS][79] -> [INCOMPLETE][80] ([i915#12358] / [i915#14152])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@kms_cursor_crc@cursor-suspend.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][81] ([i915#12358] / [i915#14152])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#4103]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][83] ([i915#15804])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#13691])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3555] / [i915#3804])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3804])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#13749])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#13749])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#13748])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-bigjoiner:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#16361])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-ultrajoiner:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#16361]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp-ultrajoiner.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#16361]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#2065])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#16081])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#658])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop:
>     - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#9934])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#9934]) +7 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#15643])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#15643])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#15643]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#15991] / [i915#5354])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#5439])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-glk:          [PASS][105] -> [SKIP][106] +21 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk9/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#15989]) +11 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][108] +48 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:
>     - shard-rkl:          [PASS][109] -> [SKIP][110] ([i915#15989]) +18 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#15989]) +9 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#15102]) +20 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#15102] / [i915#3023]) +12 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#1825]) +8 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][115] +50 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15102]) +17 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [PASS][117] -> [SKIP][118] ([i915#15989]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-shrfb-msflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#15991])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#15989]) +10 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-glk11:        NOTRUN -> [SKIP][121] +146 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk11/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-fullscreen:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#15102]) +25 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#16012] / [i915#3555] / [i915#8228])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#16012]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1-xrgb2101010.html
> 
>   * igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-4-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#16011]) +7 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-17/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-4-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#16012]) +3 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-13/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [PASS][127] -> [SKIP][128] ([i915#16011] / [i915#3555] / [i915#8228])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-10/igt@kms_hdr@static-swap.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#16011]) +5 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [PASS][130] -> [SKIP][131] ([i915#16011] / [i915#3555] / [i915#8228])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_hdr@static-toggle.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-glk10:        NOTRUN -> [SKIP][132] +238 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk10/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f.html
> 
>   * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#16011]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-5/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f.html
> 
>   * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#16011]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#15459])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#15458])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#15638] / [i915#15722])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#15709]) +2 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#15709])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#16386]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#16386]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#15709]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
> 
>   * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#16112])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][145] ([i915#13026]) +1 other test incomplete
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk11/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#14259])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#15329]) +6 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#15329]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#15329] / [i915#3555])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#15329]) +4 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#12343])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#15948])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#15073]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [PASS][154] -> [SKIP][155] ([i915#15073])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [PASS][156] -> [SKIP][157] ([i915#15073])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][158] -> [SKIP][159] ([i915#15073])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-idle:
>     - shard-dg2:          [PASS][160] -> [INCOMPLETE][161] ([i915#14419])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-10/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-rkl:          [PASS][162] -> [INCOMPLETE][163] ([i915#14419])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@kms_pm_rpm@system-suspend-modeset.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#6524])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#11520]) +2 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#11520]) +3 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][167] ([i915#11520]) +5 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][168] ([i915#11520])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk9/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
>     - shard-glk11:        NOTRUN -> [SKIP][169] ([i915#11520]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk11/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#11520]) +4 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr@fbc-pr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#9732]) +9 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_psr@fbc-pr-suspend.html
> 
>   * igt@kms_psr@pr-sprite-plane-move:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#9732]) +9 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_psr@pr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr-cursor-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_psr@psr-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-sprite-render:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#1072] / [i915#9732])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_psr@psr2-sprite-render.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#5289])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#8623])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][177] ([i915#12276]) +1 other test incomplete
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk2/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#3555])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#3555]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-1/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#3555] / [i915#9906])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-tglu-8/igt@kms_vrr@negative-basic.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3708])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][182] ([i915#13356]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-rkl:          [INCOMPLETE][184] ([i915#13356]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-7/igt@gem_workarounds@suspend-resume-fd.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][186] ([i915#7984]) -> [PASS][187]
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-mtlp-2/igt@i915_power@sanity.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-mtlp-5/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [ABORT][188] ([i915#15131]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [ABORT][190] ([i915#15140]) -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-rkl:          [FAIL][192] ([i915#15662]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-5/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-glk:          [SKIP][194] -> [PASS][195] +9 other tests pass
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-glk1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-blt.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt:
>     - shard-rkl:          [SKIP][196] ([i915#15989]) -> [PASS][197] +9 other tests pass
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-rkl:          [SKIP][198] ([i915#16012] / [i915#3555] / [i915#8228]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_hdr@bpc-switch.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f:
>     - shard-rkl:          [SKIP][200] ([i915#16012]) -> [PASS][201] +1 other test pass
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][202] ([i915#15073]) -> [PASS][203] +1 other test pass
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][204] ([i915#15073]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          [SKIP][206] ([i915#15073]) -> [PASS][207] +1 other test pass
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][208] ([i915#12276]) -> [PASS][209] +1 other test pass
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][210] ([i915#14544] / [i915#8411]) -> [SKIP][211] ([i915#8411]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-rkl:          [SKIP][212] ([i915#14544] / [i915#15678]) -> [SKIP][213] ([i915#15678])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@drm_buddy@drm_buddy.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][214] ([i915#9323]) -> [SKIP][215] ([i915#14544] / [i915#9323]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_ccs@suspend-resume.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][216] ([i915#7697]) -> [SKIP][217] ([i915#14544] / [i915#7697])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          [SKIP][218] ([i915#14544] / [i915#6335]) -> [SKIP][219] ([i915#6335])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][220] ([i915#280]) -> [SKIP][221] ([i915#14544] / [i915#280])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@gem_ctx_sseu@mmap-args.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          [SKIP][222] ([i915#14544] / [i915#4525]) -> [SKIP][223] ([i915#4525]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_exec_balancer@parallel.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          [SKIP][224] ([i915#4525]) -> [SKIP][225] ([i915#14544] / [i915#4525])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          [SKIP][226] ([i915#14544] / [i915#6344]) -> [SKIP][227] ([i915#6344])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-active:
>     - shard-rkl:          [SKIP][228] ([i915#14544] / [i915#3281]) -> [SKIP][229] ([i915#3281]) +3 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read-active.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-read-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][230] ([i915#3281]) -> [SKIP][231] ([i915#14544] / [i915#3281]) +4 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][232] ([i915#7276]) -> [SKIP][233] ([i915#14544] / [i915#7276])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          [SKIP][234] ([i915#14544] / [i915#2190]) -> [SKIP][235] ([i915#2190])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_huc_copy@huc-copy.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][236] ([i915#14544] / [i915#4613]) -> [SKIP][237] ([i915#4613]) +1 other test skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][238] ([i915#4613]) -> [SKIP][239] ([i915#14544] / [i915#4613]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-rkl:          [SKIP][240] ([i915#14544] / [i915#3282]) -> [SKIP][241] ([i915#3282]) +4 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_readwrite@read-bad-handle:
>     - shard-rkl:          [SKIP][242] ([i915#3282]) -> [SKIP][243] ([i915#14544] / [i915#3282])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_readwrite@read-bad-handle.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          [SKIP][244] ([i915#3297] / [i915#3323]) -> [SKIP][245] ([i915#14544] / [i915#3297] / [i915#3323])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_userptr_blits@dmabuf-sync.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-rkl:          [SKIP][246] ([i915#3297]) -> [SKIP][247] ([i915#14544] / [i915#3297])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gem_userptr_blits@readonly-pwrite-unsync.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-rkl:          [SKIP][248] ([i915#2527]) -> [SKIP][249] ([i915#14544] / [i915#2527])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@gen9_exec_parse@allowed-all.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          [SKIP][250] ([i915#14544] / [i915#2527]) -> [SKIP][251] ([i915#2527]) +2 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][252] ([i915#14544] / [i915#8399]) -> [SKIP][253] ([i915#8399])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-rkl:          [SKIP][254] ([i915#16080] / [i915#16166]) -> [SKIP][255] ([i915#14544] / [i915#16080] / [i915#16166])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][256] ([i915#14498] / [i915#14544]) -> [SKIP][257] ([i915#14498])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          [SKIP][258] ([i915#14544] / [i915#6245]) -> [SKIP][259] ([i915#6245])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@i915_query@hwconfig_table.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][260] ([i915#14544] / [i915#5723]) -> [SKIP][261] ([i915#5723])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][262] ([i915#7707]) -> [SKIP][263] ([i915#14544] / [i915#7707])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@intel_hwmon@hwmon-read.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][264] ([i915#14544] / [i915#5286]) -> [SKIP][265] ([i915#5286]) +5 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-rkl:          [SKIP][266] ([i915#5286]) -> [SKIP][267] ([i915#14544] / [i915#5286])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][268] ([i915#3638]) -> [SKIP][269] ([i915#14544] / [i915#3638])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_big_fb@linear-16bpp-rotate-270.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][270] ([i915#14544] / [i915#3638]) -> [SKIP][271] ([i915#3638])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#6095]) -> [SKIP][273] ([i915#6095]) +26 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][274] ([i915#6095]) -> [SKIP][275] ([i915#14544] / [i915#6095]) +7 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][276] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][277] ([i915#14098] / [i915#6095]) +27 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][278] ([i915#14098] / [i915#6095]) -> [SKIP][279] ([i915#14098] / [i915#14544] / [i915#6095]) +7 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-rkl:          [SKIP][280] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][281] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-rkl:          [SKIP][282] ([i915#11151] / [i915#7828]) -> [SKIP][283] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][284] ([i915#14544] / [i915#15330]) -> [SKIP][285] ([i915#15330])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][287] ([i915#15330] / [i915#3116])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-rkl:          [SKIP][288] ([i915#15330]) -> [SKIP][289] ([i915#14544] / [i915#15330])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][290] ([i915#3555]) -> [SKIP][291] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-rkl:          [SKIP][292] ([i915#14544] / [i915#3555]) -> [SKIP][293] ([i915#3555]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][294] -> [SKIP][295] ([i915#14544]) +47 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][296] ([i915#14544] / [i915#4103]) -> [SKIP][297] ([i915#4103])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][298] ([i915#9723]) -> [SKIP][299] ([i915#14544] / [i915#9723])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          [SKIP][300] ([i915#13707] / [i915#14544]) -> [SKIP][301] ([i915#13707])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#16361]) -> [SKIP][303] ([i915#16361]) +3 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc-ultrajoiner:
>     - shard-rkl:          [SKIP][304] ([i915#16361]) -> [SKIP][305] ([i915#14544] / [i915#16361])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-ultrajoiner.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-ultrajoiner.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#9337]) -> [SKIP][307] ([i915#9337])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-rkl:          [SKIP][308] ([i915#9934]) -> [SKIP][309] ([i915#14544] / [i915#9934]) +4 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_flip@2x-absolute-wf_vblank.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-dg1:          [SKIP][310] ([i915#4423] / [i915#9934]) -> [SKIP][311] ([i915#9934])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#9934]) -> [SKIP][313] ([i915#9934])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][314] ([i915#14544] / [i915#15643]) -> [SKIP][315] ([i915#15643]) +2 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][316] ([i915#15643]) -> [SKIP][317] ([i915#14544] / [i915#15643]) +1 other test skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][318] ([i915#15990] / [i915#4423] / [i915#8708]) -> [SKIP][319] ([i915#15990] / [i915#8708])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#1825]) -> [SKIP][321] ([i915#1825]) +6 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
>     - shard-rkl:          [SKIP][322] ([i915#14544] / [i915#5439]) -> [SKIP][323] ([i915#5439])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-rkl:          [SKIP][324] ([i915#15102] / [i915#3023]) -> [SKIP][325] ([i915#14544] / [i915#15102] / [i915#3023]) +7 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][327] ([i915#15102] / [i915#3023]) +10 other tests skip
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][328] ([i915#10433] / [i915#15102]) -> [SKIP][329] ([i915#15102]) +1 other test skip
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][330] ([i915#14544] / [i915#15102]) -> [SKIP][331] ([i915#15102]) +19 other tests skip
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-suspend:
>     - shard-dg2:          [ABORT][332] ([i915#15132]) -> [SKIP][333] ([i915#15989])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-suspend.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][334] ([i915#1825]) -> [SKIP][335] ([i915#14544] / [i915#1825])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][336] ([i915#15102]) -> [SKIP][337] ([i915#10433] / [i915#15102])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render:
>     - shard-dg1:          [SKIP][338] ([i915#15102]) -> [SKIP][339] ([i915#15102] / [i915#4423])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg1-15/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:
>     - shard-rkl:          [SKIP][340] ([i915#15102]) -> [SKIP][341] ([i915#14544] / [i915#15102]) +12 other tests skip
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][342] ([i915#14544]) -> [SKIP][343] +61 other tests skip
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          [SKIP][344] ([i915#14544] / [i915#14712]) -> [SKIP][345] ([i915#14712])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-rkl:          [SKIP][346] ([i915#15709]) -> [SKIP][347] ([i915#14544] / [i915#15709]) +2 other tests skip
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
>     - shard-rkl:          [SKIP][348] ([i915#14544] / [i915#15709]) -> [SKIP][349] ([i915#15709])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#15948]) -> [SKIP][351] ([i915#15948])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][352] ([i915#9340]) -> [SKIP][353] ([i915#3828])
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@package-g7:
>     - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#15403]) -> [SKIP][355] ([i915#15403])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_pm_rpm@package-g7.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-4/igt@kms_pm_rpm@package-g7.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          [SKIP][356] ([i915#6524]) -> [SKIP][357] ([i915#14544] / [i915#6524])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_prime@basic-modeset-hybrid.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-rkl:          [SKIP][358] ([i915#11520] / [i915#14544]) -> [SKIP][359] ([i915#11520]) +4 other tests skip
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][360] ([i915#11520]) -> [SKIP][361] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#9683]) -> [SKIP][363] ([i915#9683])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          [SKIP][364] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][365] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          [SKIP][366] ([i915#1072] / [i915#9732]) -> [SKIP][367] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          [SKIP][368] ([i915#15949]) -> [SKIP][369] ([i915#14544] / [i915#15949])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#5289]) -> [SKIP][371] ([i915#5289])
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          [SKIP][372] ([i915#15867] / [i915#5190]) -> [SKIP][373] ([i915#12755] / [i915#15867] / [i915#5190])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>     - shard-rkl:          [SKIP][374] ([i915#5289]) -> [SKIP][375] ([i915#14544] / [i915#5289]) +1 other test skip
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#9906]) -> [SKIP][377] ([i915#9906])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][378] ([i915#15243] / [i915#3555]) -> [SKIP][379] ([i915#14544] / [i915#15243] / [i915#3555])
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-8/igt@kms_vrr@flip-dpms.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          [SKIP][380] ([i915#9906]) -> [SKIP][381] ([i915#14544] / [i915#9906])
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-vrr.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][382] ([i915#2434]) -> [SKIP][383] ([i915#14544] / [i915#2434])
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@perf@mi-rpc.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@perf@mi-rpc.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#2435]) -> [SKIP][385] ([i915#2435])
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          [SKIP][386] ([i915#3291] / [i915#3708]) -> [SKIP][387] ([i915#14544] / [i915#3291] / [i915#3708])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@prime_vgem@basic-read.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#3708]) -> [SKIP][389] ([i915#3708]) +1 other test skip
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-7/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          [SKIP][390] ([i915#9917]) -> [SKIP][391] ([i915#14544] / [i915#9917])
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18670/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-off.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15662]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662
>   [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
>   [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
>   [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
>   [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
>   [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
>   [i915#15949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949
>   [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
>   [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
>   [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
>   [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
>   [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
>   [i915#16080]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16080
>   [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
>   [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
>   [i915#16166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16166
>   [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
>   [i915#16361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361
>   [i915#16365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16365
>   [i915#16386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18670 -> Patchwork_168455v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18670: 536f4e1338749a805ec4a7b82b1444dae2c6fe4d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8961: 8961
>   Patchwork_168455v1: 536f4e1338749a805ec4a7b82b1444dae2c6fe4d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168455v1/index.html
