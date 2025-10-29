Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D4BC1D938
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 23:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E95410E860;
	Wed, 29 Oct 2025 22:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6ubOzKR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE9610E85F;
 Wed, 29 Oct 2025 22:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761776070; x=1793312070;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=rYizudGk07EY6ALMtcEX8nKItRtSUounyiW5xoDe734=;
 b=c6ubOzKRZkvuGquvw4TKVL4RtMCORck6RQnQYMAQzchSjLdFIcy0CeKq
 W2lOA+pbT5V+MnvB650FxgsSXaaJU1tuMfstKNpRffOLPEJv3EldPANWe
 rc787LcPbtA20xePjsWjVF0y4YqxHs/NQqk8rVHptMXav+Qtpj7JBPIj8
 bj/VfeAkkQMWAJUtbMFhoVxCnzUo29W+RspgigBQWCA2RF8tJSACbTIjV
 hDEa0IJOjl5SuBfc4D0UYiAtHkS46yA1W7g+ZL9mj3bLkNgRAio04+JGo
 Clhp1AJ89duwW1UgxAIp2fwxWm3y6uKLPiosMW0yyxTNO9Ktss+fi9eHE g==;
X-CSE-ConnectionGUID: hIHRvwJ9RuqKWSuI4nlx7w==
X-CSE-MsgGUID: wpzrqVjVShqHJKcVS3NvPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="74509744"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="74509744"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:14:29 -0700
X-CSE-ConnectionGUID: z4XkTw13RJ2/RB+NC0L16A==
X-CSE-MsgGUID: Z32MKqCMStyPtFhFt02keg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:14:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 15:14:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 15:14:28 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 15:14:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NC00XMYVQHENtEcs5PmtmzCc+W6mEuaFzz11TzfapvfjZiknsmQv3ZaW7cGbSGBdgvW/Fk4sfLFn3BOKaW/ibwG5sy/2RAbPDcTg3YlasVkQgCp27HRb7WDEyDVJgJvH6M2bLQdheIVGNUpc3084/IzVpZDpXwSyWjlLIsyrPBdF/y+AHyASh+fAZJN/rgJecoQAD0+udZEzNPAWO7nUsgeng7GU9l3zxkdxImPhhtrXz2hoSacvaeOK/JJP43hbKUOW7b+0RABHkML3X1YoZs50ik18hy/13ycO/YhbFUUmxCeErNU/y80sSOe7Kdl3TOFBdZ+2+PJ1BiR6aWYyJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4qvx+mQ9DMEQlaWTtkyQkt6bwDw8YwD7vg5+Mlpkles=;
 b=LR06tKCu4rsRKjgIfcrMkG6yivsgbkedwFOP01X/Xn3s7lIqLHhjHUi7/M1hO86IaoUfeuiP/gFWPgwBu56xibnkQxbdGPAgdP2YNf8Wr3MkxqpVcYTgXK5wQhIydHdxa3H640NoN0p8wGCmFkLpFGz2yoWyYztVy+S73pSqeHUADkqOsSli9soHGGf9ZssE9pd03b+SXhtm+Kb2sISe9cRkvFdvDqTJI8gSY0Z7KjS2T/MqFzo0a35gz663bpqBTbPlxmhL720Vg1lxSGwKKYVsmvgq1dfP9HfVAM0SAKxMgf/P5lB1NacjVeDKHCEBcEEMvmFeemRd2oQDxUW8QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB4910.namprd11.prod.outlook.com (2603:10b6:a03:2d7::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 22:14:26 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 22:14:25 +0000
Date: Wed, 29 Oct 2025 15:14:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2 19/32] drm/i915/xe3p_lpd: PSR SU minimum lines is 4
Message-ID: <20251029221423.GG2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-19-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-19-10eae6d655b8@intel.com>
X-ClientProxiedBy: SJ0PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB4910:EE_
X-MS-Office365-Filtering-Correlation-Id: c7347d8e-76fd-4935-10fb-08de17388561
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?/E9C2EfxgG4kIC/U3BZvV+z5PB6uNQHdw7fzuWXEXt9HVh8Jo/BVqDUrWF?=
 =?iso-8859-1?Q?8DdrBQ31nIjQRepH6p6roGUOW1cl/KjwM1n2srKVvemPL9i425WlLVxEeZ?=
 =?iso-8859-1?Q?2Svy9KgH5BA8X4/wzUBLYtCW8EVTEJr5j1BMZh9G3P/6BXE+EL0eVUcU/h?=
 =?iso-8859-1?Q?G/rL3q+XJCN7o1dsqvxrqmwJ79H+XJnvDK8FpovAfb972iGQjWkvt7Lzue?=
 =?iso-8859-1?Q?7WmJKLHyGXyLxaFgw5NtF6yAsda5xuwC7ZGvhcxa4lddan8pjRReyA27br?=
 =?iso-8859-1?Q?YdMHl00m42FaYEycdu0HZOVrAR1jpjLhW9HuPdzf+IJVu7M366RYimL+UF?=
 =?iso-8859-1?Q?hsFL1QMmSTUIRf7Pdsa+Da89k+2WFCtiRp9zfNNISKhFEI8n6VHBVaihP1?=
 =?iso-8859-1?Q?91PFwbt428zPg4TwvuYDJw1njWCvlwagfGV0mIn+MZMyx9KP/chToDQWd7?=
 =?iso-8859-1?Q?OuG7cKzrqDqK22FOHZ2PG2z9qZuiVXg9MF5bZ7mPp3RfFktYbQpYHhjJvo?=
 =?iso-8859-1?Q?WlVBKs8lBj9hL1yF6mvD4pL+jOfMQon2iX5+osyYo7evaP7MBO3yiE+1gm?=
 =?iso-8859-1?Q?jGDcRPjJV/4dxdmK16mgaStHmaa65CjRLYM8i2w5wvkR46BxQt1jUZ/TjJ?=
 =?iso-8859-1?Q?/l25HEbZJyLhWbHlyqOrjONivQdBXuMPMwUPdHSH7zK0VfgPYnT4g33UBs?=
 =?iso-8859-1?Q?I2u94kULqc/QIQ/XsWnnYAPzv47Fbi6xmU8vP7u/9ObpXGDtYckQFZUiLT?=
 =?iso-8859-1?Q?N8v0Z2ajCWfWEY6bRtV/eh4NRJABmq9FaghRHG782kB1q7By7kVIG5TVEg?=
 =?iso-8859-1?Q?/KOcxbfQDb8jG2HE47BQZ3fXL+iM+RyWiXFT581Kc9Mx1v78T1RroKXfTe?=
 =?iso-8859-1?Q?Bd07FqB+WuU2i71Ya9kuvtRgZ0JRw9lWPbjXXcS0Zo/oa3qcbBxkZVh1yA?=
 =?iso-8859-1?Q?aiC2H2Dbv9uqku2g/KZUJLVFBXOI7LRhKYyoOm0P8111lvGLFgllrktQuh?=
 =?iso-8859-1?Q?fhXqEQfDkYvPiPSdd2kcN6kphF5x5PC+/Fp5sE2FWn3eU6aHd4x0izArwk?=
 =?iso-8859-1?Q?qw6K7Jj0ApJqq6V/Iduqdm4VSYMBDXiznVQcrkInSgXfnE2q4Ildzf/rHT?=
 =?iso-8859-1?Q?OjI9crnbUvZN2I9Qmm2HiKzU63CsMAXBZqJXWxctHxzsFJXTaDZiwMXdr/?=
 =?iso-8859-1?Q?Ju503plS2byAZ/VZyt0tp9dVeji2SEvwwFJB4m/pJiTDPQIRUUe5eE9/Xe?=
 =?iso-8859-1?Q?uaGO1zUK1prVy8nj7UeQ1zmdeE0imM8UYvYttfrJJkFCZCCvisipu6zZex?=
 =?iso-8859-1?Q?RXeGlNP4tC8Nkh5frWn9tTeD/KOT+Q5gJnnR/ME/hMXp4W9hU5azRK7lZT?=
 =?iso-8859-1?Q?LQi/+qeKNvWxYEbAdVGKGPg+wNRNchHHgfkvjPKFif1cmBaVP8Pa1KDaCw?=
 =?iso-8859-1?Q?pH9m+HnxANtXpoPxQ/G+bZAGPnU4mTKvCT/DxViE0c4SzIaKJ+J8n2y8kI?=
 =?iso-8859-1?Q?xLya3p2KQQE2lUv4F37+7N?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?m8HThfizEVSxppithinY4auK4ZGW3v/11j2edgnryW4Y3QwSfsG61H4jrG?=
 =?iso-8859-1?Q?C7kuK9D2s1vz0L7dhcakiqESy1Fu6tC3dMfiH19quHnF8+qSRS/C881KOb?=
 =?iso-8859-1?Q?CS+IhuQU5zr+fjw61EWFNcnlZzksT1MbT1b7SaT5I0fTOKozDh8DlJE+az?=
 =?iso-8859-1?Q?1/GcxwVmVG/UktA8JHokYaFx9Ho1azhSVpGgYUiF0wAbjA/TIr7Cux0b4e?=
 =?iso-8859-1?Q?f+A4PmqNl5Zq6jY01fMWVeEaQKaJFAa+L02CO+LlcxsosMwJ/SYRf0PR5N?=
 =?iso-8859-1?Q?yvBCED/4ptg1I08OIpcclCC/NeQsZYd1HimVWaw3TRbVGU3W1ZkBGiHzf/?=
 =?iso-8859-1?Q?4stNZQd0l+Yo5hPq3ZhtpD6xnrp2X2rb5frw7YnGQvLRlWPU8/yOuchmxk?=
 =?iso-8859-1?Q?ldcxAd+1duYPhX8yMQLhR/qPN5Q35k/fZmpQ4ErsnC8o+p6eXFqAnjCFSd?=
 =?iso-8859-1?Q?y9wOgi9uUBaQ8Yoq8FjkJY9QMCwA/nZ+TJ+yF7UvfPoiY9LKFL8N05IEYu?=
 =?iso-8859-1?Q?BlSw/Vm+rc8SUVmWOmLmpSdtmX4Gy8CIimxgb4/lIURGtR4SZKiqyfmmas?=
 =?iso-8859-1?Q?G73qRzqrTI639UtZo/q/z3HfTgLNp34dyQanqm4a2Tb7utV6J0S4u3Ub3c?=
 =?iso-8859-1?Q?vC8F6j5AC8FfSGWEpOBq4FBaupd54U0T8bvxl6T8Db//+l8x6IU2AY3oX5?=
 =?iso-8859-1?Q?DR2PAUhhH2G8FANxY5e3GgQ01K+Thn/YLzvEHkMCfvwNBQyit/6+cosZZ/?=
 =?iso-8859-1?Q?SQXvSJO1SyyIqCqJix+WB+l8remOCBUO2i66Ve+q/MDceltV2/OePXwFEa?=
 =?iso-8859-1?Q?C+cjdGBYhUWy0ZnEFL4N7UrpqevZ2JMmagPPqr11eTA4QHs9uFQ/5vcaDL?=
 =?iso-8859-1?Q?ru9eHwpjIs9r/UsUQBt68dOImfZ0/ssL+nMJepg3RhFpRuR51gyA4u+dST?=
 =?iso-8859-1?Q?n86yK0fDojZ7gz64tkhNaLszR8nM7D4QxKGobPET3mgR3EqYzM+MIeiXjD?=
 =?iso-8859-1?Q?5FWgzWallXB4P10aZWHeknW4jRoR+0viq/hRX0OrEopSK6S7q2KKlbXTeF?=
 =?iso-8859-1?Q?T8giKlkMDcMHFtBbO8a1JTPJmgxEQKBmQmhOTo7OBuNo4HxeTa8KOv4Lif?=
 =?iso-8859-1?Q?LboC81xkGIuXN3vuLHRScIlZQWwALY6gZ1jQhfQdHf4/jL1ZxxC7EXk9L5?=
 =?iso-8859-1?Q?UTJYbb6TPoiArb2GXc3L+RxD7P2p5+5UbgEyNh4uH0e7p7r26f69pURD2Z?=
 =?iso-8859-1?Q?3mbvtCedGgVLJcHgzJh/HzZHh1QU1UcvrZUrgybAcMFL0dLHzBm7LdYWMw?=
 =?iso-8859-1?Q?mPrn3qDZHEX1dEcqzE4OtRXBuAEhmQ19DynJTU0m9e1c7NDRUZPdbCNKBB?=
 =?iso-8859-1?Q?VC4eOridFPwGvfS5zO4MYmK1IxexNnuk0G8OkcZudd1YKMBcy1DG4WRiNR?=
 =?iso-8859-1?Q?Y/yokJmSGdDqg9NX7q5bPf6beFDOlXaugvBo2aqLPhizw/EOzJOXV4Dbd0?=
 =?iso-8859-1?Q?jD0GL5deY4vdhw8P37Xx+GonNr70W+7GbHmPXoIi2Q82/CvyGZLhBy+YrY?=
 =?iso-8859-1?Q?o3Zmm18PA2b7G9HwelmaJBLQrqg7MbN1TYu5S8NcCzSth47hPNsc1jejRm?=
 =?iso-8859-1?Q?ZD313N2kcsZFf3yzyg/j0UBHB/2+pbJEs/ZvmLGKHy4g4J1qZdhkiFJw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7347d8e-76fd-4935-10fb-08de17388561
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 22:14:25.8259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G2Y+inUQCPEzCRJdCoVntueKQt4S+7Ocg/Y8lzOXJTYDBazIX4t5JF+wpi2VuTSe+Vx0rPI5Lfu9fcNcvu+KfFKJFLDTKX7bEnjJ1YN1dC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4910
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

