Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7337B8C05F6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 22:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5351131EB;
	Wed,  8 May 2024 20:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cLD4GxG7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958BC1131EB;
 Wed,  8 May 2024 20:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715201704; x=1746737704;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ivwUUdSO9B1rn41c384Jiee+jmfQI5kcz9LbglFCZ08=;
 b=cLD4GxG7zCCXNaSF1jO3rkhr7ShHE6R5ySzkHXMSoGdp/1ttRJjf+nXY
 2WYuUIyn5GDHO6v32ieoE7HPu593QZ5UjHPwWRJyFFQWhBRdz8mfSSk7V
 jiaA/o9HevUqeIcVrgeLiNnFbwLe5/JIue1XzB1s1kHoPxpY+zQpvyAvF
 TqtHL4RCeWjyNNPukW7UXx/sAQsvzlXLvH0ZrLTmdCZCQZWaBRbhG3hWm
 /xNPuBIL2BAUaklnR+uqQWJYqg80D+oS8J8l7yeiGBT5w35xtBw0r3FKH
 2g675ZCg6luzvxxHqKcFODmSM6iACWwqJK8XaJpNsnfj195YDL/+xwUU1 Q==;
X-CSE-ConnectionGUID: 4iNcwBrxSXmwloDk0z0N4Q==
X-CSE-MsgGUID: WLU3HgcWSeG12gW22WWMCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10940974"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10940974"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 13:55:03 -0700
X-CSE-ConnectionGUID: 7qOCAIePTQqUSxzZM2Cg2Q==
X-CSE-MsgGUID: HSmuQ2yNSTisaZtuUpzw3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33847547"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 13:55:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 13:55:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 13:55:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 13:55:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 13:55:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=inlH5BQcqjF8lRrMsrjDnk5USwwhRLZzKBz4phgeGc88Nf/1lJXI+80ZhwS8ebGRufjK48oJP+O+X+k+Mzn4bLXZEkFxVw1GYB7yeC0rZKFvGGh4gTGhc1TP/6OiHboA7BPNCgOYO+CZIgme8fy2ujGS7QjvGu6o0/f0FsXUM66PdE4estY7OpOPE0jKpkL8bk/u/pyxfeHThBBzreXnRydW0trbo/BamXF43OwsFCshWj+U13k63mNcA+kVf2EfTGV/aGwZPGjLUcpeIR3SkZ/+/pHzkAvamulHU95cfBfOnvusQJYeIJZbv7NXuoc9TP/wQWxeP4llLI0t7vpGFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q1zreyCal3FIy423YuEYAsvgIze9/E61Igwt23+9V8M=;
 b=PAT8qnpvfC+aWTajoqv8FwXNdyL4Vsqbd8gIspi4K6E3AnGUbOga0OTNorwtyF45RE8QZQpPd1auL81LyPOQfcWnbVZe+lgrB+W7WIMIHjM30t6IoFJoFWNVEFHVklsYpn9hCla9NyvtGyzZXjMDeqUaEVhcx/+zRX0nqGlC9FTPjQw5gFa+hvU63r4Af/aT8dNKnxA3AelOiHkPk4ciMYnTDvcGQZXp1+KIc/nM80wGg4HgEh3rj7eK0iBVDm/1oXEtNcCiduo8rkAWcoS+swleiQ/e9/8JFi/6OnAxmGxkDd6oRD+frpMhPzu//p4hI3A/WVBM5Kn2UCtL0qMMbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB4862.namprd11.prod.outlook.com (2603:10b6:a03:2de::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Wed, 8 May
 2024 20:54:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 20:54:55 +0000
Date: Wed, 8 May 2024 15:54:53 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Oded
 Gabbay" <ogabbay@kernel.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH] drm/xe: Nuke xe's copy of intel_fbdev_fb.h
Message-ID: <vhkrhplkhep2agw7f7igvdycz4vdtv7skj2imk3jzmaleu77yi@olrsv5d5f75v>
References: <20240506183331.7720-1-ville.syrjala@linux.intel.com>
 <87msp2knor.fsf@intel.com> <ZjvYFkUbsP_hXOG4@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZjvYFkUbsP_hXOG4@intel.com>
