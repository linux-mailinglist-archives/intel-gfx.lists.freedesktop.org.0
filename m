Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF780841B13
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 05:43:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F228112D87;
	Tue, 30 Jan 2024 04:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0D5112D83;
 Tue, 30 Jan 2024 04:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706589814; x=1738125814;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/n0s2hLY5us4Uw1gatDjjZ8zYN14DqRWkOaBry56Acc=;
 b=RIbflGdCVAy2flKLDCLSQgvFfnEnunXsMH8LuelOBZoYjZsT9odmwLmX
 VAJx3AQNp8SYoeeIG8XRsIib9usNN80WCX+sbM/Ao3K5kNN9OrKU8gDz7
 W+fFtqUJOnp+gy4nNlAVvQNi4H6KO+BB8muWcpMfGX+gttyXi3pUliolU
 0O/j3IO0UvGyEJHn3nbEWs0cxAb0De6HqDqHt6250EJNlgDnnU6usM52b
 Av2UuJrRhv33JJXuehRgsAvzY4EyuS4IxQ2k7gis/cWPM3NXl1xhfkmfC
 IL5Io5qvGl/zy+46nGVq8BE4KHYKa8Qd74xieCFSPMM27NBT1dYgG2MMJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="467423726"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="467423726"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 20:43:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="911319714"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="911319714"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 20:43:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 20:43:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 20:43:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 20:43:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A7XMLGeF9p4tKQIwOAHpvaQdWvibYyO8DqPS9rJlMSNiyWDl7vVHYkrujMt5miEtvG52Thbi8TQFIyrpdWHmn7QuQe+D1ke8BVeWY4yCpNon21Im7qVA6Dub2AxbyUcmT/j5W+CrYGHCNgPgAjcqc/Iz310dimhc2HALnrmKuyYdU/oLXEdfaG+OtfaZljnP738RCXDQJgEH++fYNEl62oXZTEkvHrZ8Fm2wQXrUTvKn5fq3f6dbKTfHpCeftYh+2gxRGp0B62mWePtsmeBVT/niipyBmeyl72XgBJFbtIZfJASWfV6awwNQiZv7mBHS2ol0ZBFVaXcPmcX85svmag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xsr+bRJoOt8QdSX/fm8Y+Z5OPxhyievTV9ljDxYmwG4=;
 b=Ts9pUQ4HyWXXxN7MQ4ffWiAYpI++F7uiZdGT5s5OnfPo9qKUl6h8Lf1EVqlNNe+nG91/6QC4bfG4vKG9YjFknzoWl8fIbbXDuJzFKKZw7N4zNlyqQEpg1mIEE7+sHi+XEAGWefVeji0JUr0/u4uf3OC4ZiUXz7fqLTY4iL/VfyFfqha0CH/OMy75CpcFqiO1Okmg+f62rzHR9zMkWqo53OIfQA1GlPaxWkLld7L/GYSY4GMnzSZLKg7byUibmkWG/+9la/EbR5ztUN7lpytTmKAXIFqX3vDEyp92Ikb19KVcZ+ExbZj6yIIteHcWIlHU5sh+Y13yOlFi7GZWMPQuog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB4676.namprd11.prod.outlook.com (2603:10b6:5:2a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 04:43:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954%7]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 04:43:09 +0000
Date: Mon, 29 Jan 2024 22:43:05 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: Re: Re: [PATCH v2] drm/hwmon: Fix abi doc warnings
Message-ID: <io3rav4k2lwthsrljbnu7kwqgnbdys6b7v7oh5c4lomiyf5vl4@p2axtqyigh4c>
References: <20240127165040.2348009-1-badal.nilawar@intel.com>
 <85ttmyczbz.wl-ashutosh.dixit@intel.com>
 <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
 <ZbfCsl4xF4ymsSbm@intel.com> <87frygjdvm.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87frygjdvm.fsf@intel.com>