On Tue, Oct 21, 2025 at 09:28:44PM -0300, Gustavo Sousa wrote:
> From: Jouni Högander <jouni.hogander@intel.com>
> 
> Ensure the minimum selective update line count is 4 in case of display
> version 35 and onwards.

I don't think this is true for Xe3p (at least based on what's shown
at the bottom of bspec 69887).


Matt

> 
> v2:
>   - Fix style by dropping extra spaces after assignment operator.
>     (Jani).
> 
> Bspec: 69887
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index cfc8b04f98fa..a23519b9b388 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2804,6 +2804,29 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
>  		intel_psr_apply_pr_link_on_su_wa(crtc_state);
>  }
>  
> +static void intel_psr_su_area_min_lines(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct drm_rect damaged_area;
> +
> +	/*
> +	 * Bspec mentions 4 being minimum lines in SU for display version
> +	 * 35 and onwards.
> +	 */
> +	if (DISPLAY_VER(display) < 35 || drm_rect_height(&crtc_state->psr2_su_area) >= 4)
> +		return;
> +
> +	damaged_area.x1 = crtc_state->psr2_su_area.x1;
> +	damaged_area.y1 = crtc_state->psr2_su_area.y1;
> +	damaged_area.x2 = crtc_state->psr2_su_area.x2;
> +	damaged_area.y2 = crtc_state->psr2_su_area.y2;
> +
> +	damaged_area.y2 += 4 - drm_rect_height(&damaged_area);
> +	drm_rect_intersect(&damaged_area, &crtc_state->pipe_src);
> +	damaged_area.y1 -= 4 - drm_rect_height(&damaged_area);
> +	clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
> +}
> +
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
> @@ -2912,6 +2935,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	if (full_update)
>  		goto skip_sel_fetch_set_loop;
>  
> +	intel_psr_su_area_min_lines(crtc_state);
> +
>  	intel_psr_apply_su_area_workarounds(crtc_state);
>  
>  	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
