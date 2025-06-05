Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C9EACF321
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 17:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBE010E309;
	Thu,  5 Jun 2025 15:35:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RbM+UAGU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2CD10E2FE;
 Thu,  5 Jun 2025 15:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749137707; x=1780673707;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eLTOtby3hu5ysVnOVCCRD6TpjNBp9mB3uVGzk0zK2qw=;
 b=RbM+UAGU7oGKAMR+O9nF/DMZK9agFr8iGw/YiOo9fu5iTPXbXiiAaiW4
 y38q37NLnV8+3Rns+5jXOdIO6RsEv30o/F9GUwytL68sT86PrxGU4R0Bb
 Do+pRFo5eAYOE8kIky2hop3eL/63B6qlMFYGXkl2B3jOs2lKCoPICFNxc
 pvz1k5sezjZYTUSHjB3fzoKpQp0Kwh9D9S3u3ADg9uP6nHp3PMx4f/k3n
 V2/Rooy92ll+SsLrMQzs3I+b4rBFZJ6gx5ZAX2y0W2IWUD688BY6klrtk
 WqpO5P1RsBI2m80wdVbPTQdb9MJo74QpKmn/Jchkk75oxuGFxz9AF+INm Q==;
X-CSE-ConnectionGUID: I92svckvTRmpgbm4t38qbA==
X-CSE-MsgGUID: EBujM7BNQAi0fVW4FDcEpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11455"; a="62622750"
X-IronPort-AV: E=Sophos;i="6.16,212,1744095600"; d="scan'208";a="62622750"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 08:35:01 -0700
X-CSE-ConnectionGUID: paxjTCHuTNCCjrgCpNW7HQ==
X-CSE-MsgGUID: KQO1VF4vTL2zAL/6vPLaaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,212,1744095600"; d="scan'208";a="146046590"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 08:35:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 5 Jun 2025 08:35:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 5 Jun 2025 08:35:00 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.86)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 5 Jun 2025 08:35:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jy/4Aw32sePDsICv8XZ3+VGtiMYItozZWAbmE8f4wt4Bav7sEMJFBdwJSCDAAf3/py/+Ay2sfZvKNQAu12MHYa2PbJUXagaemMc2++8o5ZBctlbUtU0IiHlO5eMIb+sUxRoiIN7R+4eGdvnVPSCqCZoF0pMqPf3Fe0lpINv+CuTTfM71k3vPS6yMSGteXMCopTW/KkGfX34XU00E6quGyOGWgIHqrGB9LuKLDeDXEAGd5jcdk0bfwcdBJdvY3uHpy0ukmVsnRxYfmI1AMW0gupQLElKdpgGnbEhg0OZHRvuG3wBFpJ0q1p3rYlejvG2DqfETCrTjRkut3CGzvTFwDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLTOtby3hu5ysVnOVCCRD6TpjNBp9mB3uVGzk0zK2qw=;
 b=Y238UxZ+0NEbCm/1adkb2UM4Pywc51Ggi7eB8gNA7RNn3NVlyOWNL8Y4RiSz8hz5gSRAyy/qFfdaGbTeuKRbKvL9qcn0MLx+i4aoCTh+w/k0YGHRCPpiLny0co2cdBOj6rx7G1szY1dPpNXgXCg2Er4fiIiNTjalC+cASLGp4AmTsXE5MGpvxW+7QIJp5Ensz/aukMK+mzRUUEg8xDBTKzuIIts8W03ZFIBh0EeTAvEmujnqhfwo3euOFIlC5GEjmHrex4rf7oJCJR1C2EyylqvznE3scwyQ/xf1slfxKuaaGMJ0gGUXKnhBqh5tDYBsoUPaSFGjW+v0K8sfvy063g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ1PR11MB6130.namprd11.prod.outlook.com (2603:10b6:a03:45f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Thu, 5 Jun
 2025 15:34:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8792.034; Thu, 5 Jun 2025
 15:34:57 +0000
Date: Thu, 5 Jun 2025 10:34:54 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: split out display register macros to a
 separate file
Message-ID: <ipmzkkad7742bmgeessnbwz5or43wup5j73y7j6bwvxbgst2k5@pgu2bxyol2so>
References: <20250604110225.993638-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250604110225.993638-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:a03:332::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ1PR11MB6130:EE_
X-MS-Office365-Filtering-Correlation-Id: bc6a718e-cbae-41a5-d38b-08dda44686c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+yfyHP9ehAjUKx/VaD9ad8Ibcc6EwJ4pd7GBnZDakklElfxtaO0MNf/Jeotl?=
 =?us-ascii?Q?jtzu3YAK61m4Sb5aJmJIRGAxQkMmDZiQoJ1HMobwle68zEWMv5Nxm7VUEH6T?=
 =?us-ascii?Q?wIWLqWyZPj0lEGoimSDDdxRkxTw7cQygryIE5NpkW8dg4ZLk6sLIwThxOPT8?=
 =?us-ascii?Q?QDdACGqTjdbkw5F4eMOxhyHcMBU3LzSRezp5spgc5BhzfNnmjDClnSK3Vvgx?=
 =?us-ascii?Q?gG+46QZhqx0kLwerONta3/SdW6+QZVpE/4Ww/+TaAot3sqIK3tzoKJOUJSHw?=
 =?us-ascii?Q?5cDMxS+NEpM8SlHYEIQL8J0lHRQEJVeeNSv+s36eKvyh7AiwUttF9iJJLNQh?=
 =?us-ascii?Q?aQ1h5ykjUkUwbQzhQKlu3SYR44Fd0/mDqvSYl1529qXoUTW2M6V56JXI4Kfz?=
 =?us-ascii?Q?14Mpi1dcKLV0OKoL9OdeOWJH9trBl6Xw/VFm0ocbkDngGrlUdXZjHU+4BXbX?=
 =?us-ascii?Q?sW8ZYkW7T0DJQ0neEL/pHPIMmtIS1muHEOqbSQL3oZNNzl4zd36eQ/8iZagg?=
 =?us-ascii?Q?b3OBPT1r4QUrBIrKHYLGOtBhx9NLHGq4IIdyOSSpgBwnV8FDs12LmBXPMvtI?=
 =?us-ascii?Q?R+VBFU4ovUdXMCwz3hOP59MifZodfRW1anrI0cUleYWvz6NsyrKLTzQcsikI?=
 =?us-ascii?Q?5GLB+RPt/47v5a9Q/AAYroO1B2glButebuFlhHV+6P0AcUAWt5WHM4ZgPH9I?=
 =?us-ascii?Q?iR5Ucvxx88syHzL5UPhfZk6P/sToJV9bQS13e+BFWbmjeeBZipipL2xmgPqY?=
 =?us-ascii?Q?hGIZIGmOUwES7QP8bP6aZwnV2fY1aoI5lf3p6UzpXJLoUH7z8rHL+W0+hT39?=
 =?us-ascii?Q?cfhLQB1Zle6ghxzJkE06QmOiRCiUf/kZXcuUjID1nUW0WSLbX4iZlyPZxlIS?=
 =?us-ascii?Q?SIlWWXKVXFibJP3jeMwZwpj2WWyEfQwsiYz4LKmx0FsMwQ1XSgGxN4dkiIOZ?=
 =?us-ascii?Q?vkvwE0diwaO+/L0NXzRQ0oAvmmzxzBQBU6fd4NCMb4Uj64bZuVjFSybl8JbX?=
 =?us-ascii?Q?2lsYG/lrNot+TdjMcnvhXURyeuQ495gXJ57rSWADYVScLC63id2xkVFhSGdJ?=
 =?us-ascii?Q?zbyewLuSwGX56tTWhcNxN9KdSA2w4AQrxKSP4fMdCpPq5r8sKSq6SLUSahZV?=
 =?us-ascii?Q?eYHZfDWB4EPblYx45H3ohrZUBAYnhMniTZmGqniQfmjkbMjkubLafLHdR83I?=
 =?us-ascii?Q?a62P94b/2vl1TxHo4J6PETspm0GxHrMjYEnARZTuQXdKZpRYisiMfa28ScH0?=
 =?us-ascii?Q?0yiNWEEJs+mrvUczv/Sbaf0D+U/QDj5oIpLBx66zEBdTL7dXigs/OYP/6PqB?=
 =?us-ascii?Q?/cDbNO8VccBTdUI1eC/Rv0Gs/3WrENOKmc0ayhRuwPU0QyaIvMyHnoVxrIJe?=
 =?us-ascii?Q?+r/FSxlU5QPthzKvmA9QquhqUbfoS69HND61HK3Dqv7kKtE5ZliDizUVMlOz?=
 =?us-ascii?Q?/RqJoFL2KFc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J0+VMrMFJOU1G7+3EzHVRIsgjwwOqMZHkrajLNYkqrRPS/GSIAlmIAyYZ7PB?=
 =?us-ascii?Q?TwPXYxfRmq/Z7cekBkzIIbvQ8t4OtnahVZ/ppe24kyWgZofso66g4Al252e5?=
 =?us-ascii?Q?VgXEhG1JgbpIjCRLq/THw3M+VplAT2MXanymOeHkJGyGNTIBTsN8HTGAdcOA?=
 =?us-ascii?Q?K7PVk8juaVkh/UpXBlvNARwjZY81Udlk1MeUVhLIQXZre6iJ9w3YHOExgJeA?=
 =?us-ascii?Q?BUWE3cHgkVv0VuTsB4zbfsSi5eJAijHWlYYLOMHLs7hh7lXLHlPKcoMjz9QP?=
 =?us-ascii?Q?R1YkgioZMtiZ0PyjDrmTEX5FWJEJRJiBuCVX/D44qFxBCv7IG43vyN3K8s3W?=
 =?us-ascii?Q?IJIvSfrmW/WAgq91+dgrKxWWR4Sw8EwlPw7P5fmcKwv98xvZ/1wi6lQPgyLU?=
 =?us-ascii?Q?n0UO5Ui46f3rY5Fqxvi4XtbaIaok8oETTEWYKWzE1yVBtbu0J9fSlOL9SHBC?=
 =?us-ascii?Q?1d5os1UJvLibCOue420BTIWErxpcyBnLraPWD6PqeAAr2591btpcHKY7iFns?=
 =?us-ascii?Q?BBmBRmi2nJ/d8Pm7m+Zs5cXKhvxCNDVJM5JQRjMUvkl9x7gDYlOV+ET4HkdE?=
 =?us-ascii?Q?6xT039TIlMgFzJu5AB5tBEQF3oVDSyTpZbhlemxvPPs6Y4sWQBEn+1fc9/N4?=
 =?us-ascii?Q?NQYscUuNMZJwLMPA8sIIZOkknaktn21WX4pEz5Z5ssNLOMxpdZKuWg/2QsnK?=
 =?us-ascii?Q?vmv2y/hSATN0tXN773Njf4HR4ZpxLwk0LVzCKPSZxeAAUu1o34Q5qYyTrq1I?=
 =?us-ascii?Q?tif8tr3dJOHCs0uUny67WzfAQHlgqEH1OGJrvNNbE5KqtE7JuweQTHnEal53?=
 =?us-ascii?Q?bR+aykMS4+gN6Daz7S1L55gNRSEfpD3svJcFkX5Ull1sqbmXOHRur+bpysyN?=
 =?us-ascii?Q?ODMmSz5VYMIEheW55RUEBKMFHu3VeaMf6SAhGb6lgJuGwbhUm2eIFDqI5aP6?=
 =?us-ascii?Q?IzCB3ktEaN0yzrt8y54RiLO24HuA8HuW65CDzhwTnyJmZggfhaxpyMTbliOt?=
 =?us-ascii?Q?aiGqQsmtxxAWuMCK6hf5nJIHXSU5DxF3smOk5c5JcM+HQs8swtC7fp8UawR0?=
 =?us-ascii?Q?4pz26gfmiHLEmtHbW/zlREiBCKn9Lbm1NDq7pO4rLf+AuzC3T3Vqpu5d9LNG?=
 =?us-ascii?Q?VjxQtbZ9gFqdtEF6ElXKwkFmF7i2WHbxTkKpyeN7oYOgxMMqVvsFelDxvtc6?=
 =?us-ascii?Q?tRGsA5QTGnal5UDnRNn1O9tCwEgLLL+wrfly3BggHnncfoWOcXsOBTURdUKw?=
 =?us-ascii?Q?xmHq3v4LRBJVZ4Idk7DQinaqKLIimjTnfa2ScOR2VB89qmOknjZ1vU8Mtqk+?=
 =?us-ascii?Q?0ScXx3sb8Y88T8Fub/84HmSYdPDO9TkuCEsvkfFnueMiTaEwuibcsAhnCYaJ?=
 =?us-ascii?Q?clcdLLnpP0xS4A5IQkWgETfeD+QFlbu+xTY8CbCFVuqh9LEl9OVErXD/Yjlk?=
 =?us-ascii?Q?Lkmp7VtiIjORWcfPDnRFgB0ueycRNAXFQs7BBIffuU122X9eI88C8J306Bpk?=
 =?us-ascii?Q?i99df3WUY6599lbaK+6Cemt/gBGKXj14Pxly8pjpBGvrb0fPYtFJxV2iaLa8?=
 =?us-ascii?Q?3DZKu0CZkJ9Lm6dOpCCb+NhVlvAPOzyCzAhhH/2Jm9276Mu72KwbBVpkk5BD?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc6a718e-cbae-41a5-d38b-08dda44686c3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 15:34:57.4917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w2yQSA8RrBbB2R1EbpuN1C/9bdYLqJlMCybS+n5dgATTCzcUOsS0MAw6WR1k3C+ap1pyjHRB/sMo7F5MYN4D0paznP+I8KtKVA7DxaspP4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6130
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

On Wed, Jun 04, 2025 at 02:02:25PM +0300, Jani Nikula wrote:
>This is a scripted split of the display related register macros from
>i915_reg.h to display/intel_display_regs.h. As a starting point, move
>all the macros that are only used in display code (or GVT). If there are
>users in core i915 code or soc/, or no users anywhere, keep the macros
>in i915_reg.h. This is done in groups of macros separated by blank
>lines, moving the comments along with the groups.

I wonder if with this we couldn't end up moving wrong registers.
Maybe we should double check the address range too?

Lucas De Marchi
