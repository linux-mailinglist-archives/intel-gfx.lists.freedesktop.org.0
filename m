Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UG9PCp1LommH1gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Feb 2026 02:57:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 812771BFD29
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Feb 2026 02:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ECC110EC54;
	Sat, 28 Feb 2026 01:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hxIFMokO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A519C10E1E0;
 Sat, 28 Feb 2026 01:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772243862; x=1803779862;
 h=date:from:to:cc:subject:message-id:in-reply-to: mime-version;
 bh=Qklq20dhgyapxrSrX2/hoHBIsYuxyduczfQVZktXAyA=;
 b=hxIFMokOByxHw78EjCghJAtpPWLNLtvZsbyAiG6GJ5cIBn9mz74Fr3m5
 Q4E/D6vSCwV9K5QvXP03YBWlf5pK7oBHcZl6LtnF71EMmrjFXmntFfrT8
 OkRHqw17I5JH5kYE8g8IFU0ElydtpZ3I+g6zFBURpSpyhFqaucB3tsd3n
 BkGBTdgQpnO53sO9go4MZoMJ11+oPl17ydpmN6b7Y+y376vULZC+CqJZS
 yoM7I1btFoF9GoO5HlaIEHCIP9c58X/ghaM1fw6NbK4nUkr0MOKwVIEan
 HvmmzX/4k55/q2mg5mm52pkilmN8omEh2E5ZbrrvJkS9T55jN5HqK1mHp g==;
X-CSE-ConnectionGUID: 9zXkZTUDRr6JJ9E08kduPA==
X-CSE-MsgGUID: xKFTfoOUS++D1o74WngKeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="84039621"
X-IronPort-AV: E=Sophos;i="6.21,315,1763452800"; d="scan'208";a="84039621"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 17:57:39 -0800
X-CSE-ConnectionGUID: KesiMdlZRSih04Nt5iuxeQ==
X-CSE-MsgGUID: wWRvhLSmQJ6PW4heWJA22g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,315,1763452800"; d="scan'208";a="221568684"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 17:57:39 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 17:57:38 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 17:57:38 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 17:57:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ujuPo60f+iZORhiUeujVboQzs8mSAs00x6CNGPWR32kUxU9Gj5g9o8HayFKpDrOLP/DPrHNTjVZnSIPa7JeAR+xcfD85BlsvmzhYFKS32bBcv1i2+LjPOWgytD6J4nbIRPWXwK/Dcmn4qOUYiSjM9x+VIL61j3i1hd2HIUn64QVG9A6cY0umWXcXuDPw3xq1IIuH0W7HXUKZlFipzwwi2lxuJjTwsF1+SrW08a/ndQai85s6NfM+ntiENzQCEycQkCT06q9CWMsYrvnvR3A5/vm4ms3nkesDlARa8Jgz/dM6rP/WzSsnIyfT3LUIRkTaAzma3MaGkTMuYqiBQ8Px2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JsA/nR6x2BcYtYvt/cPZPFpHhrjRw/a1FlCNb8Q7x6k=;
 b=p221Wmu5u2UftuOGq9HNGBhVwe6GbVtMjrCbLWwf04ibwxtrNXOVHm2kugt5lH5wpKQvGY6nKKkQLmV3nJcwIKJBJNfL9bwLgpMmzruIjgfNTq0f1+LAcr+BoPvRymlQXPAn9ghAhEqPWckpOlAJqwFOqZt+erFLNC7CL+r1LwVjjmh6I0560R94abEpWqs9u0fwh0RrrvIm7h1UtxUu3boTnjU6ZinYXxb9sjce5mwMY0+f/zowxoJtQY7yrWlxN/tw1CJ/OuFeBx/jLjwVn/5cNZqquD7XtfynrK4PIEqr5SvVsR5R6YYdyAutqPLm+Y5VmzZ1qdHNQsgXOluIDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 by SJ5PPFC15A51B16.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::851) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Sat, 28 Feb
 2026 01:57:34 +0000
Received: from LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::e4de:b1d:5557:7257]) by LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::e4de:b1d:5557:7257%5]) with mapi id 15.20.9654.014; Sat, 28 Feb 2026
 01:57:34 +0000
