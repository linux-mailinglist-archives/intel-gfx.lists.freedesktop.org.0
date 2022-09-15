Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE52A5B9DCE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 16:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7196A10EB59;
	Thu, 15 Sep 2022 14:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8D310EB59
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 14:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663253699; x=1694789699;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3MEpdnUmqK+M+5XjH3C8lQq4UrTliaQyNToJiSKDS4w=;
 b=KKatn0MfYiCNSQFigVnJm7l4tdkwb+vTv63NNnX1V0ufK9FzrRzP5rjc
 Fb51VHwNy5aSOebm/mvCLR27LjXpRBDCV1JQHa2hYmjiNHnD7lCDqwFj3
 wwjgs3zjufOB4ce90PSO7BKdTRi6DjTUjJwp6ARdQVzt2Az7G/CBl7ynf
 0o+BPWD2CN0OyNPjtfCMUbwEQSX42Km5x7bsrgo+I75/9ibCziGQnZGeD
 N+0nzZNrUxoGgtabOxfkM+0Mhj8S883tMuKyzy23wZRswd7p6pATM2THU
 JQviBijDtNgRkGAxGuc8bzc8iWGwewtYPR9s3SlK65rlNUJaEYFqbI2M0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="362695248"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="362695248"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 07:54:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="612914134"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 15 Sep 2022 07:54:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 07:54:58 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 07:54:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 07:54:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 07:54:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcxFioChPx1Oi3IrzGM4U7UeFX+LhmyE5PFQTW8vT1DNntEPyuaEPwby1Lj3HZ82RtulOIpoOdAMEWbY9BD/rtVDLN6kySVMr5nJGgjLk+lQoBHCGZa1VWAmsoyRUQ3r5RFgZkvMhW9Acvc71RuH/sAS/gLw5SrZt0NQswzFukaSZVob5q/5cv3uSwAgurZrB7dp7dlTrjavSynO93KfiMyU3mpJGitwxwesFw2C433IlC656N8AIiKFOL8RpxtvthOSYsPmcCSPSXe0z+NuCBC09H1f0Ll5/AS1b3TfKZiwdnvv4P2LugJQ0i/klPzFUoMto/0EeCHXttV7bRKtwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PufzDUd51wMbjnMhQgym7IOlMRngXJB8x6A4OU8Tp4=;
 b=ASMQQD2CBdqySQDWihkLjuW5k8oux4pUIFgp1h22bvhwt5WLTtLVJYN8Mr2/8mxmGOpfL3e5RmY1HbhUIxVQQikD+RnDVvUaim2Cdp9Kv29C4GcgxPr1fJIoyXL36Wv4/78HP0sC8A9myV9IjU7iQIpBQzuM2s+riWh1Biztq4T1WevnrZ4KUSN3HwWhRmTHerKXMWnihwzDqbwIQo1TS+9uF/7J2mobPdwewV0Ur6+kKYZ6Nm9MEHYgf26uaYvwMg58jMCG9bc84ZoyHobSzjnXBCId7F1MRjcw+W7KLNWOaPgWD0bt0ZSAa5ZjtTcDyRe5WDgYXp7l3XVRq6lwzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 14:54:55 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Thu, 15 Sep 2022
 14:54:55 +0000
Date: Thu, 15 Sep 2022 10:54:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniel J Blueman <daniel@quora.org>
Message-ID: <YyM8u75CwAamBUG+@intel.com>
References: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
 <YyMyKsy2XdInzarL@intel.com>
 <CAMVG2svdhBp-UU2L=Zofq2qgzapwvYGbXMZxtOTzK0T+2aLMHw@mail.gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAMVG2svdhBp-UU2L=Zofq2qgzapwvYGbXMZxtOTzK0T+2aLMHw@mail.gmail.com>
