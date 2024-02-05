Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF0E849CF2
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 15:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F2A10E58B;
	Mon,  5 Feb 2024 14:23:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lbcmzl36";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Mon, 05 Feb 2024 14:23:47 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC8A10E36A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 14:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707143028; x=1738679028;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ju7WQjy8WEKUlbhdiptvMIzETqU+zreSV6vCI4oMo8E=;
 b=lbcmzl36GpqyJIHtSxHU7OGKpf0w6z6j6iOQJexVYSCSWoP0YEVu+jH8
 AQCu+Tafu+K/HJtrGjYB5SVlKbavEVaPvcOTrL7WsJG9hoflZMjkCFkjN
 lsG3qHI+9WaXH3mBMVvWfaD4dh7HD+RS63Q4xDzmJoXGs8D5Wt9p0FS6g
 wJlnTlxYpjk5W3ezGtXJv0k6zb+7yuuKpeAGetxRiEBwZnEaolYIjf/Uj
 dCebv7Y7UIMdLZ35l/1W89P4Zuu632IrlcvDfIAqunwLkr/GTK9lqDWPZ
 8yHqwKg9FTZeE4TJfzIKLI1vnSq0qJqDMGVhwim+85x6/JneT/bIMveVc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="434347"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="434347"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 06:16:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="5362632"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 06:16:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 06:16:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 06:16:39 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 06:16:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W5oPfzmrNtYKNJC7b6m/gg+3J+Mzqu8xCyFEN3geFwWilOewRKDd34ap4lYoBD1xZpk4E9L4+JKQhOlrMDeUvFXXnZae6Lw83BoE//QObKNY3JNVBYE/RY4d1OiFLLj3qjbV99Go5OXhImYizsST9VODSYS7AVHEoBsY2MzmywUhvbsOamCj3fChmsAn2MKfx9xiDatEBBWyyikNFlfdI3J/PaIS2GF2ajqnA55uoXvzNk0BKb6bRFnAGeSxnplWkdv/gVP6ZaZLaE9cF5Qc3LVLWUl1hps/i7cWGTtrLaFxe44tDZFgt6WkI5tqyGxA/ugszaKPL/ncHVpEIAKr6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3zL3yxjiEpyg4ibh4fmd6MUjpEXcEsbVRaf0HQLVu60=;
 b=fuQ6JufjwyGZREIHiUSj1DV0ntTTzboMlzg8DTKJEOIgHTKw91s4EGEoiY4hZcBw07MDboUumc6CC0dxW7TqY6fVzfSXUm6MuNw9DPIzztKKrGcqbHOL9/0FyLHbzVXgU7ZDjrVVLC/lkkysD+bRZWbjKOf9Gv9FhCUXofh2Qw2WueG1ub2tDXJHog80faZBsdsE554I/CZ5bXfHQeHAKvtixGI2/JUEvNR1Y1dHEZJwmtKs88NZZVS505Z7hWYNp51tcvvM6He8khQbsgp0MOVzIfwgJEhTyPor94hjecnyCX57juP9vcrdvJ7Nmw3JgG4+V1FEIEsKxY6zGxmy2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6655.namprd11.prod.outlook.com (2603:10b6:806:26d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 14:16:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954%7]) with mapi id 15.20.7249.035; Mon, 5 Feb 2024
 14:16:37 +0000
Date: Mon, 5 Feb 2024 08:16:35 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, "Hellstrom, Thomas"
 <thomas.hellstrom@intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 <intel-xe@lists.freedesktop.org>, Paz Zcharya <pazz@chromium.org>
Subject: Re: Re: [PATCH v4 00/16] drm/i915: (stolen) memory region related
 fixes