X-ClientProxiedBy: BYAPR21CA0012.namprd21.prod.outlook.com
 (2603:10b6:a03:114::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM6PR11MB4676:EE_
X-MS-Office365-Filtering-Correlation-Id: 8478929f-1923-4c68-617d-08dc214df5a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4GKhwS7y91IFQT0Q7EBA5breBQecwNX8Mjx2nkOcECXefKKGa0VZKqmMWtwlykkF1u/Ge2B8C4y2KT2bvF8qr+Xp2Nis59QRsaKNsqJXZOZKU+mHgNOXM4f/HDaT33cFt+/iJiI+FpnO9LUQSJOYssYMi/z7I/QNb/8xjAzBuYTO6qEkEujlx3IyzV1WQztjKjFut+ithCyi4SeUH3f2vCjFmbMCMMEudjWHTIVARDD6OzT/UKyt4ln8r9KPY3QKp0eVJvZKs+ffi4Jjntl5Prq2BHJezahrLWjd2wjJnXi913+ZGCUnReCfslW6DmsQdN08Ii0UGETYHJ0LbQa2MEhzljaQm4GSzFNMLP6dMOtUcuEUOAOCkudDGdGg8GRIcpRd03WnftlsjJ6dcvz5EQUs4A8V+WSGFvGlZmrV3HGkwSGLJMiARoi35t1QZCac86cogBSxsW1yV8vsUgE6mXcWXMyprndIvcO19M/8lUTGO/D171suwFzO3q6CX/xn7GoIFHolm0nm8swtNtkxhXE3xGNJA7ViiMin54yAcHnQtnYvIf2mVKa+SkpqqYg3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(136003)(396003)(39860400002)(376002)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(86362001)(33716001)(82960400001)(41300700001)(38100700002)(478600001)(8676002)(4326008)(66946007)(6916009)(316002)(66476007)(66556008)(6486002)(26005)(2906002)(6666004)(9686003)(6506007)(6512007)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zR+ujLsPRMsGo5ixK6XVXgvDjzDcXm9WmrQdp8RlRP1gu6rNB379f0JqJT3P?=
 =?us-ascii?Q?Cu2wVL+m5jtKiHgPhPQJryUaWzbc4tqXiq0mefzIW6hRZXXVy0GrTgs0utZr?=
 =?us-ascii?Q?DoYaX0pOLrYySkFTELn9L5ZqLSD7sBtC3lz3IyNtC1HNcYpL3nWov0+6KVXE?=
 =?us-ascii?Q?Fd7ZC5n+E00bVR3WLpTKf5eoig6cDSqBh3XhRc/cxNRboPRQ2nKe6FbCLKxg?=
 =?us-ascii?Q?yGcfSyorPXIiMUBU3oDehVyPOInD1Ku26P50/HhDWbNuNGLAFF11E3M8GJkR?=
 =?us-ascii?Q?BnRYBG2uq+JN9EHIeDpGUi4dor4IYhIfGOBkhaSup0tGkOMz+tcgpoM5xz0x?=
 =?us-ascii?Q?67te+rG/hP/HQPCE5RuEXhGVA0HDeArQNasbFsALdTnrcg3EM8IMTDNYmKmj?=
 =?us-ascii?Q?B1iyGMt9USJAlAYuN8JI85E2WzPpePvMSFoyQj/OJbFPF8IFcq6j9s6XtDhm?=
 =?us-ascii?Q?VtHnA1CE80Y9ShLyIaBnvK+TWRbVAfbcvU5L25VC9/02F7cyyPAQzsgVwnZI?=
 =?us-ascii?Q?V6RmRWhQkiL6cdtOOqIkS1LHrdvLnN6axyQ7bcOzwUCQVja5ukZ3lrHD3h4S?=
 =?us-ascii?Q?TcB4hQCoBC5iwG0NV4AmuxOpDwuup17X0V9b+pBTKvaHUO5v5i5lOX4TwYm0?=
 =?us-ascii?Q?POVJ9706ls9gSFKpka/gBdUaqF5Nmn77hBlqd5Y5PNGBy5P5Eexl9gCcK72S?=
 =?us-ascii?Q?j1OoEsR5UM+mkqr8ovwgL5FIb0pFEACtRvo7OCW30Y5mwPbTeWWwVSQRLtvw?=
 =?us-ascii?Q?h4OYNm8vZIhDshcjI+R7TYMvQmm/JvWvkNqtVD7cKvXsjIrEyiIf6/SJ2Wgk?=
 =?us-ascii?Q?Y4xupXLkPAmtb/ELpxMb9rMViInKQdqNvtobyfvtXhFAam05ixenz2TZXR6L?=
 =?us-ascii?Q?jaQvhkO+QMjFectALNspKAcxpkE+130vEfhEFaEi8s0HG670V3hiriGmcz+p?=
 =?us-ascii?Q?Wg8Kd8j6roy+F3KpuuFUJmlHaiN44aRiJHskI3VYC+tXvQXu0lLF0DVZ4gkr?=
 =?us-ascii?Q?w+kgq4+dxE5IgINIHqJLUedyjEKVW6L7L5bH4Cb7V5TLQNL/1CEBn2Z1CDha?=
 =?us-ascii?Q?nlQMNZkTpw8jnLVY5jFbrcFyYuPChJL6LhRUP6qpsIXlafOf8vtVYzP5V1mB?=
 =?us-ascii?Q?MJ+57awlJpSsLIeqqCLwKj15HPyrm6Wn/9ROQUCEXA3xQn4oOJ6VifU2ZKne?=
 =?us-ascii?Q?v3bpDuEEf56L7poOqcFTtLagpFO4YX1ktou+8M55k4nnxg84qmbUwdUfr0iC?=
 =?us-ascii?Q?Z0UMvtG5a4B5YazMZGOMCyrhNcPveHclS/2DZs+T6y4XrpUUgrrN4msVCI43?=
 =?us-ascii?Q?Ie2fkZENxFFS5rKLhI04I5+vlprydq+MbglIa76CWwBtKZ/3ZbmczHBZoBQU?=
 =?us-ascii?Q?jnRIy26+cRYVdLoFvRQh/yZRv02f1O0oFsIH/tpcNCiiPMwcVUWACrzeCJAa?=
 =?us-ascii?Q?O2FrOhaMmgMBCHboE/uhbKj2fO6GCu72q9zapz6tzF1nACq7l/9ABGJRGNII?=
 =?us-ascii?Q?UsTFzY1hUj76LfwiweFgFkH2ZE+eoVrX/DG2+EzKLv/dc4kMkQDyCW1qwf+8?=
 =?us-ascii?Q?9ty1dwCEUhfojG9eaJLQV80JoORk2CHQRG6WtpXjWcG7dA3wNW+Q+MFhTJnA?=
 =?us-ascii?Q?tQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8478929f-1923-4c68-617d-08dc214df5a0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 04:43:09.8417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9MdV9IdB9mcGnIGNzrs3suSLxQUv8+sjp0tDAOint4XOGbgf323nM22fIC+M8C4okM4B+a1K5fpzfg1I/6ER+B1GfrzyWffQEobFH5ut4Ks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4676
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com,
 intel-xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 29, 2024 at 06:36:13PM +0200, Jani Nikula wrote:
>On Mon, 29 Jan 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Mon, Jan 29, 2024 at 09:18:59AM -0600, Lucas De Marchi wrote:
>>> no. the issue is not that it doesn't exist, but that the same path is
>>> documented in 2 different places. If the interface is exactly the same,
>>> there could be just 1 place to document it and then reuse the same file
>>> (without the module name). If the interfaces are not identical, then we
>>> should differentiate them like is done here.
>
>Completely agreed.
>
>>>
>>> +i915 maintainers
>>>
>>> Are you ok with merging this through either xe or i915 trees
>>> instead of splitting the patch? My preference is the first option.
>>
>> it won't conflict with anything we have on our side there, so
>> it can go with drm-xe-next.
>>
>> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>Acked-by: Jani Nikula <jani.nikula@intel.com>


thank you all. Pushed to drm-xe-next.

Lucas De Marchi

>
>
>-- 
>Jani Nikula, Intel