X-ClientProxiedBy: BYAPR07CA0073.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a601bdb-e676-4d0f-b128-08da972a4088
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6300:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s5OIOUY+dKEmT6RvYkaNkkrt98ySHyu9pm8s9JSSQNkcHucy+zQHq/vC5EPlTrti4IQ4AucWtKE6yRCps2SQjrmbXzsMqUFIvs1X63e8m6Bkwkd5sg0UihxMBSuOu/ytfiN0B//0Lh4pv93dF9CWUHCyyyYMj/3PYO6SCILfQ3bVbcpWB/2NgQo3yG9M7cZTKKIxS9gqJ0ZAn2WvHYEQtRjXBAQwtCZkvNflDXXPVAy5XcgQRG/zTfmYL5zEai894ZtsTP0MWcxJx7c3tqS3x8Rcev+RhRPyAf5/LXmtPLNsn1Xq5O/t9GKAXO1Nr+LJ0ygC09ghC6EdlLtjq4r3/ACuVkT9ZrUfN7t/9wVc596L2dTztkAiloh+SnPSSt8GzKOWxa+8dCbFZvHnc7kJbQk3mwEW74CdKhvposlHWRQoTVdcxV2znilbm/1CPEMqjnGYjzV54qeZQ6x7n3JprAaDfSSF+vYUfn7w2HDzqI3mJ7SG600twG8nHLnDeanakQgfUYZbvIZ+op4LidxEUfQ4VpFXT5qSdLOVCIVkqX1BptnKSZk63BSbgOoivTcRnj9HsxyatvZiSi0CMcCmu0c2JFKvliyI/HnrILT69BGmyGC5OOkAuViO6X2HYBaHA5tivgcoCDuOoFjHHByBitwkejSv08yI7YEkGVq9LeMMfskWf9srTEHMJzMK0OQzmmmDDHILsS1zzC06oMOBXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199015)(6512007)(82960400001)(6486002)(6666004)(86362001)(2616005)(6506007)(478600001)(66946007)(8676002)(44832011)(66556008)(66476007)(4326008)(186003)(26005)(83380400001)(6916009)(38100700002)(2906002)(41300700001)(8936002)(316002)(5660300002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vOzFDRAtnu5YOmJRoCcIj0nex2SUGdcFo602mpui5X67NTBOQ3cQG8HLnZpy?=
 =?us-ascii?Q?ayiSQ5uBob5VKiKnSinvle9vw41899068vbUHKiRT03/p1t7DL/NxQ2Pg4PD?=
 =?us-ascii?Q?1CqQ+KYE64cAElCocydhnSdo0iK9khY8jtxwD4CDBHxdC0zeBrBjDGB/169/?=
 =?us-ascii?Q?h4xrdaiyzyaJsmgFvlpp5i10dNEV988FZMN12BBj12LLQcts08o2XBkstqc8?=
 =?us-ascii?Q?g/M5yOR18zFk6qIWzGoWEHN+QvhATwJ2CGUursSuk/+GqJA8x5Riww1Yxte7?=
 =?us-ascii?Q?nu2b8b8SPKisb6UPV/2cF3qccRIf4XONhDffssC/N9Jh4oytlNKLbcYQdh8x?=
 =?us-ascii?Q?bUpNfiLz8lZYlCMHxW1b8WZi1EocQmKAM58BWz2yIcCL7+LLIZZQEE+JwnOu?=
 =?us-ascii?Q?KHDAWZcGKU4abpjrqQFm3ti1IC6l9QDfouHKE2xhhaOxwIn2eqo/lRC1w4Wd?=
 =?us-ascii?Q?+OodZzIgZ7zl6mWtY7DyE2DUODxHFfKEBAseM5Fg8Nd8rPo3XHXkPpyAna7V?=
 =?us-ascii?Q?rFf6HrhiVxe4RKzRXVyqjOz0OdJ08i+hz1VuoyRTZtPvzMV6PuOwXy/Hi5pI?=
 =?us-ascii?Q?blsxAUtIEffoEXiRhxiJAxqu5kMFWjY0PNgB3Dx3J+D+fHR02d992FU8Vi0M?=
 =?us-ascii?Q?ymsArIlzABL4QUvHVOL92kE5NYgu5oWQieAVipao55KMFIIUqdoLKXWccga5?=
 =?us-ascii?Q?v5Ko4UBtTNQFKExe1xk127GzBjBsiz6UH2pIRSVzIWYWi/Ya4N4VwTz4yorD?=
 =?us-ascii?Q?XOPnwV7fEfL8scuFKPLUNMAbRutTluZiTCRMRZAWUMeyKL7eiijZtSzA3H3V?=
 =?us-ascii?Q?xQiiFkLYIP0q8QpzlNF8MBpc6buKHIsc6Jj/I2v2ejk8WbtHt43EgLsMjZuU?=
 =?us-ascii?Q?Zjvtp7r7aaT4eLYvzlvCXGE97QX7xQk/utjr3zk+17jZa8bAtdM9rBdfFxFL?=
 =?us-ascii?Q?/dqlG3ISXOgruugWHUO7yVwiLocHK6a/EiyXNCxPcekHn6wx8PhqK9PZzdFt?=
 =?us-ascii?Q?ZcM3+TXXJeNLPrpKsUXYNs9OnRaFsQ1ooBfpmNcNneLmivmIY80kwCDmxAsp?=
 =?us-ascii?Q?gQKHgBbzHmlRtdcpDntRuKtooSQRJyUQcl8N0IbKSKUoy7FnUrsEd2nK8VK/?=
 =?us-ascii?Q?EIZVPFzaTyJtKRsql3ZIwxWC6K3CXVtycrOvnV3j1hov7308O0jUJu7qE00U?=
 =?us-ascii?Q?5nLvFpTx2T96fUwdZ5wraSBO98w6DQ/19ou2c6HymAlUYFr6pZrmvSXIYDfR?=
 =?us-ascii?Q?bREu3A3rRrD5aovilcMFbGrua56nj19uLp2nebV+P87v5DEvYKnbNS5F4MAy?=
 =?us-ascii?Q?1urEsbvOStvQFmcLB0WhD0gczpj1gSTDX46g1UTuqgjeZ0oE42lXEQ7LK0je?=
 =?us-ascii?Q?EUDU2Oc1KCJ+mLoBnz81e/vwrKNqR41YPzsUQVXnUhbgBopK8T2uocH7GdQz?=
 =?us-ascii?Q?K949gjt+GvaxBQFwBCieiFs/tsh6gsV9tAEI1UeSG4dZnwlM2VLwY2dspnQs?=
 =?us-ascii?Q?1woLXjT6VO2xwWAeJppTp5BXtn/KrT/zxPUrDk063WCQphR3Cc/FttjmCqN9?=
 =?us-ascii?Q?50u5cPstTuCG5dn76UnPZBsjcV/L+BWKY3tgfQGxj43ZjU9YQdagNcxSzyX9?=
 =?us-ascii?Q?NA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a601bdb-e676-4d0f-b128-08da972a4088
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 14:54:55.8153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U7o4aPDlxYzezkabG4+VySmo/0FumdgTW3vc8Gqdo4+Um7TH8CYdnDpXOeZCtspbv/lImXeBwTpy8nTYgqctuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Intel Arc A370M vs Linux 5.19
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 15, 2022 at 10:40:59PM +0800, Daniel J Blueman wrote:
> On Thu, 15 Sept 2022 at 22:09, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Thu, Sep 15, 2022 at 09:08:08PM +0800, Daniel J Blueman wrote:
> > > Dear Intel et al,
> > >
> > > With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
> > > A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
> > > kernel, we see:
> > >
> > > i915 0000:03:00.0: Your graphics device 5693 is not properly supported
> > > by the driver in this kernel version. To force driver probe anyway,
> > > use i915.force_probe=5693
> > >
> > > Since the GPU is unmanaged, battery life is around 30% of what it
> > > could be. Unsurprisingly, adding i915.force_probe=5693 causes
> > > additional  issues. Given a lack of BIOS option to disable the GPU, is
> > > there any advice for Linux support or at least putting the GPU into
> > > D3? I see only Windows drivers on the official support page [2], and
> > > Linux 6.0-rc5 isn't buildable [3].
> >
> > I believe this is what you are looking for:
> >
> > echo auto | sudo tee /sys/bus/pci/devices/0000\:03\:00.0/power/control
> >
> > In Linux the default is to keep the unmanaged devices in D0.
> > But changing the rpm to auto should transition the device to D3.
> >
> > You can go further and check with the lspci -vv if there are other
> > unmanaged devices in the same pci root tree and also add them to the
> > 'auto' rpm so you can even achieve D3cold in that whole device, what
> > gives you extra power savings.
> >
> > I hope this helps for now.
> 
> Yes, I was also hoping this would work as we see D3hot is supported:
> 
> # echo auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
> # lspci -vvvs 03:00.0
> ...
> Capabilities: [d0] Power Management version 3
>         Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold-)
>         Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
>                 ^^
> 
> However it stays in D0 with PME disabled as we see. "Kernel modules:
> i915" may suggest the i915 driver holds a reference to it, preventing
> the transition.

Oh, yes. I was thinking more on using the command line I sent when
the i915 is not probed. i.e. without using the force probe. your first
scenario.

With the i915 loaded I'd like to see the dmesg and a few of the debugfs
files under: /sys/kernel/debug/dri/0

like: i915_runtime_pm_status, i915_power_domain_info

> 
> Dan
> -- 
> Daniel J Blueman
