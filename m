Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6A560D00
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 01:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1371F10F11D;
	Wed, 29 Jun 2022 23:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C5F10F11D
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 23:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656544313; x=1688080313;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TEk0rR9AhQQzdpusMp+VMmRMT8CEiw2B+IPRaSbUT9w=;
 b=ZG5wcXAp+utgzBqO27INrKKHpK0ESVJsEWtlMt50PT0PKXs8Qi5ndo3I
 nBj+cS0x/96Q498/CoZsgoWQiwq6jlSrdz72BkM8nPX8ZXZNjiEhRM5Zk
 M/OlSagkbdIpueVabnrDtUYn/PCFs0uAh8LDmT9TIYDpUaiXDeChK5La7
 dJYMZBbmZ0Q1OEiNdlV+EjJyrgX9tnyV53QXegi+o2lWysCN9Olsy5uPn
 dadbgc5VeUMZ9HMflrrNvW1eUO79nfzYEb8auWtCdppzZhX8WOp98ZyQE
 GjjxZaU2Wj5xCBs0PzSFLSOXYSNUJgEUuzcMBSyffwJS8G8jxlK3IXo4K A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="261986517"
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="261986517"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 16:11:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="595445566"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 29 Jun 2022 16:11:52 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 16:11:52 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 16:11:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 16:11:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 16:11:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+b8zddiVoKURWJiSBbEloQ59smAnUDo5ZSi59qyw9K5G1JmQJHf7wdoobEcg+9C/Aua4CU3Fq/cK81uUYImy6Ur4+lrQ7OplPdL+2o1E9H9tBJFTCjtXxDr/lTvy+AecBh8E9BJT7pdbSej+5UnO9nKBiskzX9SDCoeUXjwwCnUrldiCpB0afn3143ih+9CqCU1V19cA+MX3VJj0SKX+fHSMqNgHkEvjUDJkbl8OPDg7QAOU9cbaen2fH7QAllhuxhxQeIKOkbJZRnB6zEFxEw6NGakGZogXRVzJ/3Z25nf4b43IQKNOUZo2ixBlNvorTKg3yz2oAKTeXG7uFmVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eOp7elZ6si/Brl59NCK6K1IuCtI8E7FaZ1pfgibRvQk=;
 b=cjVTeNdgQ0YFwEvWoNZLMfelwcyCyjXi7oL/PfelyscuDCxOZ2AqUElW6VyrqzQOWjEwKsoX9dzeRgUc0xi4wsQnv8HeZnbvS1D1/pjdOCl/F9xR9wEgHoE56UHOC+1Uztb6ozbIxS/icH9OmTukB57YgcRMzaavYexvIbD65zrafaToW5UDROEJa3NTrbFTMpod8WqTrU9hZY96Kdw9LRyWiX4N4qdgQQoNibpRz8ytWHFxrdDCK73qmTFDsP2vjsIZyL7E3w/mOSUefXUz7ov4yh2ZVqVCp2ll+/8rdEWiWLIoaE0B0eNkiMXorsgT3JbuyEsQ4SZMnlY49nH/Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MWHPR1101MB2317.namprd11.prod.outlook.com (2603:10b6:301:5b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.17; Wed, 29 Jun
 2022 23:11:48 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fc50:22fd:6bdb:5769]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fc50:22fd:6bdb:5769%7]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 23:11:48 +0000