Date: Sat, 28 Feb 2026 09:57:25 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <oe-lkp@lists.linux.dev>, <lkp@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <oliver.sang@intel.com>
Subject: Re: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection
Message-ID: <202602280933.d4221030-lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260225131931.60724-25-dev@lankhorst.se>
X-ClientProxiedBy: KL1PR01CA0010.apcprd01.prod.exchangelabs.com
 (2603:1096:820::22) To LV3PR11MB8603.namprd11.prod.outlook.com
 (2603:10b6:408:1b6::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8603:EE_|SJ5PPFC15A51B16:EE_
X-MS-Office365-Filtering-Correlation-Id: b748299a-3819-41a9-2e8f-08de766cbdbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: cSGGi5OY9zin8pP8//PXhNRLetzF7Yyiy8Dv2ZCA4y+4vhgqt+1CUcy27q+iVIb3cRFKOnDD6BDZx4uzQK7ezvU8qIaDAjNG72A9hchrT7+Yk+s61y7xDxswrvBPGQE0a1jD2cRULhrrT0yzqPFFyAfTdhO22zwCO4d+XaKDKdpmja+BEuzE7pbf6zquHEbhirmc47v5tOG2OfCIakRoXGvrt+jmVMKOiDzsrg3Pgw7Y3f9XtjZV1ULmAu/OXJvwaZ4nEWcXi8OIWSRcyytXWAUKUDwdc6cSqOYjSsbZMM4pG6olysm9FeGwaI/tY9ABWLMBXv9i7i6Z8w5qUsn8cAOE1l1B6cDGYSuOPQyuDuFyyAY+/d+0pSQ8NTdcqaq4PHOODuuwCaB5WwbqxC5kbERnww4f4oSu/fvYZu4Ta4oQYqo35zRCmnPTt29NaOjVMAF5yr6iMc9YaPdgGZKzLOX6VoZQKGbF5UsYvdC+s2MKZh4KybikCfh7GOKppwzxhXhAzptlqdYsNk6naJZkd5bCwSdOxofuPboP3GRKJ5nfHhtUB1pzhx9jQ32oJgi66bUBLPjOrgyvvSNtVTTauM6PTyPPOyJNeg/oWr7sL2Imf1FcjUbW81bVMLof7paNAW1jhS6u3Zh1ycRwRPN/v4caIWlBwKhHP41G3R7M+TaFOSz5EbfeAOgm8HPvO7Qr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6SwMQca8vhBE1agl0/xiVU5tEFwQuk+PNh7HsC4IJ2tp20Xhr/ivvChoSn2L?=
 =?us-ascii?Q?4bbkG7Qf9bVyS+vbYlFKo1DnyPn10bX7sU8o3yDzmGxdy5bBX4RSK006IR1x?=
 =?us-ascii?Q?L3RQbNIQBQE+h/3mNwJONyR0ZVmrNv3JhD2kmAWib1alodX+Nuv1JgKcQTAN?=
 =?us-ascii?Q?CsDkjg0ENXHatVsw0zxbcXKa9VIDs37Xgi8ssEq102f4dhiq4qtcyMijttXZ?=
 =?us-ascii?Q?GP8/NnTPc+xvFgcA5JgaPsRHUH0XYw6aLoogtrkJjXVsNtRUDL3TuyYpmE0z?=
 =?us-ascii?Q?T5E02G0rka+g3nWcDv5ta5jxZEMBShcWTVOIsbtfFeiVWSzFGAm31ARHHnm8?=
 =?us-ascii?Q?aMnC+A4m7cl0Y1a9xj1PqhtlE6UGn4Dig7ZKZMXLZ/3nBKb8S3LBD2/zI082?=
 =?us-ascii?Q?56znWfI1im90KyA8bpmefbfnn/4IUJYGldgOq1Rrn9YLuG3XHBhkyuUykLpj?=
 =?us-ascii?Q?QXOvWqI9VzmBw+eFp1MtinpM9c3ZEKZWrWQA8H1Ra+MjQeqCDdNcc7UNNEfQ?=
 =?us-ascii?Q?CbTLzOfqHEBDGqxxiU1Bsg2xIJHoX+ZSuxDa1JQCBd7fBzHEvRkO3ccaH9nD?=
 =?us-ascii?Q?JSQ7qup34TlybWx4oYNyJPH9o6MadC/5vDpbeHUtttiewMTXxEEnaApj283a?=
 =?us-ascii?Q?w/euVl54b7Agtwu2yZVXBg63pWiQRFIl30FkNT52TPmmpcU7Qlj30tFoxBek?=
 =?us-ascii?Q?22tn6hWJn2WZ1LN1UodPW0NInCiNcf2VC1XztJrrc7MoS0HtwR4RYdJ51jGN?=
 =?us-ascii?Q?YgP7QDgxhvlg0LM8gAwzRegX1WPsOcR7bYCoNyglA/T8Uh944xIV6hKwuhSp?=
 =?us-ascii?Q?dbm/zE1Mo+f9rnpZMQchAz9FGsN5Fgwm++KXXP1RwExESdVORMeFYki6Sttc?=
 =?us-ascii?Q?ehSPDm1Iy5cnSHYaEMFuJIc4otjqHFiIjfBzRdK73S+HAPhtOGnHMwcZrCpq?=
 =?us-ascii?Q?xpoBSIbjnJSrjAihWuH1EjZnRh24uoJ4xKwTNnPY0s0C2UXA3ShYbYBqrnJB?=
 =?us-ascii?Q?u9aHFivJvhxpSBsHgW+a1cPCCcspXJKPkAkY4HwN/J527f8a9pQfBMrwU6Dh?=
 =?us-ascii?Q?zvm1Dw65WooPVQs0fgpsi4krASfbzMFsbZ/gjdpZFPmzDYGQhDuP+EiM0frl?=
 =?us-ascii?Q?ow6YSl3vXUuHdodGiofkZnjToFjdufgsiiVm8ovsdrYKttOptcafpHSl/Xvp?=
 =?us-ascii?Q?rdDJPK5BoV8P8hwmI1FnmEkk/MdhLzqZeJUvRdeGoiq6cL7nh+UfGXXwAX6p?=
 =?us-ascii?Q?jIvrLGmpItwHhh48vcW0kC+4gV7K99xjeDXEvkanh7e+0pj2luVLtWMI5Iha?=
 =?us-ascii?Q?q40qu/buC0RSXvUFDvBKGomnlNoiwXHX9TmC1tcqKPddBZmgpGu5FipXgVCu?=
 =?us-ascii?Q?+gQWOKqqi0yr1h9foeVDB9bxE0SepWtEUjm/kEjB0Yv7Ig/kiUGCs+PSGcHI?=
 =?us-ascii?Q?sMfSxmpfsoNhkr7pXVrY3f5kbf5a9VWoKYHruca66zKUYO9AxEGyyE/4vCDE?=
 =?us-ascii?Q?75/mOnFf4T7xrILDLbUog13orbvZlZYzSP+I3WLEc/ytvegHD8k5LXUBuQBg?=
 =?us-ascii?Q?OYCD+gdNJ7wuKsmBHlWEupETdi3EAAFGOXt6dzFkbnDQt9o9skB1MYYmY55J?=
 =?us-ascii?Q?g7uHPrmKFRruGKDQOefps9BJIXrUmoFjFjprmqiByWF09YvkZwmK7hoCiwGw?=
 =?us-ascii?Q?G6OZhk4EVtUdVaBfVqLee5fQpcTIwO6aqfjNHjn833zzuc+BYqguLKzasiAD?=
 =?us-ascii?Q?BJ2VsaUPYg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b748299a-3819-41a9-2e8f-08de766cbdbe
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2026 01:57:34.6775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u7FkpV+iTLUB/uRTjixa9f7Rhgh1g7cWRB5pdVil2HJRbSOtGVIrWuxEr0q/YEnLtl9Ks99Zb7xmxLVXdJ687g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFC15A51B16
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[oliver.sang@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 812771BFD29
X-Rspamd-Action: no action


Hello,


since we cannot understand well the purpose of this patch set, this report is
just FYI what we observed in our tests.

by this commit, a big config diff is introduced comparing to parent [1]

then a boot test which can pass on parent now fails with a high rate.

=========================================================================================
tbox_group/testcase/rootfs/kconfig/compiler/sleep:
  vm-snb/boot/quantal-x86_64-core-20190426.cgz/x86_64-rhel-9.4-rust/clang-20/1

commit:
  822dafa31719f2 ("Revert "drm/i915: Depend on !PREEMPT_RT."")
  7bb9eedbc87d82 ("PREEMPT_RT injection")

822dafa31719f205 7bb9eedbc87d8256eebc7edfd24
---------------- ---------------------------
       fail:runs  %reproduction    fail:runs
           |             |             |
           :100         87%          87:100   dmesg.BUG:kernel_reboot-without-warning_in_test_stage

unfortunately, we cannot find more useful information in dmesg.


below is full report FYI.


kernel test robot noticed "BUG:kernel_reboot-without-warning_in_test_stage" on:

commit: 7bb9eedbc87d8256eebc7edfd240cb0cdf42e667 ("[i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection")
url: https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-vblank_work-Add-methods-to-schedule-vblank_work-in-2-stages/20260226-012447
base: https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link: https://lore.kernel.org/all/20260225131931.60724-25-dev@lankhorst.se/
patch subject: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection

in testcase: boot

config: x86_64-rhel-9.4-rust
compiler: clang-20
test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 32G

(please refer to attached dmesg/kmsg for entire log/backtrace)


If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202602280933.d4221030-lkp@intel.com



LKP: ttyS0: 101:  /lkp/lkp/src/bin/run-lkp /lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml[   27.416092][  T127] INFO: lkp CACHE_DIR is /tmp/cache
[   27.416099][  T127]

[   27.490291][  T255] ata2: found unknown device (class 0)
[   27.493888][  T255] ata2.00: ATAPI: QEMU DVD-ROM, 2.5+, max UDMA/100
[   27.495381][  T127] LKP: stdout: 101:  /lkp/lkp/src/bin/run-lkp /lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml
[   27.495388][  T127]
[   27.510194][   T37] scsi 1:0:0:0: CD-ROM            QEMU     QEMU DVD-ROM     2.5+ PQ: 0 ANSI: 5
[   27.591664][  T127] RESULT_ROOT=/result/boot/1/vm-snb/quantal-x86_64-core-20190426.cgz/x86_64-rhel-9.4-rust/clang-20/7bb9eedbc87d8256eebc7edfd240cb0cdf42e667/0
[   27.591672][  T127]
[   27.613781][  T127] job=/lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml
[   27.613791][  T127]
[   27.660154][  T219] bochs-drm 0000:00:02.0: vgaarb: deactivate vga console
[   27.667222][  T219] Console: switching to colour dummy device 80x25
[   27.669389][  T219] [drm] Found bochs VGA, ID 0xb0c5.
[   27.669392][  T219] [drm] Framebuffer size 16384 kB @ 0xfd000000, mmio @ 0xfebf0000.
[   27.682301][  T127] result_service: raw_upload, RESULT_MNT: /internal-lkp-server/result, RESULT_ROOT: /internal-lkp-server/result/boot/1/vm-snb/quantal-x86_64-core-20190426.cgz/x86_64-rhel-9.4-rust/clang-20/7bb9eedbc87d8256eebc7edfd240cb0cdf42e667/0, TMP_RESULT_ROOT: /tmp/lkp/result
[   27.682309][  T127]
[   27.685840][  T219] [drm] Initialized bochs-drm 1.0.0 for 0000:00:02.0 on minor 0
[   27.747112][  T301] parport_pc 00:03: reported by Plug and Play ACPI
[   27.747359][  T301] parport0: PC-style at 0x378, irq 7 [PCSPP,TRISTATE]
[   27.749822][  T219] fbcon: bochs-drmdrmfb (fb0) is primary device
[   27.766802][  T127] run-job /lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml
[   27.766807][  T127]
[   27.853871][  T219] Console: switching to colour frame buffer device 160x50
[   27.867424][  T127] /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml&job_state=running -O /dev/null
[   27.867435][  T127]
[   27.897905][  T219] bochs-drm 0000:00:02.0: [drm] fb0: bochs-drmdrmfb frame buffer device
[   27.989445][    T1] init: failsafe main process (349) killed by TERM signal
[   28.051819][  T380] ppdev: user-space parallel port driver
[   28.093899][  T376] sr 1:0:0:0: [sr0] scsi3-mmc drive: 4x/4x cd/rw xa/form2 tray
[   28.093909][  T376] cdrom: Uniform CD-ROM driver Revision: 3.20
[   28.107727][  T376] sr 1:0:0:0: Attached scsi CD-ROM sr0
[   28.357355][    T1] init: networking main process (446) terminated with status 1
[   28.769126][  T127] target ucode:
[   28.769138][  T127]
[   28.804304][  T127] check_nr_cpu
[   28.804312][  T127]
[   28.812567][  T127] CPU(s):                2
[   28.812573][  T127]
[   28.814711][  T127] On-line CPU(s) list:   0,1
[   28.814715][  T127]
[   28.816753][  T127] Thread(s) per core:    1
[   28.816758][  T127]
[   28.818021][  T127] Core(s) per socket:    2
[   28.818026][  T127]
[   28.819871][  T127] Socket(s):             1
[   28.819876][  T127]
[   28.820808][  T127] NUMA node(s):          1
[   28.820812][  T127]
[   28.821855][  T127] NUMA node0 CPU(s):     0,1
[   28.821859][  T127]
[   29.964375][  T127] sleep started
[   29.964382][  T127]
[   31.014164][  T127] /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml&job_state=post_run -O /dev/null
[   31.014174][  T127]
[   32.999598][  T127] kill 490 vmstat -n 1
[   32.999606][  T127]
[   33.010867][  T127] kill 487 cat /proc/kmsg
[   33.010876][  T127]
[   33.029622][  T127] kill 510 /bin/sh /lkp/lkp/src/programs/watchdog/monitor
[   33.029629][  T127]
[   33.034143][  T127] wait for background processes: 504
[   33.034150][  T127]
[   33.034420][  T127] monitor
[   33.034422][  T127]
[   37.395968][  T127] /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml&loadavg=0.89%200.25%200.08%202/122%20635&start_time=1772215785&end_time=1772215786&version=/lkp/lkp/.src-20260227-121815:db3bc08cea0e:bc832e21160e-dirty& -O /dev/null
[   37.395986][  T127]
[   38.230850][  T127] /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml&job_state=finished -O /dev/null
[   38.230880][  T127]
LKP: ttyS0: 101: LKP: tbox cant kexec and rebooting forcely
[   39.153116][  T127] LKP: stdout: 101: LKP: tbox cant kexec and rebooting forcely
[   39.153123][  T127]
[   39.231552][  T127] /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-wtmp?tbox_name=vm-snb&tbox_state=rebooting_cant_kexec&job_file=/lkp/jobs/scheduled/vm-meta-207/boot-1-quantal-x86_64-core-20190426.cgz-7bb9eedbc87d-20260227-2306906-1p6guj1-96.yaml -O /dev/null
[   39.231562][  T127]
BUG: kernel reboot-without-warning in test stage



The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20260228/202602280933.d4221030-lkp@intel.com


[1]
--- /pkg/linux/x86_64-rhel-9.4-rust/clang-20/822dafa31719f20589ae143ae18bfaa881f7785d/.config   2026-02-27 17:10:20.025441468 +0800
+++ /pkg/linux/x86_64-rhel-9.4-rust/clang-20/7bb9eedbc87d8256eebc7edfd240cb0cdf42e667/.config   2026-02-27 16:36:20.788050773 +0800
@@ -139,6 +139,8 @@ CONFIG_PREEMPT_BUILD=y
 CONFIG_ARCH_HAS_PREEMPT_LAZY=y
 # CONFIG_PREEMPT is not set
 CONFIG_PREEMPT_LAZY=y
+CONFIG_PREEMPT_RT=y
+# CONFIG_PREEMPT_RT_NEEDS_BH_LOCK is not set
 CONFIG_PREEMPT_COUNT=y
 CONFIG_PREEMPTION=y
 CONFIG_PREEMPT_DYNAMIC=y
@@ -177,8 +179,11 @@ CONFIG_TASKS_RUDE_RCU=y
 CONFIG_TASKS_TRACE_RCU=y
 CONFIG_RCU_STALL_COMMON=y
 CONFIG_RCU_NEED_SEGCBLIST=y
+CONFIG_RCU_BOOST=y
+CONFIG_RCU_BOOST_DELAY=500
 CONFIG_RCU_NOCB_CPU=y
 # CONFIG_RCU_NOCB_CPU_DEFAULT_ALL is not set
+CONFIG_RCU_NOCB_CPU_CB_BOOST=y
 # CONFIG_RCU_LAZY is not set
 # end of RCU Subsystem

@@ -203,8 +208,6 @@ CONFIG_CC_IMPLICIT_FALLTHROUGH="-Wimplic
 CONFIG_GCC10_NO_ARRAY_BOUNDS=y
 CONFIG_GCC_NO_STRINGOP_OVERFLOW=y
 CONFIG_ARCH_SUPPORTS_INT128=y
-CONFIG_NUMA_BALANCING=y
-CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
 CONFIG_SLAB_OBJ_EXT=y
 CONFIG_CGROUPS=y
 CONFIG_PAGE_COUNTER=y
@@ -933,14 +936,12 @@ CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PU
 CONFIG_HAVE_ARCH_HUGE_VMAP=y
 CONFIG_HAVE_ARCH_HUGE_VMALLOC=y
 CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
-CONFIG_ARCH_WANT_PMD_MKWRITE=y
 CONFIG_HAVE_ARCH_SOFT_DIRTY=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_MODULES_USE_ELF_RELA=y
 CONFIG_ARCH_HAS_EXECMEM_ROX=y
 CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
 CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK=y
-CONFIG_SOFTIRQ_ON_OWN_STACK=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
 CONFIG_HAVE_EXIT_THREAD=y
@@ -1101,7 +1102,6 @@ CONFIG_LOCK_SPIN_ON_OWNER=y
 CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
 CONFIG_QUEUED_SPINLOCKS=y
 CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
-CONFIG_QUEUED_RWLOCKS=y
 CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=y
 CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
 CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
@@ -1191,12 +1191,11 @@ CONFIG_SPLIT_PMD_PTLOCKS=y
 CONFIG_BALLOON=y
 CONFIG_BALLOON_MIGRATION=y
 CONFIG_COMPACTION=y
-CONFIG_COMPACT_UNEVICTABLE_DEFAULT=1
+CONFIG_COMPACT_UNEVICTABLE_DEFAULT=0
 CONFIG_PAGE_REPORTING=y
 CONFIG_MIGRATION=y
 CONFIG_DEVICE_MIGRATION=y
 CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
-CONFIG_ARCH_ENABLE_THP_MIGRATION=y
 CONFIG_CONTIG_ALLOC=y
 CONFIG_PCP_BATCH_SCALE_MAX=5
 CONFIG_PHYS_ADDR_T_64BIT=y
@@ -1208,30 +1207,10 @@ CONFIG_MEMORY_FAILURE=y
 CONFIG_HWPOISON_INJECT=m
 CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
 CONFIG_ARCH_WANTS_THP_SWAP=y
-# CONFIG_PERSISTENT_HUGE_ZERO_FOLIO is not set
-CONFIG_MM_ID=y
-CONFIG_TRANSPARENT_HUGEPAGE=y
-CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
-# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_NEVER is not set
-CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_NEVER=y
-# CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_ALWAYS is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_WITHIN_SIZE is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_ADVISE is not set
-CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_NEVER=y
-# CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_ALWAYS is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_WITHIN_SIZE is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_ADVISE is not set
-CONFIG_THP_SWAP=y
-# CONFIG_READ_ONLY_THP_FOR_FS is not set
-# CONFIG_NO_PAGE_MAPCOUNT is not set
 CONFIG_PAGE_MAPCOUNT=y
 CONFIG_PGTABLE_HAS_HUGE_LEAVES=y
 CONFIG_HAVE_GIGANTIC_FOLIOS=y
 CONFIG_ASYNC_KERNEL_PGTABLE_FREE=y
-CONFIG_ARCH_SUPPORTS_HUGE_PFNMAP=y
-CONFIG_ARCH_SUPPORTS_PMD_PFNMAP=y
-CONFIG_ARCH_SUPPORTS_PUD_PFNMAP=y
 CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
 CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
 CONFIG_USE_PERCPU_NUMA_NODE_ID=y
@@ -1537,7 +1516,6 @@ CONFIG_NF_FLOW_TABLE_INET=m
 CONFIG_NF_FLOW_TABLE=m
 CONFIG_NF_FLOW_TABLE_PROCFS=y
 CONFIG_NETFILTER_XTABLES=y
-# CONFIG_NETFILTER_XTABLES_LEGACY is not set

 #
 # Xtables combined modules
@@ -2859,7 +2837,6 @@ CONFIG_DM_INTEGRITY=m
 # CONFIG_DM_ZONED is not set
 CONFIG_DM_AUDIT=y
 # CONFIG_DM_VDO is not set
-# CONFIG_DM_PCACHE is not set
 CONFIG_TARGET_CORE=m
 CONFIG_TCM_IBLOCK=m
 CONFIG_TCM_FILEIO=m
@@ -5344,6 +5321,7 @@ CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT=800
 CONFIG_DRM_I915_STOP_TIMEOUT=100
 CONFIG_DRM_I915_TIMESLICE_DURATION=1
 CONFIG_DRM_MGAG200=m
+# CONFIG_DRM_MGAG200_DISABLE_WRITECOMBINE is not set
 CONFIG_DRM_NOUVEAU=m
 CONFIG_NOUVEAU_DEBUG=5
 CONFIG_NOUVEAU_DEBUG_DEFAULT=3
@@ -6939,7 +6917,6 @@ CONFIG_LEDS_TRIGGER_DISK=y
 # CONFIG_LEDS_TRIGGER_MTD is not set
 CONFIG_LEDS_TRIGGER_HEARTBEAT=m
 CONFIG_LEDS_TRIGGER_BACKLIGHT=m
-# CONFIG_LEDS_TRIGGER_CPU is not set
 # CONFIG_LEDS_TRIGGER_ACTIVITY is not set
 CONFIG_LEDS_TRIGGER_GPIO=m
 CONFIG_LEDS_TRIGGER_DEFAULT_ON=m
@@ -8387,12 +8364,8 @@ CONFIG_RAMDAX=m
 CONFIG_NVDIMM_KEYS=y
 # CONFIG_NVDIMM_SECURITY_TEST is not set
 CONFIG_DAX=y
-CONFIG_DEV_DAX=m
-CONFIG_DEV_DAX_PMEM=m
 CONFIG_DEV_DAX_HMEM=m
-CONFIG_DEV_DAX_CXL=m
 CONFIG_DEV_DAX_HMEM_DEVICES=y
-CONFIG_DEV_DAX_KMEM=m
 CONFIG_NVMEM=y
 CONFIG_NVMEM_SYSFS=y
 # CONFIG_NVMEM_LAYOUTS is not set
@@ -8476,7 +8449,6 @@ CONFIG_GFS2_FS_LOCKING_DLM=y
 # CONFIG_F2FS_FS is not set
 # CONFIG_ZONEFS_FS is not set
 CONFIG_FS_DAX=y
-CONFIG_FS_DAX_PMD=y
 CONFIG_FS_POSIX_ACL=y
 CONFIG_EXPORTFS=y
 CONFIG_EXPORTFS_BLOCK_OPS=y
@@ -9490,7 +9462,6 @@ CONFIG_HAVE_ARCH_KFENCE=y
 # CONFIG_KFENCE is not set
 CONFIG_HAVE_ARCH_KMSAN=y
 CONFIG_HAVE_KMSAN_COMPILER=y
-# CONFIG_KMSAN is not set
 # end of Memory Debugging

 CONFIG_DEBUG_SHIRQ=y
@@ -9516,7 +9487,6 @@ CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y
 CONFIG_DETECT_HUNG_TASK=y
 CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=480
 CONFIG_BOOTPARAM_HUNG_TASK_PANIC=0
-CONFIG_DETECT_HUNG_TASK_BLOCKER=y
 CONFIG_WQ_WATCHDOG=y
 CONFIG_BOOTPARAM_WQ_STALL_PANIC=0
 # CONFIG_WQ_CPU_INTENSIVE_REPORT is not set
@@ -9541,9 +9511,7 @@ CONFIG_LOCK_DEBUGGING_SUPPORT=y
 # CONFIG_LOCK_STAT is not set
 # CONFIG_DEBUG_RT_MUTEXES is not set
 # CONFIG_DEBUG_SPINLOCK is not set
-# CONFIG_DEBUG_MUTEXES is not set
 # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
-# CONFIG_DEBUG_RWSEMS is not set
 # CONFIG_DEBUG_LOCK_ALLOC is not set
 CONFIG_DEBUG_ATOMIC_SLEEP=y
 # CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
@@ -9882,7 +9850,6 @@ CONFIG_SIPHASH_KUNIT_TEST=m
 # CONFIG_TEST_MEMCAT_P is not set
 # CONFIG_TEST_OBJAGG is not set
 # CONFIG_TEST_MEMINIT is not set
-CONFIG_TEST_HMM=m
 # CONFIG_TEST_FREE_PAGES is not set
 # CONFIG_TEST_FPU is not set
 # CONFIG_TEST_CLOCKSOURCE_WATCHDOG is not set


-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

