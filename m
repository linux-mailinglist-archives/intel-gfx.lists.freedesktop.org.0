Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PTuCEwz32msQAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 08:42:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D30DB400F33
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 08:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9B210E10E;
	Wed, 15 Apr 2026 06:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GLNau7sQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8277410E10D;
 Wed, 15 Apr 2026 06:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776235336; x=1807771336;
 h=date:from:to:cc:subject:message-id:in-reply-to: mime-version;
 bh=l/g3f+8AwZu7vPnu+liQkPMgKGbgnSi/j7Q56uvrDRo=;
 b=GLNau7sQTAdWA9AdAXChrjt39hWS6PvxgifsAOL3VlbgR2N9Vh1EfeFb
 BldheCYXJtpgly1u+C50McYZyXsYYiSuhomSsqMu3MOc+VWqrSS5kbIwP
 hGNk64vClK+EHpXlWp/tnOsV8UIGIJlvP+/jD3r3hLp6WhtdhcPpNtr0X
 9mrLFDnttqTQBR91deL+u6vrHKpMqxkEGPAMUh60hJVRZQjtkSIQ5v5Jq
 tMNYGsE/kbLrwCqn4L6S8FtsouAqpuYaN4JjZLKRqZMRtLCPR1cLiGECN
 QMnZZ3aKCAnivWr8GmU/scwwh5ykR2F4rXfel2Y83v7x+ydY+TsUjeIB5 Q==;