Message-ID: <w2l7xe3sik5wjtjs6i3iwsvqmy36bambkigralbjhn3x6lornu@mglr2dfaw6ed>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
 <87cytbdttm.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87cytbdttm.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0111.namprd05.prod.outlook.com
 (2603:10b6:a03:334::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6655:EE_
X-MS-Office365-Filtering-Correlation-Id: 2158580d-0087-4df1-d336-08dc265510af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t9fp9V4ZTyYu/+PotsT6CTyd7xJu4vG3Bw18DowJDdgDcpRAliL1mJhxfZNcPITF8MaqPBTMHAAz/WBJaFNP//OEkv9fdg4O2Nb1JGzsqIwi1wHinAwsw/cMsJIhkqdG1xA2LKlGz786TvwBB1YoakjKq1zoPk2hgIqnFK4dpuqm8r+1O1tge5oXc9DLECwvV8CeEgele44hkJJ8hg+5jLnUjh608HIpfprQJ9mxZaUGLNJhYdxR2Ii6qiXAE28yUKn/Q44MNOjWq5AUncS/c2k7xstC9+gliLpVJJbNDMivzWzRX2uUNSwgbf9ZVvtMhMf/PvQhKHmFlj8KlPj3wTQY8x+lSGi6dc2YuNaRvK85WoTzSQFFyKC7meHTzbdH27D4LtJdclyLzONhOv/MxfX6j/jsskK04FvtR3MDRHTLzODBLGXr4rtjvlBLqyoXQ0ApAfftx03MdPu1r2VrpaVJx5i7EGJNsvne4y6eLF71al5jgrt+VI+M4a+/6ioZWujaJozLV+/MH9MfOsQBC0S44fgUhb3mczn78B+3X4iFmrGTGYWadiinGWoHwk6+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(136003)(39860400002)(396003)(376002)(366004)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(33716001)(6486002)(9686003)(26005)(6512007)(38100700002)(82960400001)(86362001)(41300700001)(54906003)(6506007)(4744005)(316002)(478600001)(5660300002)(4326008)(66946007)(8676002)(66556008)(8936002)(6916009)(66476007)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nOiITDP0f6nLhIs6vA0Nz1eGeW9hdSBImmxDp8zBpgmecM8UmUgsR7dEiPOK?=
 =?us-ascii?Q?6ebOXRHeb/9TBdZpfUChHCxUMym6HdqlJXg03g49PHWs4VnqmdCb4rv5PXSF?=
 =?us-ascii?Q?OHg8JLiEOQxq2HC028+rUhaxBgXu0pE/GGYPYomkMti/lf26bsF4gsaoAVUK?=
 =?us-ascii?Q?TMGQzpgL1eMI9DYKKLLoK3zehqdQXhsjo2COLvflR8yh8HlB60I7K0fsOZ3H?=
 =?us-ascii?Q?+QdqNtuZh5yct4Vm90X3Bhby/xfv7bUkCrxeEMZfRT73S0S+CQYtu6F9/Yw4?=
 =?us-ascii?Q?tQcUbKyI3dKCdKPhVCp4MDsk61zkdc4BQiaQUWs/n+fxdqakRWocavNj+UU9?=
 =?us-ascii?Q?E2utbyPdRD6MBkBOnM4oDbICI7G2vAfa0ZwgcHbrtRmrx1uuMWoFl+QGZUBN?=
 =?us-ascii?Q?bLs2fpmfuRwbb/8YVYasJK2D+XhF/61xYVCYWT/jL8KvCIZlwoe90t6XxJzd?=
 =?us-ascii?Q?xEl6ryTmr2bdYBzzq2lF/9L4M9gTjOisZW2iMD9BTZGu5qmFs2I9k/Tvx7Qu?=
 =?us-ascii?Q?cLhBNFxLh2JF3bDRf7CZ5WBuKsATSZ8n9f4p6AK3rGeHjToG2PO4/Tp3MYSO?=
 =?us-ascii?Q?YVPeBZEL+2NPPKivZia+zjxDNlndnozjz6YROzCA1eCbiQZMl86vUeMGqCki?=
 =?us-ascii?Q?21yMfpRyW000Im1YJ6aqj87FWlcVYh/XcRmfv6Yim3WiTGKga0xyCl4vD8dq?=
 =?us-ascii?Q?wwohFuiIgCAl++uN3oIJT1VO5RLiZ1GKpmE1miFVJWsm9kbQhq0UoR6ykw6w?=
 =?us-ascii?Q?KHnExI4IUVMqG8dI9BtQibV4SanGkixkAcUla9WxRmgu1Be56gpUErHJ9OvT?=
 =?us-ascii?Q?teWzJ4tpSafU3pqhgA/GQHNMq4nY2X7dp7e9rvU99rxkdoeQlxJ5Q1NTxvJm?=
 =?us-ascii?Q?t6Pp/4Kd0N6I3BY7X1hupcpe8ueknK+zvFlQTiswfeuorNOeiY/o4NKaM4hD?=
 =?us-ascii?Q?zUmLJ23hQ40+kgr4aArTIf+PSUbuW4WlkkRBC5O6hyRacbWbn0N0psjYnjIQ?=
 =?us-ascii?Q?BS1irTJU4zbVR08WcKVOH7dmZHiOSZcg8SmOdERKRyRIW0xfuhChMkbfzXYG?=
 =?us-ascii?Q?b82M8GFSzEVaQjrc+Mej+rJrz+8eW8PyZxnd0qbjyI2hB75lpuj8L2C4MQkm?=
 =?us-ascii?Q?YfcBQBbgV2f8YKVoNSbdAb9uzZn5e8i+zlQ133vABLQNW8thDZ9XVEVVDKp6?=
 =?us-ascii?Q?EFKC1HhIe2CwLf5aGDmqIiAuw+hqm6+uhl+Enx5XaYLAvMiOfCvqWr8EgTBR?=
 =?us-ascii?Q?rMLIu8a30BsHR8M+yXgDMu7Ido9e5shcuqMWXextVCJ8/C6urEJ64EaNTHbh?=
 =?us-ascii?Q?NbQs7TbEjez/rl4EqfqEHBZyiyJV09rNP8c+21lPJEas/th5zEmyv1FgWlPS?=
 =?us-ascii?Q?S2/qwpcwvwMy3MqJa/JglcDFoGQORR4Wou3p8Dh8c1MmWx9OFIWfyEGLYqhI?=
 =?us-ascii?Q?Vu52E6u0d3cr8qvWY+8/9FSQvWfFnyaLQSAnzjpWGpW2ai5+JAKFL2C8pieX?=
 =?us-ascii?Q?C3Xl6j+Rmm1Kwayc9tJdsgg3eTeIo4BJqeKB1CfWqjuQ1AoD2Y451qNsOTco?=
 =?us-ascii?Q?S06ijICp3LRJHhWvXcmRowlwAmVuRHpbd3Skask0nJujYg+Pgq5f5qaSy7Kn?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2158580d-0087-4df1-d336-08dc265510af
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 14:16:37.5283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 42JhsoOUVEfO5vjYbjqCOn1bQ8sJI5m0d5EmiVOFFIRlH2EC79inx2vYBga3vVUaXnl1stZYWlY09UWnH6UwQfr1olWXmOjxlUmRhmhk5Mc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6655
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

On Mon, Feb 05, 2024 at 01:38:45PM +0200, Jani Nikula wrote:
>On Sat, 03 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>>   drm/i915: Simplify intel_initial_plane_config() calling convention
>>   drm/i915: Tweak BIOS fb reuse check
>>   drm/i915: Try to relocate the BIOS fb to the start of ggtt
>
>>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  67 +++--
>
>Lucas, Thomas, Oded -
>
>These three touch xe/display. Ack for merging via drm-intel-next?

as long as it passed CI,

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>BR,
>Jani.
>
>
>-- 
>Jani Nikula, Intel