X-ClientProxiedBy: MW4PR04CA0348.namprd04.prod.outlook.com
 (2603:10b6:303:8a::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB4862:EE_
X-MS-Office365-Filtering-Correlation-Id: a6bdda26-3622-48bc-9e7a-08dc6fa11d1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?axiyI39ikpWR7iu9Y4ReVBkLYCgdECsxqgxjgN4h6pFo1WhoRgYWZOyrrM?=
 =?iso-8859-1?Q?g1kZyEqBEtpsKfjGXfTke4a5TdmoonZOmo4qcvRkFZFbnjANHW0m5YxaQ5?=
 =?iso-8859-1?Q?zAu5dwrlbPnZDx3Xhfo1YY+OV287UwLhDlF24yVFzeu6fSXsURRmnUPBuZ?=
 =?iso-8859-1?Q?+Ph+MEnCZmcfUo5/RVSCgwHQFLWBxYDVpaHw+ztEOgSv1MKAIALGRwxn+m?=
 =?iso-8859-1?Q?DOoznxjKy+oVNZTUpDoESpZJK7U10AbJTB8OI0QAriTYtkrdJLkL/HxH0f?=
 =?iso-8859-1?Q?NKPwXWxHNFLeqIBnQri0+sbY6DsK8jwDjmjb9EVtYdSFF+4IusAc6TXH3+?=
 =?iso-8859-1?Q?fXOAzti3XmRis+r11MixuBRbUZCF/4SQNA0IQPLNbQ+IAR47tmPXu2hC5h?=
 =?iso-8859-1?Q?dfcBvA3oHyRB22MkofpsIBX3wKZG8zRaQKSVj4141kPt+mkvX6ntYYQ+TO?=
 =?iso-8859-1?Q?wqhK+FTkE0WseCaYtgJJF/R3K9tDbnzDdiNlIzqbbpNsd6z3skWqKkZvXD?=
 =?iso-8859-1?Q?Q5ghdCpFxE9i0wq06aWkF8X/MGiNNwqYbSQUlixghs/YrNLSq4kTbO92ps?=
 =?iso-8859-1?Q?/sxki1PM1GrDqMOw2qNpTyLXWhm6PBaNSnR+lcGn/yyz363+GRk9ZAz77x?=
 =?iso-8859-1?Q?cTlNpKgw/HmH7+qMMHDCSTCSrHp3bsYKftbnXKQgwNHwttqWXWC++a0DR4?=
 =?iso-8859-1?Q?cpBnq4knzcORgEHYk53o4CmsMQgf6xR0Dc9BNSMstl0txhsHQPf5ccImKx?=
 =?iso-8859-1?Q?f5q9PS3ftxFOp//B/xLEypwrUSjsTUIiIEENp4ly9A36WFZk5JzvzwJoIk?=
 =?iso-8859-1?Q?xiiArhOHcvfPib6iBMMLwqxv1zbiioiBtAaPvwiYRzTMidy8wjwwGf8Lr5?=
 =?iso-8859-1?Q?GG0DSyJ7596So0iighMODWQXDtPGlwWS/CUjpJ1vqrUe1FU1C0bQf+Ie5x?=
 =?iso-8859-1?Q?QnfC5p9r+Edhee0YQxOhFjbhPi6o/UaDT5eks1XNtSUiQtoSobr0oxZbbo?=
 =?iso-8859-1?Q?1L6902AI0gA3G2a98ZwcpFmECIzW5cLrBJPUQUvj03iOSJytBJdc43Hfra?=
 =?iso-8859-1?Q?YXDGI1hYWUMX12px8uf82bTxi5rwgS72HM7rX2SW+gqUvLimbT1u2ukBml?=
 =?iso-8859-1?Q?1Yr62s01WSVnyK43UJFVTRNpsIzc8fbGtwISd1A0Nn4D3Vkejs24RqBeOm?=
 =?iso-8859-1?Q?vzJj/qOMgwXkRULltLt1Vis8vd7ZJBrFscpnB8CcT4uX/O9YSF4Zhd272N?=
 =?iso-8859-1?Q?aNgAcwPpkNDha9LzPCkrei7w2aikixs+EMZCdTLwiTDhIzYpypkHQmbT81?=
 =?iso-8859-1?Q?MW0rVtM3V3pK2fjqfo5GVhIUcA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?KAyf6PXZj3ZwQ1LGYDHND7sNbNsYWB3rwfK9Ohw+fHEwhDPzsNVf26uKbt?=
 =?iso-8859-1?Q?YTPtphyF2RxZntpq1l31im17+Cg5vRpHFMP5vkXTCYI9/5ZJz3yZihlASk?=
 =?iso-8859-1?Q?nzWIgvm/iXxwBT5RxAbohLt5eNmBS9Ttq8vcHMVDnrnltPhYSroPzkFi2l?=
 =?iso-8859-1?Q?Td+5RG0M7Rvz9Zu+zLmAlVzF9GXGgJhaEFQj3iJNhUyukKDANXUZpXziqf?=
 =?iso-8859-1?Q?yrX7PxktUMcuUaQkp5PjtFsld5ePyNaWH6UVfRBWXhLjNVYohznkKolUC9?=
 =?iso-8859-1?Q?Z6dd3nFu5Fputn0OVLuJ6sDm43cD6qswg5guse/XONWxv4AqtGvrUhuloC?=
 =?iso-8859-1?Q?2DBrVKaQf4guFFGGFRXA+MgCQDISEnWsyRFuMSf5I93C6FRxsKFjgPz5sn?=
 =?iso-8859-1?Q?7PhddLgDZPn4KDHf/W+hqvv+m/DTQuQrYwQ4WUqK+GcU9q56X7ajHGVlU7?=
 =?iso-8859-1?Q?LzzU/U4kGct+qE2jdsjL79mcMIQJQ1X8FTd6FfeFLUbexTs3RJh7oNUWZj?=
 =?iso-8859-1?Q?r/PjGLnJgjzsKnuI9xzOX4vc35k5E+JHS+TMVtuWND0lANgzPpeY2Wb+Ik?=
 =?iso-8859-1?Q?26PKhb591YqXKWNZQ8MszmBfka6mN1qyro9jLBvWsqq6wjAPHQsEbRIPea?=
 =?iso-8859-1?Q?c9pgkM0cItRt44tWdii/yKK0WmdzZN4ZNu3FEoiV8lWxsGgAo+tBSUWBtz?=
 =?iso-8859-1?Q?khfUCoEBzCiyAv2uYFARDOV4pz3d8H9v0nMfTbPjSvUlJIyWgtIwN4QqUY?=
 =?iso-8859-1?Q?7F+n23TUxDNLNUlGHdJmW3BYS6SHBanSPVecsxN1WPxW8vallFPk088nZX?=
 =?iso-8859-1?Q?c1wEoOlyUbmd6wBf+eaYFChsHaoDYOj3LejXNa1xWif8pkzi82Dx1Uw7z4?=
 =?iso-8859-1?Q?MKPWrjG3NkUUvGmaZAqQTQ8Cf1bySTWVc8vGdz6qLArsvqYfnUcw0Nlgpc?=
 =?iso-8859-1?Q?BbOQjzVFn0YJButz0CSh5Y4u0SOjoYRj/BiOJRdJ9PiGk9XWQpNP7ulyRC?=
 =?iso-8859-1?Q?vJvorfkYBgwi+ptRqSXzQHAojDcLwMNZ+XzYI+vyAArExIoPY4BE0gTlEw?=
 =?iso-8859-1?Q?VP2vBXVXzcicZvIl9cus8o1lRpSxE0j+U7FafpNiomGel/b+hiTXSREUx+?=
 =?iso-8859-1?Q?RL31CKwMDGtDtiWj/o16bKY4WzuEg4Wk9FsqEmBcBXtr+qNvAUjt4otkJp?=
 =?iso-8859-1?Q?K9mlIWJcgRICPctjIrRZDBTfdFnYF2q6gSQHqRTwsbN3naa/w4jkpdSDYc?=
 =?iso-8859-1?Q?F4ZVoB2Qh//0TaewCgJLQhK0XucYPX/VsCt2AoSj31BDtIoDzY8XeonCzf?=
 =?iso-8859-1?Q?NTRBfKDdzrGRsncGuQhjlvO6/+kXzkyifYxJqXU3g+PXZAk0LUrLrvvA/q?=
 =?iso-8859-1?Q?I1JMxOpsAl7W1zvZZB3JXaicrQOwfmkFejuXwev2gQfPWFhHr7u0h548BW?=
 =?iso-8859-1?Q?85GHQrMLYiTuM7NLAkVBTXQMutGlr8bhtWR7Rd+fz5FI+CWN7dk6w2N6jG?=
 =?iso-8859-1?Q?Cpt/UMyXQHP/q5sqMJlOdh92yiThU20Vn+kU1yVW3r0xjrWhrC4YVF/Gqk?=
 =?iso-8859-1?Q?2pPvbY7VlckN10a9GD6e6sROWpKX8pDnA+wzb1896MadrbLQ4iRMUjvDEr?=
 =?iso-8859-1?Q?+PobApFsqg8sME7kMK2CKn9x8Z1hKEuUH+EXgAsb8Q4kPwtFOtAPNGfg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6bdda26-3622-48bc-9e7a-08dc6fa11d1b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 20:54:55.0600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tuJ6WW/tWhmeMPSPakxEmqM0gpO86PPAWRrOJbj0joZWJADd0VHbSr6Q5deBO08MvyAMGF7qkJjtEWAqy3eqNl9Z3V+B9DePdtGT1vwjoDE=
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

On Wed, May 08, 2024 at 10:52:54PM GMT, Ville Syrjälä wrote:
>On Tue, May 07, 2024 at 11:53:40AM +0300, Jani Nikula wrote:
>> On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> >
>> > For some reason xe and i915 each have an identical (fortunately)
>> > copy of intel_fbdev_fb.h. The xe copy actually only gets included
>> > by xe's intel_fbdev_fb.c, and the i915 copy by everyone else,
>> > include intel_fbdev.c which is the actual caller of the
>> > functions declared in the header.
>> >
>> > This means the xe and i915 headers are free to define/declare
>> > completely incompatible things and the build would still succeed
>> > as long as the symbol names match.
>> >
>> > That is not a good thing, so let's nuke xe's copy of the header
>> > so that everyone will use the same header, and be forced to
>> > agree on the same API/ABI.
>> >
>> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
>Thanks.
>
>I was going to push this to drm-xe-next, but I should actually
>push it to drm-intel-next since I'll be massaging this stuff
>there.
>
>xe maintainers, ack for merging via drm-intel-next?


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