X-CSE-ConnectionGUID: 6Az/2/FaQU6BhKemjVPdhg==
X-CSE-MsgGUID: 726DmU2qQpGAUNuE5trwZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76907212"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76907212"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 23:42:15 -0700
X-CSE-ConnectionGUID: AvR5NlXaQ1aPF7bpl8LaTQ==
X-CSE-MsgGUID: t5n+RoMURsyaVcu0E80kVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="229289220"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 23:42:15 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 23:42:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 23:42:14 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 23:42:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SGA75juwufSEVl11u1Ee2feKQfepsCfs6cz4VLb14awqLJlo76N85sU2WPf/KcJy8tDSRpHxm9v3WhMbZIiGzGFaxabUX1m3wbrAn0DdCWsENTLzfLxmxeXcqXVivHY8CGYBQHh80OULtw7+Pav+HPoyBRfQNNMfSMIgOUstMcWCdHHIBF9D+2pzaLjSdI4fS2Epevlxg3WmpPNChrWmvIWmdPMi0wsmoggnM12JGjam6PUL/OaE7f63nKdM0p3OvfLFH/AZH3jfQWFS2hIipPkH886wXBv43+0tb1ENVxxTDfWXkP7i0eSyAKgjVyh2PiMhZJ/2J4T/5GXTqMyxpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5d/0Lxai3WZqLbKGvJe/jVyMekHQyd7Vh/q83/3X3N8=;
 b=XqlnojDrvrzkkZyMCeaLzWSArXbCOB5Hq2vuZ4WK61tv7BrOUAFtv/ierHtE2HHaNVfL84CYjk+6G+F1tu/NAbte7f5UqaSk1e0YMsFLQty6kruL0uifQFkIqQb40gX89Hl6EpkKrVXHTdc1FGlcz/sgner/Q55fa9Jgs733b50Ne+Y0NZAQoilkIQFav09oBPSGZyhX8ecmdN+ujd2K/g1ZFq0M99MsoADMXNa2u1aDT1LX1OU5DQFDnQm2bABeYjKB1vp0cnNd4kkvisjsYRnPpqGSdQ0b443GZRcc7HScXKG5DrT3ltrmaRGI+wH2fytjNvrpwl3lgJUDZsesug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7)
 by SJ0PR11MB5166.namprd11.prod.outlook.com (2603:10b6:a03:2d8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Wed, 15 Apr
 2026 06:42:10 +0000
Received: from PH0PR11MB5832.namprd11.prod.outlook.com
 ([fe80::106e:78dd:4c96:d707]) by PH0PR11MB5832.namprd11.prod.outlook.com
 ([fe80::106e:78dd:4c96:d707%3]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 06:42:10 +0000
Date: Wed, 15 Apr 2026 14:42:04 +0800
From: kernel test robot <oliver.sang@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <oe-lkp@lists.linux.dev>, <lkp@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ltp@lists.linux.it>, Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 <oliver.sang@intel.com>
Subject: Re: [PATCH v1 15/16] drm/i915/bios: search for VBT #57 by default
Message-ID: <202604150702.d409a2b6-lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260331183332.1773886-16-michal.grzelak@intel.com>
X-ClientProxiedBy: TP0P295CA0041.TWNP295.PROD.OUTLOOK.COM (2603:1096:910:4::7)
 To PH0PR11MB5832.namprd11.prod.outlook.com
 (2603:10b6:510:141::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5832:EE_|SJ0PR11MB5166:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bb0c1b5-8086-4676-1fb8-08de9aba1ed7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ZRWnJyxItPBK8uXN+xScjQ3V+5U3gegJ5FXwsyDHHmgZiGlCEA/G44uRbxKj/ZjtWOXVMzP+bMCs+B9eqfgoHSE8VfHys2sMwIJuiR65Mq+o6d3TUPIbs7lqHcIDXEffKsBIETkJksJk+uOWiBkRvmznlzMng0N0gc5nws/g5tE2NVdanJhCXg1lPzA8D1n9P6ZgAZxNmG/cMSda2jHMjt/jXOSyLM74WPlcH/jfdz99YNQmBJiLan+lHNV8gKRMXzamdPZN54hTCkCZ52PR2cF4zqJs4/JRHqz6xyj7ZolqaXZEj52Z3fFPay7ocOteVYY5Cnm4dsEVzJEDjluBl4I6cMv2m8JY79WLqU8fDPznMfabU3KklRGFbojkVp9loJZxiRfflHVDgD8KHbqY6fVur6Bi4wrFIFMgfGbAvRmIDTDEXmo3hJHblnmrghaH5PIl8mYnpC5E8fy8QuP9tztVjZZ50mEpwc40QplsCFBM46HFXAbj9ApAORQSJtQYl9konjc3rk/D2RLeVa+E7Z7Fxfk1rSfi6MwX46DNyzAKChZqiCMnFy4FHO1L1Rt83BfZ2/takxJfDIm27MNt2BDeNdXiqVTKI+wwGhR/VLxdbLnLL7pJSi+oHOJrx5nST6a2TpoJjLIaZDs40xHGOCNWkRTV4WAUq65rfQKmecSy7D9qA1w1LZdLehLvUEGI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5832.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XFulDB0IwnWruKK3jY2uz6LQrpOOL5Y33MR5UPec8KdGd8N2sFMn1Zf32N+N?=
 =?us-ascii?Q?M19E7z+32fxPEsX7DLoqtfSvs8vpp6RLvFOZdPZbCbpD9xXKHZM4CeS+ZFZ6?=
 =?us-ascii?Q?1c8KtoKR6d6gV5ixdoxtQ4oHC0mMQ8iyuAdtIV4Z6p1FUyG52y9MGAb94CDJ?=
 =?us-ascii?Q?SGzeys2Wh86IQbynuCENCfEa8QcAK7fLHOjWIsfa+utOGz0tZV2QW3ls3UXc?=
 =?us-ascii?Q?364pMEmQmDaTcfO1WMXanKFZirilne/PWHrNFebUNuQRUD52w9AyzepM5cR9?=
 =?us-ascii?Q?A/OqNWTPUrs5FOZqeb/G0vtMRw0ojSGHDEy67cDMa3yyXLAaBMCxBaW6teXl?=
 =?us-ascii?Q?f3ajbO9SSpZZElFL9FxDC/Hrnzi8T8HkhSFFdp+82a8RT/AjMo6V1yvrABHm?=
 =?us-ascii?Q?5ppJHSrAyqA1eNeA6E/INJmeoyuw87tzasbIA/3920Asj6nDJQ1apCOfw6Dm?=
 =?us-ascii?Q?9R6/udYekUrUKlmXZk2562Tu1qn2/t+O2bNBQ/x6/IYN3LM3CA8kGvgIixnu?=
 =?us-ascii?Q?chzgN7ZQXmGmlNEaeMECHL8na4pcU2qbPWmJCUelyZZtg1fRFAGSw4bbk9fV?=
 =?us-ascii?Q?jSiPSnfEAzuK0lS7YoBTHrnDZDbbbK2vLjL59TuJxFPGK8y9WcRZBOU/8Dhd?=
 =?us-ascii?Q?5Xb5KjlcbXEitldR1V/5zoviKJg/jC67SC/sLvaQz7p3KXiGg0VDxr28qO+A?=
 =?us-ascii?Q?GpHEPISdcTgo73pDzDBOxcQ8G5fnDPGDjFrRFgtmEoI4OMbQP9oRyTkim8Qd?=
 =?us-ascii?Q?61RElOU8RR4wksJmjSOXdYx1KwnYSqdaSMWmu+Y8cO9elGLVwaVtomuUrd6E?=
 =?us-ascii?Q?6HLtMILl66OBzPOzUpNbKdMqezH5QBbDmMIY/kHvTrx+nD+1ECHFzvtw0B6B?=
 =?us-ascii?Q?bBYJNInfuA1xAfNVoFvkC4mrPi/rBGd6/sUcGBNxFEUd14vChiq5pRKrImcr?=
 =?us-ascii?Q?HgaDY78q1GveMZ1Xb6G7ZSiWS3cHfxUNed8jwKcVxpuIWVl2a1s/6Jd+bbmX?=
 =?us-ascii?Q?CdOvE+wt3Jbj5nJyyzcEWyixf50yoxQRC4tqXnQNor9DfgUlGfjKfLwkNcZw?=
 =?us-ascii?Q?LArNECDW3l62d49QFdgXTXD9uE7wG8Ok1Z1pAoj1Kna1DrWoGbGOY8d2Dqin?=
 =?us-ascii?Q?mWiyaFdTm36JLSdk/0zYvo88eiXTiM5+LyQV0TgsjbVs0k2OwMNbksx9rg6E?=
 =?us-ascii?Q?yRO5Bvo3esDJ82uofAirRGDkIt2sEmW4XoYzDYaSmpHW10J06hNCw1S5vExU?=
 =?us-ascii?Q?py8Omg+mOV2v3UnQT+6587Q8v+hrNGoZRAtwAdoH4uUXr0fO0LCF0K9dA+UE?=
 =?us-ascii?Q?N7gKQaLsfjaz5FKAlyY0/j32X3YtkJhfYz/0qIrBt/M11NW+NgWv5AXW0h5y?=
 =?us-ascii?Q?RNLZ7pbt8o+N19RlfecjP8LncK0RyxggZyQaf9ycfa2HVsSUN6RlXcT5wWDh?=
 =?us-ascii?Q?RrOFL85adupcNtu9lVZRwgfcctQZWk5+NW/MBe1qNNHtcw7/Jic5cFtSg2y0?=
 =?us-ascii?Q?SVviyXIpqJyyAj0TcxvmfCrG6nAvWsClOiLoR3UU3YIRF2FB4BCVqUb6+YOS?=
 =?us-ascii?Q?56RstJ6c0zUM2KQtltWXvk9NamqS3k6L1hJDKmI7Z87kfpe+yN9Hc+fir3Oc?=
 =?us-ascii?Q?whV54/RNIA3emhhtRSWNLVJ7jfeLnpQj3ZSUjJIDFuZZAJ9KqUHaiQfZwPnr?=
 =?us-ascii?Q?qJxDIuD2ZrpOFoLozizJowEHwaG0GoHF9cMTbwH8eh4XKij0maoO1hPT8r6l?=
 =?us-ascii?Q?kQ/kCq9giQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: rcGyQTPATrZPg7V/4TGTmDaizjB8e/+ulVdOEsJhkB2YYgPamAaRNqc8wo8Zk5LnIj8XS6dW8R+NqmROm0yjIOlfKt3wetreW42LaSgoxO3oT2zhxUCUPVQfsMrblGL14UMjiZmbtTHR4pdTegbfmm2ETqSMUTM0G4YPjtQPe/dDP8PuhuctLD0uQpkaTgUm825Pv6hUqehUhSVNmpJu9D3QidLjKuCwuG50C4pfqR0p/udLXLELmV2GijtnownFQoMJj0P6/dGS+ZR+Jowc5BE4eznRZXV4naDvCCn2r2ij1MENAyDwA236PEV87n9H8WHaG3DMXSIsoJVWf5a1CA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bb0c1b5-8086-4676-1fb8-08de9aba1ed7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5832.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 06:42:10.6759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C07mp/M2iNCeRnVHS4kOv1T+yJt79mAhBmcMazyp17ZG3jjFqGHZT5Frk1Y6qjKgN4FpkkWMpR+WkOZra9gtkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5166
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url,gitlab.freedesktop.org:url];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D30DB400F33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Hello,

kernel test robot noticed "BUG:KASAN:slab-out-of-bounds_in_parse_vswing_preemph_snps" on:

commit: 07d1ee54da4966c1457602dc088a8a43b29254cb ("[PATCH v1 15/16] drm/i915/bios: search for VBT #57 by default")
url: https://github.com/intel-lab-lkp/linux/commits/Micha-Grzelak/drm-i915-lt-align-xe3plpd-with-VS-PE-Override-layout/20260401-092928
base: https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link: https://lore.kernel.org/all/20260331183332.1773886-16-michal.grzelak@intel.com/
patch subject: [PATCH v1 15/16] drm/i915/bios: search for VBT #57 by default

in testcase: ltp
version: 
with following parameters:

	test: ima



config: x86_64-rhel-9.4-ltp
compiler: gcc-14
test machine: 22 threads 1 sockets Intel(R) Core(TM) Ultra 9 185H @ 4.5GHz (Meteor Lake) with 32G memory

(please refer to attached dmesg/kmsg for entire log/backtrace)



If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202604150702.d409a2b6-lkp@intel.com


The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20260415/202604150702.d409a2b6-lkp@intel.com


kern  :err   : [   27.966990] [    T399] ==================================================================
kern  :err   : [   27.968126] [    T399] BUG: KASAN: slab-out-of-bounds in parse_vswing_preemph_snps+0x2dd/0x430 [i915]
kern  :err   : [   27.969712] [    T399] Read of size 4 at addr ffff8881eba2c49d by task (udev-worker)/399

kern  :err   : [   27.971135] [    T399] CPU: 4 UID: 0 PID: 399 Comm: (udev-worker) Tainted: G S                  7.0.0-rc4-01496-g07d1ee54da49 #1 PREEMPT(lazy) 
kern  :err   : [   27.971139] [    T399] Tainted: [S]=CPU_OUT_OF_SPEC
kern  :err   : [   27.971140] [    T399] Hardware name: ASUSTeK COMPUTER INC. NUC14RVS-B/NUC14RVSU9, BIOS RVMTL357.0047.2025.0108.1408 01/08/2025
kern  :err   : [   27.971142] [    T399] Call Trace:
kern  :err   : [   27.971144] [    T399]  <TASK>
kern  :err   : [   27.971145] [    T399]  dump_stack_lvl+0x47/0x70
kern  :err   : [   27.971152] [    T399]  print_address_description+0x88/0x320
kern  :err   : [   27.971156] [    T399]  ? parse_vswing_preemph_snps+0x2dd/0x430 [i915]
kern  :err   : [   27.971355] [    T399]  print_report+0x106/0x1f4
kern  :err   : [   27.971357] [    T399]  ? __virt_addr_valid+0xc4/0x230
kern  :err   : [   27.971360] [    T399]  ? parse_vswing_preemph_snps+0x2dd/0x430 [i915]
kern  :err   : [   27.971533] [    T399]  kasan_report+0xb5/0xf0
kern  :err   : [   27.971537] [    T399]  ? parse_vswing_preemph_snps+0x2dd/0x430 [i915]
kern  :err   : [   27.971704] [    T399]  parse_vswing_preemph_snps+0x2dd/0x430 [i915]
kern  :err   : [   27.971868] [    T399]  intel_bios_init+0xcc1/0x14b0 [i915]
kern  :err   : [   27.972042] [    T399]  ? drm_vblank_init+0x147/0x330 [drm]
kern  :err   : [   27.972105] [    T399]  intel_display_driver_probe_noirq+0x8d/0x870 [i915]
kern  :err   : [   27.972295] [    T399]  i915_driver_probe+0x209/0x9f0 [i915]
kern  :err   : [   27.972445] [    T399]  ? __pfx_mutex_lock+0x10/0x10
kern  :err   : [   27.972450] [    T399]  ? mutex_lock+0x91/0xf0
kern  :err   : [   27.972451] [    T399]  ? __pfx_i915_driver_probe+0x10/0x10 [i915]
kern  :err   : [   27.972597] [    T399]  ? drm_privacy_screen_get+0x2bf/0x370 [drm]
kern  :err   : [   27.972628] [    T399]  ? intel_display_driver_probe_defer+0x41/0x70 [i915]
kern  :err   : [   27.972814] [    T399]  ? i915_pci_probe+0x2ab/0x3b0 [i915]
kern  :err   : [   27.972963] [    T399]  ? __pfx_i915_pci_probe+0x10/0x10 [i915]
kern  :err   : [   27.973110] [    T399]  local_pci_probe+0xdb/0x1b0
kern  :err   : [   27.973114] [    T399]  pci_call_probe+0x153/0x4f0
kern  :err   : [   27.973116] [    T399]  ? __pfx_pci_call_probe+0x10/0x10
kern  :err   : [   27.973117] [    T399]  ? __pfx__raw_spin_lock+0x10/0x10
kern  :err   : [   27.973119] [    T399]  ? pci_assign_irq+0x80/0x2f0
kern  :err   : [   27.973121] [    T399]  ? pci_match_device+0x38d/0x6b0
kern  :err   : [   27.973123] [    T399]  ? kernfs_create_link+0x164/0x230
kern  :err   : [   27.973127] [    T399]  pci_device_probe+0x173/0x2f0
kern  :err   : [   27.973128] [    T399]  call_driver_probe+0x62/0x1f0
kern  :err   : [   27.973132] [    T399]  really_probe+0x197/0x770
kern  :err   : [   27.973134] [    T399]  __driver_probe_device+0x18c/0x3b0
kern  :err   : [   27.973137] [    T399]  driver_probe_device+0x4a/0x130
kern  :err   : [   27.973139] [    T399]  __driver_attach+0x18c/0x4f0
kern  :err   : [   27.973141] [    T399]  ? __pfx___driver_attach+0x10/0x10
kern  :err   : [   27.973143] [    T399]  bus_for_each_dev+0xef/0x170
kern  :err   : [   27.973145] [    T399]  ? kasan_unpoison+0x40/0x70
kern  :err   : [   27.973147] [    T399]  ? __pfx_bus_for_each_dev+0x10/0x10
kern  :err   : [   27.973149] [    T399]  ? __kasan_slab_alloc+0x2f/0x70
kern  :err   : [   27.973152] [    T399]  ? klist_add_tail+0x132/0x270
kern  :err   : [   27.973154] [    T399]  bus_add_driver+0x2a7/0x4f0
kern  :err   : [   27.973156] [    T399]  driver_register+0x1a1/0x370
kern  :err   : [   27.973158] [    T399]  i915_init+0x57/0x160 [i915]
kern  :err   : [   27.973307] [    T399]  ? __pfx_i915_init+0x10/0x10 [i915]
kern  :err   : [   27.973453] [    T399]  do_one_initcall+0x8d/0x3f0
kern  :err   : [   27.973455] [    T399]  ? __pfx_do_one_initcall+0x10/0x10
kern  :err   : [   27.973457] [    T399]  ? kasan_unpoison+0x3b/0x70
kern  :err   : [   27.973458] [    T399]  ? kasan_unpoison+0x40/0x70
kern  :err   : [   27.973460] [    T399]  do_init_module+0x281/0x830
kern  :err   : [   27.973463] [    T399]  ? __pfx_do_init_module+0x10/0x10
kern  :err   : [   27.973464] [    T399]  ? kfree+0x195/0x430
kern  :err   : [   27.973467] [    T399]  load_module+0x173d/0x2070
kern  :err   : [   27.973469] [    T399]  ? ima_post_read_file+0x18f/0x230
kern  :err   : [   27.973474] [    T399]  ? __pfx_load_module+0x10/0x10
kern  :err   : [   27.973476] [    T399]  ? security_kernel_post_read_file+0x35/0xf0
kern  :err   : [   27.973479] [    T399]  ? __pfx_kernel_read_file+0x10/0x10
kern  :err   : [   27.973483] [    T399]  ? __pfx_current_time+0x10/0x10
kern  :err   : [   27.973486] [    T399]  ? init_module_from_file+0x157/0x1b0
kern  :err   : [   27.973487] [    T399]  init_module_from_file+0x157/0x1b0
kern  :err   : [   27.973489] [    T399]  ? __pfx_init_module_from_file+0x10/0x10
kern  :err   : [   27.973491] [    T399]  ? touch_atime+0x1bc/0x4f0
kern  :err   : [   27.973493] [    T399]  ? _raw_spin_lock+0x80/0xf0
kern  :err   : [   27.973494] [    T399]  ? __pfx__raw_spin_lock+0x10/0x10
kern  :err   : [   27.973496] [    T399]  ? __pfx_filemap_read+0x10/0x10
kern  :err   : [   27.973498] [    T399]  ? do_sys_openat2+0xeb/0x170
kern  :err   : [   27.973501] [    T399]  idempotent_init_module+0x21c/0x770
kern  :err   : [   27.973503] [    T399]  ? __pfx_idempotent_init_module+0x10/0x10
kern  :err   : [   27.973505] [    T399]  ? fdget+0x54/0x3b0
kern  :err   : [   27.973506] [    T399]  ? security_capable+0x35/0xf0
kern  :err   : [   27.973509] [    T399]  __x64_sys_finit_module+0xca/0x170
kern  :err   : [   27.973511] [    T399]  do_syscall_64+0x108/0x5b0
kern  :err   : [   27.973513] [    T399]  ? vfs_read+0x3be/0x9b0
kern  :err   : [   27.973514] [    T399]  ? vfs_read+0x3be/0x9b0
kern  :err   : [   27.973516] [    T399]  ? __pfx_vfs_read+0x10/0x10
kern  :err   : [   27.973517] [    T399]  ? __pfx__raw_spin_lock+0x10/0x10
kern  :err   : [   27.973519] [    T399]  ? fdget+0x54/0x3b0
kern  :err   : [   27.973520] [    T399]  ? __pfx___seccomp_filter+0x10/0x10
kern  :err   : [   27.973523] [    T399]  ? __x64_sys_pread64+0x18d/0x1f0
kern  :err   : [   27.973525] [    T399]  ? __pfx___x64_sys_pread64+0x10/0x10
kern  :err   : [   27.973526] [    T399]  ? fdget+0x54/0x3b0
kern  :err   : [   27.973528] [    T399]  ? security_capable+0x35/0xf0
kern  :err   : [   27.973530] [    T399]  ? do_syscall_64+0x140/0x5b0
kern  :err   : [   27.973531] [    T399]  ? arch_exit_to_user_mode_prepare+0x9e/0xf0
kern  :err   : [   27.973533] [    T399]  ? do_syscall_64+0x140/0x5b0
kern  :err   : [   27.973534] [    T399]  ? __x64_sys_openat+0x104/0x1f0
kern  :err   : [   27.973536] [    T399]  ? __pfx___x64_sys_openat+0x10/0x10
kern  :err   : [   27.973538] [    T399]  ? do_syscall_64+0x140/0x5b0
kern  :err   : [   27.973540] [    T399]  ? do_syscall_64+0x140/0x5b0
kern  :err   : [   27.973541] [    T399]  ? irqentry_exit+0x76/0x4f0
kern  :err   : [   27.973544] [    T399]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
kern  :err   : [   27.973546] [    T399] RIP: 0033:0x7f3689aa8779
kern  :err   : [   27.973549] [    T399] Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 67 76 0d 00 f7 d8 64 89 01 48
kern  :err   : [   27.973551] [    T399] RSP: 002b:00007ffca3326338 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
kern  :err   : [   27.973555] [    T399] RAX: ffffffffffffffda RBX: 000055c94afdd3e0 RCX: 00007f3689aa8779
kern  :err   : [   27.973556] [    T399] RDX: 0000000000000000 RSI: 00007f36882ae44d RDI: 0000000000000053
kern  :err   : [   27.973557] [    T399] RBP: 0000000000000000 R08: 0000000000000000 R09: 000055c94af65b30
kern  :err   : [   27.973558] [    T399] R10: 0000000000000000 R11: 0000000000000246 R12: 00007f36882ae44d
kern  :err   : [   27.973559] [    T399] R13: 0000000000020000 R14: 000055c94afb65f0 R15: 0000000000000000
kern  :err   : [   27.973561] [    T399]  </TASK>

kern  :err   : [   28.051757] [    T399] Allocated by task 399:
kern  :warn  : [   28.052350] [    T399]  kasan_save_stack+0x1e/0x70
kern  :warn  : [   28.053001] [    T399]  kasan_save_track+0x10/0x30
kern  :warn  : [   28.053646] [    T399]  __kasan_kmalloc+0x8b/0xb0
kern  :warn  : [   28.054278] [    T399]  __kmalloc_noprof+0x1d8/0x5f0
kern  :warn  : [   28.054944] [    T399]  init_bdb_block+0x128/0xc30 [i915]
kern  :warn  : [   28.055915] [    T399]  intel_bios_init+0x4de/0x14b0 [i915]
kern  :warn  : [   28.056854] [    T399]  intel_display_driver_probe_noirq+0x8d/0x870 [i915]
kern  :warn  : [   28.057984] [    T399]  i915_driver_probe+0x209/0x9f0 [i915]
kern  :warn  : [   28.058917] [    T399]  local_pci_probe+0xdb/0x1b0
kern  :warn  : [   28.059565] [    T399]  pci_call_probe+0x153/0x4f0
kern  :warn  : [   28.060210] [    T399]  pci_device_probe+0x173/0x2f0
kern  :warn  : [   28.060878] [    T399]  call_driver_probe+0x62/0x1f0
kern  :warn  : [   28.061547] [    T399]  really_probe+0x197/0x770
kern  :warn  : [   28.062168] [    T399]  __driver_probe_device+0x18c/0x3b0
kern  :warn  : [   28.062894] [    T399]  driver_probe_device+0x4a/0x130
kern  :warn  : [   28.063587] [    T399]  __driver_attach+0x18c/0x4f0
kern  :warn  : [   28.064243] [    T399]  bus_for_each_dev+0xef/0x170
kern  :warn  : [   28.064898] [    T399]  bus_add_driver+0x2a7/0x4f0
kern  :warn  : [   28.065543] [    T399]  driver_register+0x1a1/0x370
kern  :warn  : [   28.066202] [    T399]  i915_init+0x57/0x160 [i915]
kern  :warn  : [   28.067030] [    T399]  do_one_initcall+0x8d/0x3f0
kern  :warn  : [   28.067677] [    T399]  do_init_module+0x281/0x830
kern  :warn  : [   28.068320] [    T399]  load_module+0x173d/0x2070
kern  :warn  : [   28.068951] [    T399]  init_module_from_file+0x157/0x1b0
kern  :warn  : [   28.069678] [    T399]  idempotent_init_module+0x21c/0x770
kern  :warn  : [   28.070417] [    T399]  __x64_sys_finit_module+0xca/0x170
kern  :warn  : [   28.071143] [    T399]  do_syscall_64+0x108/0x5b0
kern  :warn  : [   28.071777] [    T399]  entry_SYSCALL_64_after_hwframe+0x76/0x7e

kern  :err   : [   28.072915] [    T399] The buggy address belongs to the object at ffff8881eba2c000
                                          which belongs to the cache kmalloc-2k of size 2048
kern  :err   : [   28.074832] [    T399] The buggy address is located 0 bytes to the right of
                                          allocated 1181-byte region [ffff8881eba2c000, ffff8881eba2c49d)

kern  :err   : [   28.077135] [    T399] The buggy address belongs to the physical page:
kern  :warn  : [   28.078017] [    T399] page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x1eba28
kern  :warn  : [   28.079226] [    T399] head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
kern  :warn  : [   28.080389] [    T399] flags: 0x17ffffc0000040(head|node=0|zone=2|lastcpupid=0x1fffff)
kern  :warn  : [   28.081460] [    T399] page_type: f5(slab)
kern  :warn  : [   28.082008] [    T399] raw: 0017ffffc0000040 ffff888100042f00 dead000000000100 dead000000000122
kern  :warn  : [   28.083180] [    T399] raw: 0000000000000000 0000000800080008 00000000f5000000 0000000000000000
kern  :warn  : [   28.084355] [    T399] head: 0017ffffc0000040 ffff888100042f00 dead000000000100 dead000000000122
kern  :warn  : [   28.085541] [    T399] head: 0000000000000000 0000000800080008 00000000f5000000 0000000000000000
kern  :warn  : [   28.086725] [    T399] head: 0017ffffc0000003 ffffea0007ae8a01 00000000ffffffff 00000000ffffffff
kern  :warn  : [   28.087909] [    T399] head: ffffffffffffffff 0000000000000000 00000000ffffffff 0000000000000008
kern  :warn  : [   28.089093] [    T399] page dumped because: kasan: bad access detected

kern  :err   : [   28.090297] [    T399] Memory state around the buggy address:
kern  :err   : [   28.091073] [    T399]  ffff8881eba2c380: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
kern  :err   : [   28.092175] [    T399]  ffff8881eba2c400: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
kern  :err   : [   28.093276] [    T399] >ffff8881eba2c480: 00 00 00 05 fc fc fc fc fc fc fc fc fc fc fc fc
kern  :err   : [   28.094376] [    T399]                             ^
kern  :err   : [   28.095041] [    T399]  ffff8881eba2c500: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
kern  :err   : [   28.096145] [    T399]  ffff8881eba2c580: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
kern  :err   : [   28.097247] [    T399] ==================================================================
kern  :warn  : [   28.098668] [    T399] Disabling lock debugging due to kernel taint



-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