Date: Wed, 29 Jun 2022 16:11:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220629231146.7jlpwjy6blachazy@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220627125928.177845-1-lionel.g.landwerlin@intel.com>
 <YrzPKae38BnFCDcU@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <YrzPKae38BnFCDcU@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: CO2PR07CA0065.namprd07.prod.outlook.com (2603:10b6:100::33)
 To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dbff8c08-9019-4f9e-b255-08da5a24be29
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2317:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UVijBzAbKdLF1J6wX+o0xL3QEx8GErgt41ZcUyFff1FRMyXwYugUQeVmAlQUa9D0y/cDjrJIqeU9PTMrrO9Hhx3A5fML6C+oZBvFUBDB/Eywa5J1git3nl8CkGEshf30nvwtpUrbNjeHUu5UnRn16E1urkRtBB0AtWHP0G7JPXiZ+uL+PnoEgnfnUu6Em/8F9fiScXFOMFtyzsDNdgR4zp1olC/inWEaoHSLsARhebXY1WscUDuPVWn4SjzBu7T4SGmQhL+5MU/XqaOoto4iT3AVfLgs+TcrdxvDagVCiuKwHh2ZrGQEPDm9rQ6e3KMe9sUJOh2uKygwMmCxeoWoLyMkVZd2ZNDLBUMNdVQW99DvJZiLIIQBenh/Qfc+4sWMOiCjqbOCrvIpk7NczE15Xa1+sx9T3KQ1Zm3HDVdDNBC50ER0FX9UApxXKUVeA0ntpqewBobYiyjKrvKorefwR+xPiHBQupe2qMoF9l+ltaUxOJHD5n6Qh2mA1oyzrv5IsI1LD6TkvSynR04V7MW5DUqsSB4rdhxxwn6RWJ9JMB+wxniijoObEHnXzKdlLDVEFq3mRWr2q4KLN81FHKrErF9Y341NtIcE0oGmih6P0P8+X0ZQzHG/ciaMxaCOliLDRV3AzjDJDn2vSOUrSBeaS0Dmk+6JubZtXchvEVjZt6xcm6V/yXGKzDHD3FlUAqAYouze2X40E+GDgAkZoQeJMGxPfUBft/qUdihFg2DDQ/E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(396003)(39860400002)(136003)(376002)(346002)(38100700002)(86362001)(41300700001)(6512007)(9686003)(83380400001)(1076003)(82960400001)(186003)(6506007)(26005)(8936002)(6636002)(33716001)(6486002)(66476007)(66556008)(316002)(4326008)(8676002)(66946007)(478600001)(2906002)(5660300002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?crcDZJeK8FMdl2DYa5yHS23CRRf/4MDbmkZfZfHfe1ugp6FcwWdh1EY+PG6F?=
 =?us-ascii?Q?XhW6CmIIGo8+SUw0fuc/9ix/hsSOiZrL4XzhfSx9npBo/Cj3tr6+Vu5poAc2?=
 =?us-ascii?Q?HzwO5COoNKb4ICOgPLoNF1fhr1txUhh+5oLqNQzCdAFFp8DvEreJmfdBXOSQ?=
 =?us-ascii?Q?RH7ikZ8MTzQv1hWpc1BAGjOAfpKbMqZWeM+DjqXPdqWOS5UC68A11qXoMvXw?=
 =?us-ascii?Q?uAy30S3W2mjsKJCdbHF6X/y2jvC1uRGC37d46+0bbxrUtUYVBN7ly8TjoP/+?=
 =?us-ascii?Q?+hfJOMfeNwPiZRN9Edjw8U7pglEILMidyC4JukOAKNZroveObCFUGM88yqa8?=
 =?us-ascii?Q?y5cKAm3YonsZuvmDDEVPcsmOFNPnVECiDHdXL/cFRykjkGxw0DAmWPMvxiln?=
 =?us-ascii?Q?FarNcUZdaGpVl/so6TK3tKKMQaa7CE03e1I090Sw+KIVPSIxFR+YdIk8V+qn?=
 =?us-ascii?Q?6HsB0Cno3V+Wp3jcZNi6Hzp60cEQbjGDJOIDo+KrvKM57Swy8tjjN3RFvjsq?=
 =?us-ascii?Q?GC7y6H7rMgZPxpNQxOxp1e9hLkQ5C4faCXre7e9jL2JY76OGrsNuACZW9F8y?=
 =?us-ascii?Q?dQ3Ay1Clf66I4FauQ+HN/9X01GLCW8HY7js9zczDS3iUI8CPBZpEaxKGSOtz?=
 =?us-ascii?Q?LRN9VhS3BA9CkeiSdydHyYok2gOdhZe6thaTnrTr1ysmTfdK5xIDpJ8hSBMv?=
 =?us-ascii?Q?t2y7XFgf7G84AthKMv3K4b8A9lO4RGAig2iD7rW0nSFK3pC6boh/bIPyLlTC?=
 =?us-ascii?Q?t0MExQTIidI2Ny2vH31G95b1KBM/vIUlg9zD21AsmtsYBcZvt/qlPmr4tRFn?=
 =?us-ascii?Q?mO0gFA77QfBXBcSOWFlESYL27rUKFNQzMj9BG7NehifdRRUS+/LkMsL7d7qG?=
 =?us-ascii?Q?Rb2MYCt2lI1s/9k+CsOEJ5LfwmYjThr+hBdbsVtKFPout8l3vC8JM1kpjJQi?=
 =?us-ascii?Q?g0f8AgqHueQwb7xeWsixDiTjIipjhMlIrb/MXFwppw/7GOMR0TiidJRZbK04?=
 =?us-ascii?Q?go0RHred9M4K4mH6QHCUtLBE9YN4moUd70LTuvYgt3eViDxxL33PND7MDY9f?=
 =?us-ascii?Q?D4ax0lAMmVWUkT7yxt7HPn13PFxO1y/0Gb5ck3ksKi9pJQK0OOB6Q9KXhP7m?=
 =?us-ascii?Q?aQX6B3y/NInp7zWW1cbumyTN3GA3JUOQ4A80NPUQvzCkurVBRDO2tIha+9EC?=
 =?us-ascii?Q?U3TphFnBnN+jGGmvXS84sgsOlj8XO8BEMw/UfGfo58PYrjx6JstsVf0SRJvu?=
 =?us-ascii?Q?E40stt83M+wGdjIkaRDTEcVUCszEs50+oLYawbNWKj/qTNKZ7KOoxNA19z3S?=
 =?us-ascii?Q?JU/TXg476OW2mHm63GUi5tA1w7/UNyC6k1wCdal2+y9x3SvnOiZ8vrp7ZVHn?=
 =?us-ascii?Q?PyBPqx1DWyOLVPB9rvki5nd+fZbzLjfYeI6dFmmznewTfFlICZkx1N6lEjI0?=
 =?us-ascii?Q?GJWcbXK1rA+SwGJHlRy9YrdUCBIpWjGysvuoN7euHo92FI1RnHBRpt181v0g?=
 =?us-ascii?Q?G04IKeLZk6CTtlIkrIhgHP4o9pyKAW6gbBaJ/ThDGZiIT04sTXNO97y/KZcc?=
 =?us-ascii?Q?4mTr48eyzX+sD1ONT60zNyMaOrB/bQMm1BGQ4lSTfqf/w73MKCQAb7QATFK+?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbff8c08-9019-4f9e-b255-08da5a24be29
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 23:11:48.3322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0aMUgSCqJhDbdPZPCpem3E4gJtaNXLX1c0BhFCUvp6PCnzNxmQ43fqkkvcurufZYWzZa5wtzN8fMOch+PNvkdCu5ytKiGO5UZe9QglBmVcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2317
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add performance workaround
 18019455067
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 29, 2022 at 03:16:09PM -0700, Matt Roper wrote:
>On Mon, Jun 27, 2022 at 03:59:28PM +0300, Lionel Landwerlin wrote:
>> The recommended number of stackIDs for Ray Tracing subsystem is 512
>> rather than 2048 (default HW programming).
>>
>> v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)
>
>I'm not sure this is actually the correct move.  As far as I can see on
>bspec 46261, RT_CTRL isn't part of the engine's context, so we need to
>make sure it gets added to engine->wa_list instead of
>engine->ctx_wa_list, otherwise it won't be properly re-applied after
>engine resets and such.  Most of our other tuning values are part of the
>context image, so this one is a bit unusual.
>
>To get it onto the engine->wa_list, the workaround needs to either be
>defined via rcs_engine_wa_init() or general_render_compute_wa_init().
>The latter is the new, preferred location for registers that are part of
>the render/compute reset domain, but that don't live in the RCS engine's
>0x2xxx MMIO range (since all RCS and CCS engines get reset together, the
>items in general_render_compute_wa_init() will make sure it's dealt with
>as part of the handling for the first RCS/CCS engine, so that we won't
>miss out on applying it if the platform doesn't have an RCS).
>
>At the moment we don't have too many "tuning" values that we need to set
>that aren't part of an engine's context, so we don't yet have a
>dedicated "tuning" function for engine-style workarounds like we do with
>ctx-style workarounds.


what I meant on my review was not to move it to
dg2_ctx_gt_tuning_init(), but rather to follow the same logic: we need
an equivalent tuning version for engine wa.

Lucas De Marchi
