Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E968A2F684
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 19:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A68A10E5DB;
	Mon, 10 Feb 2025 18:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmXAl6qa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E4910E1F7;
 Mon, 10 Feb 2025 18:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739211109; x=1770747109;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RKKc8qsj96ZVti7GZtx+1ppNSw9hrv38L7c5ISjKEiQ=;
 b=lmXAl6qaLu5dGOKcxPcyvc8lRRIpfq7MRL7M0khAxLFYJoBmAXjR629+
 LcNdYX+or1gjj2gPazxfFb6bSgUv1Fbvq68DNAuasvQKHoSQxhySLNuY7
 38Xlq8sb77tkaDuvpWQXLbPRuCF/s0HLX8KobRmVS6aQuh4GeMfaIJkch
 LBM/hWYf/pGglhv7IPvG2IBe5O20HNl5a5x/rMSdwtIXgEF1T+ujWtT+Y
 vHndY05cGjpjoNRj2/RaAHUDxao8dRdlllopkYu3/DuKJx+g7VuWl23+T
 v0qNgi5nGgr7Atr/aKPoGRGRpwgXNznVo+BlMyNsrMHPf7UqjU7hbQwkz w==;
X-CSE-ConnectionGUID: nQAcmMaVTJm+Waez8rJ+6A==
X-CSE-MsgGUID: 6VRH283xTEydaCC1+w2zqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57219497"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="57219497"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:11:48 -0800
X-CSE-ConnectionGUID: lBVmYWyhSIiAZYDzFkaFig==
X-CSE-MsgGUID: cmIbz2BzQSmTpoeiVjPG/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116858364"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 10:11:33 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 10:11:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 10:11:32 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 10:11:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JAQT8T9uRbR+4fC/iRFfT6fdflHOIRbrrBNfaX9010VubOhJqxVTJdx2X5/uo/JvFTU+40zLrt47hlsQnvvcCCrQGIBYyp7aoMNO3mjJwQ/2TScfqPHrQT734GDT2M5rtGGRGwL4N8Uv9gA/GuqsxEyjkHRUP4A5BYC0tvoqg7i29UqEu7GhxZw37fb8imOBmVpXJ7SDLSM6uirD68KZ18j/XCMkUPlvV8958VI2dd7wUGYuzXPPCkhZkoFr/N3z0Dn/Mu99P4svrBD8gXHMYhN3mBPBcwlF4FVEnCIeCPtUIQCpev4u8eAW7sZ8fuFkw0XwtjiUbTh1psc6rLGaMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Dm0IgdoT1SWZOMldXN7cL3H6YYhHIZ79Cz+GpUHVLI=;
 b=NuhubuvJxsVr8lTR+yFSV2/0fS3U/7UHkm4MMrN5XUzMFOTyopWR3TmZ0vr2i5DUrE4FFHbiUh90Ks6kghxZVBNEEqlI5w63kFO8qU7pR/ETGOgbIfD/NiygSx4XsEJ16BaasSfr+d08yY/I+fhgmX8BX9vSr/aeLqb/x6PVe7wgEVLsRuahYQ3jLNUPQ6xEFfEHjPSa/spJ7a9DCD33/joqAlu722iQF7FPr6Vb1kVkOAJRl2Wr1SsuOPv11ippX0uZVOiuEtpKvQp0zYMcVU+DQh3/txBMy0sS1FPWsTsxNb5jNS69+uT5TNLDi4KID4TlFjcZ0aR7fZPjAMaaNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB4862.namprd11.prod.outlook.com (2603:10b6:a03:2de::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 18:10:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8422.012; Mon, 10 Feb 2025
 18:10:59 +0000
Date: Mon, 10 Feb 2025 12:10:56 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>, <gustavo.sousa@intel.com>
Subject: Re: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
Message-ID: <2isgb47k5kc6rvergx7fsxlfjkfitebcqdgypz4opcvscin32z@ok2hpqxmzolk>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
 <Z6omejfSAI1NkOGj@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z6omejfSAI1NkOGj@intel.com>
X-ClientProxiedBy: MW4PR03CA0194.namprd03.prod.outlook.com
 (2603:10b6:303:b8::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB4862:EE_
X-MS-Office365-Filtering-Correlation-Id: f55888a9-2e6f-4654-fa8f-08dd49fe458c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?4IMhUuCZIQYzWVYbbwOtWJBKm2Ial2J9F9XFZ4a+NgDD2MD3R/BZo6Gtwv?=
 =?iso-8859-1?Q?Ktn+LOej0cLSvmyaUILkr3nRMMeD2ZICjptnVazCWz6cBtStEhM+xqFSig?=
 =?iso-8859-1?Q?CfXfo8Ew4mUBIsO9slUB97/QJU8LIbsZQbZiCVcmimDe+4St7xBMD5+KI6?=
 =?iso-8859-1?Q?Lz0xx77FZR8SzdgWvTgh4emw6KkaWiQsLShbSaldq8kQuhvdMYuwMlgLAd?=
 =?iso-8859-1?Q?sBt0rY7iNp7NcMrxFpCglnXRhPacFJpybxLT0yUkZX+JbJKyu6iSM2jU7b?=
 =?iso-8859-1?Q?U0+SD/92F0YVdBqV+QIblAwXxafOZu3BF+808lLjNWTatKw98NempYIJ37?=
 =?iso-8859-1?Q?cBJhElqKA2YChwf7gUir9lomH8PHtlG0cCZJd7G97060JPRq3okvAKv8qi?=
 =?iso-8859-1?Q?T312HYaUCCMsuqTciIzTcGoWw8jCZIhEVlvDr6Ab3yxrUkHjRp/VBD2siD?=
 =?iso-8859-1?Q?sowy3P4JU33nUDCjAFvT0YED01eAaMtCYx5M85AfeFFXQFpb2KuZQInYuE?=
 =?iso-8859-1?Q?5ZXHs4ZoIhX0HurLwVHHTWBrj2Cs23k5O070o94t1JEI6qQvraEdKxFtp/?=
 =?iso-8859-1?Q?bxKAAm+IgLZjMwDjM5qQi7pQHP0XJYGyjelUOAMAo+m3pB3EkOZVO4595g?=
 =?iso-8859-1?Q?bpscm7o4kmtTZwb2FG68+Bv/Yj580zuSflKkJr4VgHlVyVfgkhn2S908ja?=
 =?iso-8859-1?Q?qGh+oKvZQooMwbp2eoxAV4ANa5KkpsJm9iP0OxfWXjkV7MYDjjNtOtimnI?=
 =?iso-8859-1?Q?AdN6JERTjOUmiyqALLu7le8G1vf9JcLF1AIreFxoxo1yXTvYNqi8t2duWL?=
 =?iso-8859-1?Q?MjdrywHJCsYGNZiDx6eZtp34IcdBrvj4giZA9Oi/0VLymEAfNdHYX6ZZ8x?=
 =?iso-8859-1?Q?adLFa3qMoiCmpk0YX0vH0MA3fENBXWxkmg7EOEP7DM/bHgNww7li31zZBw?=
 =?iso-8859-1?Q?ffGme91XYwnAYBLPSGwBMsf8jo6E23TaH884nyVVOSFAlchL/0myF+C+5q?=
 =?iso-8859-1?Q?l4HK+4g1mgw1j03+ByVA3/Ilj1bkGgV3JNvZod93ajtz/MVZgjpJGhq+6R?=
 =?iso-8859-1?Q?QxAUSUANbmvJPAfQu/t+prVbVcwYxBROd/+rPcTTt/c1H3wKJIyJaGBzkd?=
 =?iso-8859-1?Q?O7AUZ642qF4Um5sBVfazmN8wNbaB0bibQped7T64dr8CFYNkI5TYG0bFBn?=
 =?iso-8859-1?Q?ds5NXBDaIlKqiQkqWTPL/La2EC9o2T4fBFWjNhDHvnQbeZ3mbK+cSXAO+E?=
 =?iso-8859-1?Q?uylhAj8XGdLJfmwiWk9U03qV/3CFFMc9nM/QzPYzrL85Kz1mTFay4K3O2I?=
 =?iso-8859-1?Q?0w2vTdoECXFSV8+w7Kh68g6ujkc31jq/bzqK08rHB9gORH5jP480v82gFS?=
 =?iso-8859-1?Q?etUhltz3a2id9w7aTDFz9jtKwlFA50dsy5fClShMMMr+2A41vUPAxsiowO?=
 =?iso-8859-1?Q?vPO1IZb8Q/1XrjAF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?/avyVFr6pyN4he+onwZVfXtyQbsuFpv+IoXhaznlN9O6vrobjpix7rLxuv?=
 =?iso-8859-1?Q?VsEqO6zerE6290b3bCztMOZE9bzDY2tusZRvhjsqv5iAz/TWbQbWT8VQba?=
 =?iso-8859-1?Q?SAtPwe6OqFDGxDP2Ra/FlMCnU0Y9Li5FZQtdnv+aq2VtWFCUKqXKnWaESP?=
 =?iso-8859-1?Q?cAUSs8zV1iDNPMF2M9/zY9AtkBIwvNQ/kWf6tUTRGFTKs4kOQptXKZ9z7O?=
 =?iso-8859-1?Q?PZpUtkf8FYt37zN6M1biSFzEuOTRCKP9H+S+A7x1DfJdCuH0t/SpHJ4h7i?=
 =?iso-8859-1?Q?vsGqbVes714XaCy+IKGrXfH4EnslV2RiFVHpbhY/M5zpZ5tmgCZTNkMghw?=
 =?iso-8859-1?Q?mBosdQffDYQygnjbHlwm6sV9eywj4hWn1ONw1JXa3ItMJByEklgbR+Bf9d?=
 =?iso-8859-1?Q?8jQwYo06QQFXec0/lczVtj9p1yz6mOcaG5l6GXeHU1BJHygQTa7/Y82ZdK?=
 =?iso-8859-1?Q?jXZdrPFIiFD21DbEo6jEb0rYe/2Rbu2ueMJmWIwAmO4mJnKMT9P0BMUsg3?=
 =?iso-8859-1?Q?RmAtLgvKuCR1d+eVT/z/5G91kg8vYD3Io18YVDrGMZIapIJlA8WMeftfH+?=
 =?iso-8859-1?Q?YOKghupKHe60TtDmGB8IMRceel9h+GmEJGqYrGOJNR/rYzJGM47t/x53bJ?=
 =?iso-8859-1?Q?0qIRclf0InOtg5b+AsIFb0LUrN4lfxvZQaj1GbOzWogvNYnD/osHZtldVt?=
 =?iso-8859-1?Q?dxSh3J3xz6tH0SD3afmVH1XzrS4dBs0kVXu5/1oHAnaleIuwc9WuN4AHpU?=
 =?iso-8859-1?Q?KHixk3bsAO4O2PBMMxrnftmSO2m453Dd04mYor4mBqXSZA/VzfL0j2kMsR?=
 =?iso-8859-1?Q?y/pynQxLTX0sDI7bzxhvg2wbFzBU0UvN12iFaiT43sEL8+06doHrtmd5yM?=
 =?iso-8859-1?Q?oeFzcgjbQ4KGP2JnzWbEhY0h2IdowyUnWNpfo8/9zmUh33Q3RNE1NlXt5n?=
 =?iso-8859-1?Q?5o1Pz6JguByuIKw9a4E7nMeQF3HwRkHg/d6ip0qkVpO5zfzM0nKTBb1NzQ?=
 =?iso-8859-1?Q?scqEwUy8X5J56xmexvDbUAp3D2Hj1CvQ5bjAJG/1pqkQ4C9oOzQXM1zGqJ?=
 =?iso-8859-1?Q?uAQG3NmPi7WamP9+La1ufRI8sJVX7TRiV8g1UyVRA/XzD7u9Z2ps0Ilj4X?=
 =?iso-8859-1?Q?Q802zAyS4nYgMAuAm5B/c5EV2llDtSi8nTJXV0EDWslMSBfo0ldAJo5+dE?=
 =?iso-8859-1?Q?D7ORWiWg2kIc/n4YIddX5ZERUU0FN+NV9TUI4YtmSPHNrFDR3f0dRnOy+r?=
 =?iso-8859-1?Q?2MEpucCmT7t8if7mt68EXQwoSfnOyF9C9hCiVjraARXWDnREv6A5mBUq6z?=
 =?iso-8859-1?Q?eJr940EnhqW5uBLdOOvQElkN4VqOs7CBQ2iKUaz172KHul6yVvJ91Bdi34?=
 =?iso-8859-1?Q?35mBDWRnL/8W0WfqhHxT738vrgYVteDS86QqZLrtKN14nr6sAB2x3D6xkQ?=
 =?iso-8859-1?Q?Y/9vJFIhJflMw7am6KOrGRNPB8POvG+mSqLe5KW3MfvWh+n+/rP1qVhznR?=
 =?iso-8859-1?Q?IuE6AnqLj/Y/hOw9g/64qV1nhgGYaneRvZQvzDWNYubvBlp7B15uMMucQj?=
 =?iso-8859-1?Q?OcF4FjsPtYIcf2jiArP6y+fAYSmCVhffC/jKQessbLYqrpoARe3oaLtWsZ?=
 =?iso-8859-1?Q?bpiOU5P9zB4gf4yfzXSXT6pWbZ6SQ5RtYcsROnNIoJUUUcy5WD4DJiLg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f55888a9-2e6f-4654-fa8f-08dd49fe458c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 18:10:59.5959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ICWe7gHARUUELPj/LaBhXkAXr7EKjoxQ4eqNvB3yAPfKncz2BVgYnBMiBbItoGzhJaovxNLNVejj/RqdUSOyNe7EiYpbnBU6Ammi7AdZbUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4862
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

On Mon, Feb 10, 2025 at 06:16:58PM +0200, Ville Syrjälä wrote:
>On Fri, Feb 07, 2025 at 04:41:11PM -0600, Lucas De Marchi wrote:
>> On Fri, Feb 07, 2025 at 11:54:03PM +0200, Ville Syrjälä wrote:
>> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> >
>> >Something has changed in the hardware on LNL/BMG because
>> >HDMI outputs no longer have the extra scanline offset.
>> >
>> >I confirmed that MTL still has the old behaviour, which
>> >is a bit weird since both MTL and BMG have display ver 14
>> >vs. LNL is version 20. But can't argue with actual
>> >hardware behaviour.
>>
>> <6>[  210.368608] xe 0000:03:00.0: [drm] Found battlemage (device ID e20b) discrete display version 14.01 stepping B0
>> vs
>> <6>[  412.999204] i915 0000:00:02.0: [drm] Found meteorlake (device ID 7d55) integrated display version 14.00 stepping C0
>>
>> So 14.01 vs 14.00. In the driver:
>>
>> static const struct {
>>          u16 ver;
>>          u16 rel;
>>          const struct intel_display_device_info *display;
>> } gmdid_display_map[] = {
>>          { 14,  0, &xe_lpdp_display },
>>          { 14,  1, &xe2_hpd_display },
>> 	...
>> }
>>
>> So maybe we need to check for the full version >= 1401 instead?
>
>Just another pointless detail I don't want to have to remember.

we don't need the pointless update to the driver X months/years from now
when another platform uses the same IP. 

>
>Also it's already a huge pain in the backside trying to figure out
>what new platform has what display ip. Someone really needs to at
>least document this properly. Or perhaps we should just put the
>expected display ip version back into the platform definition and
>then just double check that the version we read from the GMD thing
>matches our expectations.

there's this indirection with gmdid_display_map and name of the IP, but
other than that it's pretty much discoverable. From the bspec pov it's
all in the configuration page for the platform and you don't even need
the IP name. Example: 70821.

>
>Until the hardware people get their act together and the display ip
>version actually has some real meaning we shouldn't use it outside
>the major version IMO.

it already does. ver.rel is what we need from the gmdid here. And it's
used on the graphics/media side as well:

	git grep VERx100 -- drivers/gpu/drm/xe

Lucas De Marchi

>
>>
>> +Matt Roper, +Gustavo who may know the right bspec to confirm this
>> change in behavior
>
>None of this stuff is in bspec.
>
>>
>> Lucas De Marchi
>>
>> >
>> >Ville Syrjälä (3):
>> >  drm/i915: Fix scanline_offset for LNL+ and BMG+
>> >  drm/i915: Reverse the scanline_offset if ladder
>> >  drm/i915: Replace the HAS_DDI() in intel_crtc_scanline_offset() with
>> >    specific platform checks
>> >
>> > drivers/gpu/drm/i915/display/intel_vblank.c | 13 ++++++++-----
>> > 1 file changed, 8 insertions(+), 5 deletions(-)
>> >
>> >--
>> >2.45.3
>> >
>
>-- 
>Ville Syrjälä
>Intel
