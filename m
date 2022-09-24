Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 696BD5E88C4
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Sep 2022 08:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243AE10E210;
	Sat, 24 Sep 2022 06:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3E110E210
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Sep 2022 06:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664001060; x=1695537060;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Nk8T4o5HWqQ+x2Il+V6zW2iJbuXNgrjbRQHXmOiPAx0=;
 b=c5e1riFmtIVOTnr+FNFSE8lTTWUMsMH8I0454JGixvogHqWSIqmvbQXg
 5H68c6/fWQLjvopcQ9cW6wmNGyvU98A23BBJNu9wY6QyRn0RMVyaJLSIA
 YHz8YnNDXhKiFNPyGb1rD9agiBT82pb9SoHHpBKf1ECQQUIDKoh28Rxds
 QL8JnkvE+E+NhjN1zz5He8pttTKjyKPg8GDDbe1IEMExNJAagwnyGMRt0
 +jIFIIxEQPrqKwYR/jLCyRJdx/ZJBlCmf43UzB4ySVHfqZ020MiNYNVcw
 AEby0PDoBJiEhaxJvSboKk3/tVCvywBcfqUBDqigEUkeRlis8dQ4Srprp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="327084432"
X-IronPort-AV: E=Sophos;i="5.93,341,1654585200"; d="scan'208";a="327084432"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 23:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,341,1654585200"; d="scan'208";a="865548950"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 23 Sep 2022 23:30:59 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 23:30:59 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 23:30:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 23:30:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 23:30:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H00K9niVot2/DuA3sYIU5v/HxdZqBSq0KqHsMjWgnV8F/rzVZuN/4f19Pw3gKLkVbR3/EDPyBr8qlnp0GQXVPtKwUewsG6W25hlQZN/QHh4aRMgwJuNFq1dM5kEGCk/ra7eeZM5ShPBhEVppcZ6u7MQE3RxOyoodNLgQ1EZXgWX6BJJOU9yMpn07cWNz3WyJNcpz8zslQYUEWOXCw3O4iDbYcKWFbampMCh5eGQpWcfgXrIqEuy/+X6Vl0/e9h9YzwBFZPXoTrSsJ8p6KenJ6jtoxEy7F18AaaKWuwh4v04AA0ddy8WQDOJCUpyY0+zHWTJNiIIVY/8FopfZGy/ZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ay/S3xzQhYI3McduJekyq7GfIT3OE0SSuzNW/YYZLyY=;
 b=hjF5JiYIYssfj06EqBbTJ4u+INfNXZ3WjZMIu9ioe31WQn6ZqmqOVT7Z/KsvQbHAP6fvqWwGLrAlAPYv3KNqvNVsJuBKMPBmxVWYMFeijdzOBVHqYX0q49uohVYq1g4h+s1wEW9cYpSe7bEwW8e+RK4jdYW7bKoKvevUS4VqJ5FtnPfKYH+E1w1LWza5HAfLDoshkoiqQ/P1myDwlwsTU6kgzVQVPNjqCSy6cZJ0GRLAPq69rNhll1geRtvyqHc97UHYwU63EldYZFSZ/j2970IQHnxwT5BGXYaG1md6MvjZ+55KPn25kEZkqAST63+e1JY5VrlsB6U+apAC5wjTzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6056.namprd11.prod.outlook.com (2603:10b6:510:1d4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.22; Sat, 24 Sep
 2022 06:30:56 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5654.020; Sat, 24 Sep 2022
 06:30:56 +0000
Date: Fri, 23 Sep 2022 23:30:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220924063051.7unei6fwfhrhswe7@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220922164949.163985-1-gustavo.sousa@intel.com>
 <87o7v64i3a.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87o7v64i3a.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0383.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6056:EE_
X-MS-Office365-Filtering-Correlation-Id: c6d7ac28-51a7-4269-ed0c-08da9df6565f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RuUmJK20UJEW5VnM5gZD5LHGic74vzvXOxeh3rGJYIHzjnlQePIUn+j1KxrXcjCCcdZb9q8GXgGfnDL3SD/2132H9bPJqGCJSk8VCpkOWxnmDye2SYEXzLiENsT8W8wilyY1WTmIwQvFoO3VH9a0qKA0lVdaL4xyayhAtaabcSnkRlgHZavs+d9QLSZoxfRTGI1XZuV4L2tDgT6N/JBVHrbF6s0+5o0NwPFD7K7TsnEUiDKgfw4a/r6Wm6fZyFhyajLuKWTVLvvxVPBZOh+wS+GuPD4i1AEkhJKITOYJ58PMFn21YZmQKhPQJGGUMbVorv9rMyGzzsVPcvSWYpfdsNyyTqg1jjxZe5yhMCZlugYJQaccpUX1wxNB6TjS2rDufkj+eisUQIb4o6+YBej+S1+rBpr3woFAPFzmzu5y1EHHwAg1tJZVwrnjAM8TCB+OfaMpyFOQQtB4lvlneahGHmY0YnQfLLCd24dcsL9JJ6+T/+NXJbAx2X0heVhPS7k3EFl3LrAl8U0Zr0EEkkLA7Ivbsc1KI60VP2/wR21OTWjCh/IUQjLZOhNo88ZpaMYTRfLQQ+tW7+xG9audfXCUNdR7l5AlZhsu88Xx2vDaP8gUjcx50pZmqoJ2xcuY56j9v4zlTPX8b1ubn2DMeV0mAP7GxHDMQC7i2JLBP7erv9DWaPQ13AiO8hFKA7e4tjjG/d4lf1Z77WJSaFVODj01Tg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(396003)(136003)(346002)(451199015)(6486002)(82960400001)(38100700002)(478600001)(6512007)(9686003)(36756003)(8936002)(26005)(316002)(86362001)(6916009)(6506007)(66946007)(66556008)(186003)(2906002)(4744005)(5660300002)(66476007)(41300700001)(6666004)(8676002)(4326008)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YHDPt6ogs4ZmkR0Z2BDFuWpmoI5fzQ1T+CMj/7hISEY4N7fHO56Pl5UGrrc6?=
 =?us-ascii?Q?ZOtuhZDkjSzf6jWBcn8XSKgGVBBw+q25p/5u2uJXSx/rnJzg0dLONuUs0WRK?=
 =?us-ascii?Q?kaG8vqcqNt2DRQ4Ny6CZwR6CfbV4ll0DRebxymy0Y+ktZTem0+26i7+OmYMq?=
 =?us-ascii?Q?P9ILxwv6FwRT3YDMYqZj2fjCKCCrIijWKDvMVTP89IaiTE0YSg5+E6BZdaxJ?=
 =?us-ascii?Q?FM69IgZQu2/apEY3FtpGZHyITcyeHzPYx+akRkJc0UxAyzGXvhDqJUGNy8IL?=
 =?us-ascii?Q?een/w2xRro51A3PAfwbvbwugafeOyspXGZ6Muw/P5/9pi2omNy+ze0cW2hcZ?=
 =?us-ascii?Q?AJSbjvSi7hx5f2No31MBJll4kxi4w04luFkUikpkTSKJYQdi42Q/yfkEv4pT?=
 =?us-ascii?Q?4RpAnOYiVdbM/NrHEpYmK1PaUV1j83yPz8/scEYV8vJGz/itu80WbOkeEw56?=
 =?us-ascii?Q?dHVszthTrGvf6qv07O4Kid2uLRBkfg+HE3GACahzp1WIbF+xMpbAjqlOlqp/?=
 =?us-ascii?Q?UsImajpO2HaKtF1nW8XR+m+6BEao1JL3SiLNXvXiwHtKTTHnOIuG8DvXtD7D?=
 =?us-ascii?Q?ZTUGNhcQ6fBqdVUepzQ8/D7nT2+TW+N8gWLXQ+jc5MdhMf1xFw9hJ3HPbkSf?=
 =?us-ascii?Q?JEuYD+TzDmSLgk91BvQTAE0z4IVah1GJfHsAx/zGWhf0PrjIY2mIG7GwYUDI?=
 =?us-ascii?Q?jQa2FLoHAeAbeGGdxUWamiudBn///ykJ965huahc6uUCVG6l8ZL/Y1BngioN?=
 =?us-ascii?Q?vvezKN+4/c3lxkXVRxdZuHboMCzD+FdrHlcBbtC+Z8SNWyfgpu/mqoIFR/v4?=
 =?us-ascii?Q?T6JB1daIE0QyUdrx7s+CPc2nazsU5RLWiWVu9vDfPKEf/A9S+s62wz8DO2Y/?=
 =?us-ascii?Q?9+wtTofpygtuVfgYdpIe7pz1dc0H22rizF7m2p5GcMMRmeq+JUQp3y6DIa0+?=
 =?us-ascii?Q?+zDwB+fWZd+Nk2Z4S7JvaAAe+1TS160SMBUsSPMYKpMhZB90jgokeSpVCN0G?=
 =?us-ascii?Q?tzTndMvLXcJpcm7MSGdMJ08mlzpwketmfZKPCngziNUmBYSQhCVa+DijiAzg?=
 =?us-ascii?Q?Unbe3rejvKad4+FVrcwHk1hnOTYkoHBkryXzVYylJwQk5XgI6zZSZ8Xxv3vh?=
 =?us-ascii?Q?MRdPtwa7+catHw/jXeodCY0w2CBALZ58CGLPnJuMlDUctUoDGSsIz+RP12N2?=
 =?us-ascii?Q?8DLWNHQH0uAmlimD3HTSphUJHE0SK2/rdgmYZN2kNK3bQCScGn9Eg1s57/aL?=
 =?us-ascii?Q?HydKVHmeUW/fu18QFAtwzvMeXdXBpL+Ny9VbFehxTHWeEcl7G4GeYOpYddqp?=
 =?us-ascii?Q?Tbdn3nCD+KBLLvVT2LqaS00X7z4hm99TYFb5mLMgKzt8l+N+WD8Sip6SddFS?=
 =?us-ascii?Q?bFnic1pEBv+Euj8lwTPHryBg++MvgHOG+jd3CDiBN5+RYQ4iWqcy3hCPbq/I?=
 =?us-ascii?Q?39Fu8n6j2RYf2IL1VZ1pvjqWfhR0TX4gF5COIXX+/WBLPfM7eVjHyZtEpv9D?=
 =?us-ascii?Q?7c00M9lsrG+6YHAcLbjgIqWqz/UQmZYeQQ/84cIfa7bAx9cx4SkPd9Nje8Ai?=
 =?us-ascii?Q?jllPRNRwE6a1JgM+k1jL6VzF1mzxXiS2v3rVo9kHGjTt6dbjHoLDhq1ms9cX?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d7ac28-51a7-4269-ed0c-08da9df6565f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2022 06:30:56.4551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t/SsBDnpu4OwM7Yl8NO9EbTxLHcnBz3j6aHK+qM0HeX53FF2UlLaN4mUArpm1JVqxZ3TLoheFCfD+IEZQzEXXvvwN31cOlNwRe+i4zaVUz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6056
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Move hotplug inversion logic
 into separate helper
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

On Fri, Sep 23, 2022 at 11:20:57AM +0300, Jani Nikula wrote:
>On Thu, 22 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Use *_hpd_invert() helpers whenever possible to isolate logic specific
>> to hotplug inversion from common HPD setup logic to improve readability
>> and maintainability of the source code.
>>
>> While we only define dg1_hpd_invert() here, future platforms are likely
>> to have different hotplug inversion needs, thus it makes sense grouping
>> different implementations under a common suffix.
>>
>> v2: Fix coding style and prefer to use small *_hdp_invert() helpers
>>     instead of a generic one.
>>
>> CC: Jani Nikula <jani.nikula@linux.intel.com>
>> CC: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Reviewed-by: Jani Nikula <jani.nikula@intel.com>

applied, thanks

Lucas De Marchi
