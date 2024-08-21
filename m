Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E8B959F03
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 15:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544988924B;
	Wed, 21 Aug 2024 13:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sfw6t5cV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1558924B;
 Wed, 21 Aug 2024 13:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724248129; x=1755784129;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8dmfYY44F3mr1eAleEGXWKpBnF/5dvO1O4KFasfBZJI=;
 b=Sfw6t5cV58ARn18W3itky0UyDlkHwv72UcJuLkQvOxwzM5x87Bk5Q3aJ
 ZvpBOUXvA0AcIHwWlny/wc8oENfAyb/hSA7fstVxDOBjnoAyGIuAvzM5D
 n9xdNubDQ1CzRFbgPVi9jbcmM9RnQpeLcts5H+Vc3F3BqtotcLL/+dPqT
 5AEiMmnyU2FwRKXmyBm4E6pBHY0pEKmEjf9bGwOL2j1Oik+f9Je7nP9kO
 0ehs14EjWsVz+7qvbiO4frWDXnZd55PPqCrubM6nlj0S9D6wGa5KvCgMi
 Gud84aJkPRPmm5c6itKA4vnCZAsGk9WYVli4tu8TiNUg+zBO5cMiGxVP0 A==;
X-CSE-ConnectionGUID: V/kHlYxSRAyu2cuC5vq0LA==
X-CSE-MsgGUID: yY48rtxpQdS5h1rrQMRkMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33226644"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33226644"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:48:48 -0700
X-CSE-ConnectionGUID: kTDMsZZNRy2jjh2+2RVt2A==
X-CSE-MsgGUID: eYiE59UHTKiLvsXJZ/+LQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61075092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 06:48:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:48:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:48:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 06:48:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 06:48:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RD52FQy889Ubh0TYTk7J3VipVMOgJ4HYM+stiyzraW9ndzPUVoiNf5ull/wcW4X4HwiOHb5jdh1eZgLEDrrhm6bkGD6etYNcUH9j7lEG3TTtTmTAOkFI0hrsQbKxTvFKo8819iotDzHc0l6yE7kE7rlidnIiln0gG9Dfy+H+6LzBB5Q0+VfERohkvZ/oqdAyJ0K88dV8jIh5Z5R2PSZyDCo62cfu8Fz4Y+fLu+vywevTZSD+ECNg7i/PQYAM2/u6YuTo8I+Z+NfYPgd+Xv+gXOxaDRZ92xqm/JqP4j0hTMNP4jW+y4Wh/9Ge/wYgD9JlhzuiBqf79x64LWbIQsve0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dC4baYMa7EJ2G0sMjn7Y2Xi0IJMybuehiLzohQKn2IA=;
 b=Vv6jnkbzZTn1YsEZO9pVTub+uxR0NDZAdZCXUyV5xM+b7g79L1kdnHKsLXQg3houBVj+67zgiY0QqtVQ9O+V9VZqDf2SXYwKVsRPwaIM6Nuo4HekCZ6ZSubWzrBiBPtz71ybuaJfU5twYlkzl4l1PLrNqrIV8+3DL0Q4fRVTbbcA/xBoWSbanDloUuU4ur2sST1ZGq7PvGu85YfMh9nDSdBC+7VkapheREPa8wIBKNOYiGscsQv71mWgduoagQsOLiX9dOqr2+GDOpW5i8jW5UgToHw2XjqKP6raqeLITmPSKA6v/iWcacpM8Y7TrOR4KvxOBkltWk85qOvwrLWsAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7349.namprd11.prod.outlook.com (2603:10b6:8:106::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.17; Wed, 21 Aug
 2024 13:48:45 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 13:48:45 +0000
Date: Wed, 21 Aug 2024 06:48:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: identify display steppings in
 display probe
Message-ID: <20240821134842.GX5091@mdroper-desk1.amr.corp.intel.com>
References: <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
 <20240821095036.2044654-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240821095036.2044654-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0052.namprd08.prod.outlook.com
 (2603:10b6:a03:117::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7349:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f96900e-d703-4278-863d-08dcc1e7f9d5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Veo+pqhdOjFqS5V9UeQ0W89sD+r1MEn7051dP4ozTltdUbX01QRIwvrCo0qe?=
 =?us-ascii?Q?aT97E98JMDONlXrXcUSdrrrFSD0LMcnCoZUsPfWTTYXBHrbWO/4mWNzhIBxo?=
 =?us-ascii?Q?PtzuMTgquSfvnm5utfkDYiM3Z12MNlRB4uaIUdqQrlW9BICpc2iHTmWZ74gj?=
 =?us-ascii?Q?iXIvaJSRr1VhXvnTIfxagK2pGDbCDEH8238UQ0teRvOC/IaHx4PvEYDVigg+?=
 =?us-ascii?Q?pBfC147hTwaBNKtZ4sQ4otwuQ1OjE8MV5GAdB+Vil0eCHzxvxq7OEYKVxNa2?=
 =?us-ascii?Q?Mh0FSq/B8rlWcqqJegZllPmQxZR/KOUXyZB8hF8Xe0OZQ6JmEmeMtBFmLMgv?=
 =?us-ascii?Q?zUa2NWNKrMLMlH0o8rqIUoTuyI3lQ++GXq0njyIdI/XXIi30jgN98V+IqAlS?=
 =?us-ascii?Q?kE2p6ATLbtFKm442fJ/3waMz/nCeLv8IyjqxDgsH9Gr4ZGhohGVI98f8BMQk?=
 =?us-ascii?Q?8/wWFT4+/aguH6w4ZNUjl0Ah326pukpJrdMZtgi/f5/fHE/3XJvb99NRNblj?=
 =?us-ascii?Q?FiX7yOCmkledUTOycSdYNWk4yAkBQ1d2Hc3amlrw/oGR6jXNHB35VYDc8z8Q?=
 =?us-ascii?Q?EHCB/ulQc94OJRb9h5cc9Y9SMM4VimqO86dvn2W0PjHYz5M5PPh3LGAi58tf?=
 =?us-ascii?Q?lsc2/gf3N8Qdv+U+vgdJdKXTEP7Q8LvTzmV1TtRx1xvETwRFkeLn1vSS3q1a?=
 =?us-ascii?Q?vOIVyJqp/9n21uBfgBACBhDr4MfwT7O037xfeesUzU7mSK6nkFQs9dTIsGj2?=
 =?us-ascii?Q?M4Cs6zYtekT9sacyiIXtB8qkcNTvtV7+NNsfLrFBVp+581nhIzJyrq8aA1bO?=
 =?us-ascii?Q?zx4T1eAdnpls1fh1kGVCkzCe8fkINp2ijB8soFZZrAktye2t1MYAyCZmG0v5?=
 =?us-ascii?Q?+M1/LLQ90PUIAESDQg9OUUSpR/9IESFQq9s6Y/25MXrdMLG1hNacFt8PSR4d?=
 =?us-ascii?Q?X/rmm8Sljio1L9vEQBj2ZWQNmDxLlMuGU4FkHxKo3DfRL1WNmoaIWzo+r8EK?=
 =?us-ascii?Q?sBo9W2iQG1eevrvn8VjLdRQjSguqbjrYsOMXn2EM1ADUQjSVGDIGDxOWqLDc?=
 =?us-ascii?Q?89SZVfexxl2YuRrXDmtN57yMAdjLkM1xhvGl8FaN9TvxITUly4QkwD2EBWnh?=
 =?us-ascii?Q?YwqYsMiPyOrPtwdB6DrZfK7hxd2QaId+iNqMmAUG29KW9cTMXtOsS1JshDOl?=
 =?us-ascii?Q?qBxsnfXzN5iDd6oQ+f4d0fcLm6+nz7eq/gZMCyyohz7KuLlyFSDnPhGfNYTU?=
 =?us-ascii?Q?5rWKh+gRXZEOl9LjJfzn0HHLQUM5OPm/tgNBAYGR+7bPxjcRI7xbDHmyRLrs?=
 =?us-ascii?Q?sqL97krb9UwLxpEICROyzjwhOW6/iseBW7Dk3h8AQ69Csg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+HpxrbmuC91YUfglUMvXpmtnhKL9TlrUj9lX0/Qw6YwLUvorgeRodtiXMQ/C?=
 =?us-ascii?Q?K7fJHxd+63G1u1SpguP9SAGt2i1rvwfqwdGfEGLKdlke51gsxyiKrA+wR8M3?=
 =?us-ascii?Q?eXuZszArrJFaOsfQaSTgAL5gqt8uVQtOV38l7wh9DjRlVCcNYSSE7kj/J0Pg?=
 =?us-ascii?Q?VzE1eMd+FytspX91FT6mGgRLMi93QbZPmJF7pUJrRDjbBFTDxrjZt22e0XhR?=
 =?us-ascii?Q?kuVCjqDdedpoZsFRfR4lCYzhUR7S/XW9b5tgGIuX3IBqez6y0r6QwN7ajydl?=
 =?us-ascii?Q?bJBJ5Mpau6qQR+e/oirouCwCwPPNg7c0uL8P1b3/K6ny2r4TFzaD7rcFQhfJ?=
 =?us-ascii?Q?IdAY5cBcG2U8iwlY/Hn0qpNoGJWdMyrd6KAeTQMxW6l/JvTbCJBIp5kOTCKY?=
 =?us-ascii?Q?Oc5FOtfEHSSJ32SsBXqZ9gcaHF27avU5xonP81//TPtiKb5lRx7Z2PatXUHx?=
 =?us-ascii?Q?PIwP1SrZVxYCw8ZtdQfrddDC3t4jM1Bwj74oRtfZrLPMPGAreESpHmYT9nEo?=
 =?us-ascii?Q?UhJO/ppQDja8F1HRpQYdO7Lg8/1DvndX0K1Gi0Qp/JSj4oyXAc3L81dCc8w/?=
 =?us-ascii?Q?ZaBZ59/Wy42x1tJc9ByaJue0gjpL21/sJKFu64lG//fa8qj2dvC9LgBznuyj?=
 =?us-ascii?Q?VDPzKTzldPC90EI586M6iIbft8A51FhDaK0FrwCXOHQYvWWDbB+XET7mJ6HF?=
 =?us-ascii?Q?exBC/HI4M/T9/tIlKQHUeb3RDOjlGHzTDtEqbO7PrsDR1ofg3Xt0hYNmxNJ4?=
 =?us-ascii?Q?16ZYBNpenHpAcpChIqnHtdKU/EOoBFd5gFBkwLtRQcQCo40XO8qxEun9zOW4?=
 =?us-ascii?Q?du5BouBCVlbY1Zme9Xu4B6ALeu+OfmcbeVeIAsOpZYvbQRRXPVl5qh+zHYZe?=
 =?us-ascii?Q?clzjb9KfPDiRUTq3UYfby0AtN46ex9MCKPjYPGWu/0rcrmjyIpyVvknsMb35?=
 =?us-ascii?Q?Bvd8fdK/Mhmrz9eyC+qHc+BiiLIx/UsA7SIj3grWzs75PxT1GVm9AAAGl4g1?=
 =?us-ascii?Q?2+sVYtf4V4QXDaFZzfi7K5Hx6ahtlII73H+e6feS+Z1Ta9sTIkweOyhhZ62t?=
 =?us-ascii?Q?Lz2kvMwZ+yA8/Cn4vmKlLdR4MqjpOalwI138f1b0z5N6TGs6WvFZuH705lAx?=
 =?us-ascii?Q?VPBF701wRCtcZmN3T80+Z40lDWKjSxy7Keqe5+kRPTFyYDZ6/mJNjjmOk1PI?=
 =?us-ascii?Q?962hLPRZz5r71ddcUYDUlBAoG1nHWPXAQr48KnC+1D5g+YLknfppzrVntJWd?=
 =?us-ascii?Q?uSEWMHp436xw8Zb0oRkE/u4Hj7pUJi87y2JPLblpjvYSG7+0ergCsLJMedFO?=
 =?us-ascii?Q?g3ZsOvv/3M2qnZDMghAjXR9ZGG/lbiOqrJK51WCk2AkGCDJu9pWnK8jiNN+Z?=
 =?us-ascii?Q?FibY8hl2P26V+NjX67KjRM4RnF+Sc4+m6qik+Th9BiZkaxhP65EtLAgpN7Zc?=
 =?us-ascii?Q?h95TroBQTzeFc7GP18t7xcKKMnltEgX7JlpQ+Em1ggaIQWBMK607h8m/iAP7?=
 =?us-ascii?Q?YUANptDL8u4zum4Fbrumt39rFGClWNnR5fx02z7ZFnqyqTkJMMYQMb/STE2f?=
 =?us-ascii?Q?7XTrvFgA5a60CnfHujytqsm24nkKGLhWJjb8VPs1QZFQ3CopOBfg8YVfOPNO?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f96900e-d703-4278-863d-08dcc1e7f9d5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 13:48:45.3975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IdF0JWRU7qoXpGtlxw03h6CUu3rCluNBRkPV3MYFqSumE0JmYQTqrIkT0lzuzriZQ1t5SnPRaujfFBEa6SpNvoXjDdgS+/dpOEXDsGbseuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7349
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

On Wed, Aug 21, 2024 at 12:50:36PM +0300, Jani Nikula wrote:
> Both i915 and xe have code to identify display steppings. Start
> deduplicating this by, uh, adding a third copy in display code. This is
> not yet used for anything other than debug logging. We'll switch over
> later.
> 
> For platforms before GMD ID, attach the mapping from PCI revision to
> stepping in the platform and subplatform descriptors. This is a
> considerably cleaner approach than having it completely separate.
> 
> Also add a separate field for stepping in display runtime info,
> preserving the value from GMD ID.
> 
> v2: Handle NULL subdesc (Matt)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   | 225 +++++++++++++++++-
>  .../drm/i915/display/intel_display_device.h   |   3 +-
>  .../drm/xe/compat-i915-headers/intel_step.h   |   1 +
>  3 files changed, 217 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b28d55fa0c3a..dfa923672492 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -16,14 +16,25 @@
>  #include "intel_display_power.h"
>  #include "intel_display_reg_defs.h"
>  #include "intel_fbc.h"
> +#include "intel_step.h"
>  
>  __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
> +struct stepping_desc {
> +	const enum intel_step *map; /* revid to step map */
> +	size_t size; /* map size */
> +};
> +
> +#define STEP_INFO(_map)				\
> +	.step_info.map = _map,			\
> +	.step_info.size = ARRAY_SIZE(_map)
> +
>  struct subplatform_desc {
>  	enum intel_display_subplatform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
> +	struct stepping_desc step_info;
>  };
>  
>  struct platform_desc {
> @@ -31,6 +42,7 @@ struct platform_desc {
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
> +	struct stepping_desc step_info;
>  };
>  
>  #define PLATFORM(_platform)			 \
> @@ -610,6 +622,13 @@ static const u16 skl_ulx_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step skl_steppings[] = {
> +	[0x6] = STEP_G0,
> +	[0x7] = STEP_H0,
> +	[0x9] = STEP_J0,
> +	[0xA] = STEP_I1,
> +};
> +
>  static const struct platform_desc skl_desc = {
>  	PLATFORM(SKYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> @@ -618,6 +637,7 @@ static const struct platform_desc skl_desc = {
>  		{},
>  	},
>  	.info = &skl_display,
> +	STEP_INFO(skl_steppings),
>  };
>  
>  static const u16 kbl_ult_ids[] = {
> @@ -634,6 +654,16 @@ static const u16 kbl_ulx_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step kbl_steppings[] = {
> +	[1] = STEP_B0,
> +	[2] = STEP_B0,
> +	[3] = STEP_B0,
> +	[4] = STEP_C0,
> +	[5] = STEP_B1,
> +	[6] = STEP_B1,
> +	[7] = STEP_C0,
> +};
> +
>  static const struct platform_desc kbl_desc = {
>  	PLATFORM(KABYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> @@ -642,6 +672,7 @@ static const struct platform_desc kbl_desc = {
>  		{},
>  	},
>  	.info = &skl_display,
> +	STEP_INFO(kbl_steppings),
>  };
>  
>  static const u16 cfl_ult_ids[] = {
> @@ -706,6 +737,13 @@ static const struct platform_desc cml_desc = {
>  		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
>  
> +static const enum intel_step bxt_steppings[] = {
> +	[0xA] = STEP_C0,
> +	[0xB] = STEP_C0,
> +	[0xC] = STEP_D0,
> +	[0xD] = STEP_E0,
> +};
> +
>  static const struct platform_desc bxt_desc = {
>  	PLATFORM(BROXTON),
>  	.info = &(const struct intel_display_device_info) {
> @@ -714,6 +752,11 @@ static const struct platform_desc bxt_desc = {
>  
>  		.__runtime_defaults.ip.ver = 9,
>  	},
> +	STEP_INFO(bxt_steppings),
> +};
> +
> +static const enum intel_step glk_steppings[] = {
> +	[3] = STEP_B0,
>  };
>  
>  static const struct platform_desc glk_desc = {
> @@ -725,6 +768,7 @@ static const struct platform_desc glk_desc = {
>  
>  		.__runtime_defaults.ip.ver = 10,
>  	},
> +	STEP_INFO(glk_steppings),
>  };
>  
>  #define ICL_DISPLAY \
> @@ -773,6 +817,10 @@ static const u16 icl_port_f_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step icl_steppings[] = {
> +	[7] = STEP_D0,
> +};
> +
>  static const struct platform_desc icl_desc = {
>  	PLATFORM(ICELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> @@ -784,6 +832,7 @@ static const struct platform_desc icl_desc = {
>  
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
>  	},
> +	STEP_INFO(icl_steppings),
>  };
>  
>  static const struct intel_display_device_info jsl_ehl_display = {
> @@ -792,14 +841,21 @@ static const struct intel_display_device_info jsl_ehl_display = {
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
>  };
>  
> +static const enum intel_step jsl_ehl_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_B0,
> +};
> +
>  static const struct platform_desc jsl_desc = {
>  	PLATFORM(JASPERLAKE),
>  	.info = &jsl_ehl_display,
> +	STEP_INFO(jsl_ehl_steppings),
>  };
>  
>  static const struct platform_desc ehl_desc = {
>  	PLATFORM(ELKHARTLAKE),
>  	.info = &jsl_ehl_display,
> +	STEP_INFO(jsl_ehl_steppings),
>  };
>  
>  #define XE_D_DISPLAY \
> @@ -850,10 +906,23 @@ static const u16 tgl_uy_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step tgl_steppings[] = {
> +	[0] = STEP_B0,
> +	[1] = STEP_D0,
> +};
> +
> +static const enum intel_step tgl_uy_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_C0,
> +	[2] = STEP_C0,
> +	[3] = STEP_D0,
> +};
> +
>  static const struct platform_desc tgl_desc = {
>  	PLATFORM(TIGERLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
> +		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids,
> +		  STEP_INFO(tgl_uy_steppings) },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -866,6 +935,12 @@ static const struct platform_desc tgl_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
>  	},
> +	STEP_INFO(tgl_steppings),
> +};
> +
> +static const enum intel_step dg1_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_B0,
>  };
>  
>  static const struct platform_desc dg1_desc = {
> @@ -876,6 +951,13 @@ static const struct platform_desc dg1_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2),
>  	},
> +	STEP_INFO(dg1_steppings),
> +};
> +
> +static const enum intel_step rkl_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_B0,
> +	[4] = STEP_C0,
>  };
>  
>  static const struct platform_desc rkl_desc = {
> @@ -892,6 +974,7 @@ static const struct platform_desc rkl_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2),
>  	},
> +	STEP_INFO(rkl_steppings),
>  };
>  
>  static const u16 adls_rpls_ids[] = {
> @@ -899,10 +982,24 @@ static const u16 adls_rpls_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step adl_s_steppings[] = {
> +	[0x0] = STEP_A0,
> +	[0x1] = STEP_A2,
> +	[0x4] = STEP_B0,
> +	[0x8] = STEP_B0,
> +	[0xC] = STEP_C0,
> +};
> +
> +static const enum intel_step adl_s_rpl_s_steppings[] = {
> +	[0x4] = STEP_D0,
> +	[0xC] = STEP_C0,
> +};
> +
>  static const struct platform_desc adl_s_desc = {
>  	PLATFORM(ALDERLAKE_S),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
> +		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids,
> +		  STEP_INFO(adl_s_rpl_s_steppings) },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -913,6 +1010,7 @@ static const struct platform_desc adl_s_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  	},
> +	STEP_INFO(adl_s_steppings),
>  };
>  
>  #define XE_LPD_FEATURES \
> @@ -986,15 +1084,34 @@ static const u16 adlp_rplp_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step adl_p_steppings[] = {
> +	[0x0] = STEP_A0,
> +	[0x4] = STEP_B0,
> +	[0x8] = STEP_C0,
> +	[0xC] = STEP_D0,
> +};
> +
> +static const enum intel_step adl_p_adl_n_steppings[] = {
> +	[0x0] = STEP_D0,
> +};
> +
> +static const enum intel_step adl_p_rpl_pu_steppings[] = {
> +	[0x4] = STEP_E0,
> +};
> +
>  static const struct platform_desc adl_p_desc = {
>  	PLATFORM(ALDERLAKE_P),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids,
> +		  STEP_INFO(adl_p_adl_n_steppings) },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids,
> +		  STEP_INFO(adl_p_rpl_pu_steppings) },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids,
> +		  STEP_INFO(adl_p_rpl_pu_steppings) },
>  		{},
>  	},
>  	.info = &xe_lpd_display,
> +	STEP_INFO(adl_p_steppings),
>  };
>  
>  static const struct intel_display_device_info xe_hpd_display = {
> @@ -1023,12 +1140,33 @@ static const u16 dg2_g12_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step dg2_g10_steppings[] = {
> +	[0x0] = STEP_A0,
> +	[0x1] = STEP_A0,
> +	[0x4] = STEP_B0,
> +	[0x8] = STEP_C0,
> +};
> +
> +static const enum intel_step dg2_g11_steppings[] = {
> +	[0x0] = STEP_B0,
> +	[0x4] = STEP_C0,
> +	[0x5] = STEP_C0,
> +};
> +
> +static const enum intel_step dg2_g12_steppings[] = {
> +	[0x0] = STEP_C0,
> +	[0x1] = STEP_C0,
> +};
> +
>  static const struct platform_desc dg2_desc = {
>  	PLATFORM(DG2),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
> -		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
> -		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
> +		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids,
> +		  STEP_INFO(dg2_g10_steppings) },
> +		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids,
> +		  STEP_INFO(dg2_g11_steppings) },
> +		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids,
> +		  STEP_INFO(dg2_g12_steppings) },
>  		{},
>  	},
>  	.info = &xe_hpd_display,
> @@ -1261,13 +1399,66 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	return NULL;
>  }
>  
> +static enum intel_step get_pre_gmdid_step(struct intel_display *display,
> +					  const struct stepping_desc *main,
> +					  const struct stepping_desc *sub)
> +{
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> +	const enum intel_step *map = main->map;
> +	int size = main->size;
> +	int revision = pdev->revision;
> +	enum intel_step step;
> +
> +	/* subplatform stepping info trumps main platform info */
> +	if (sub && sub->map && sub->size) {
> +		map = sub->map;
> +		size = sub->size;
> +	}
> +
> +	/* not all platforms define steppings, and it's fine */
> +	if (!map || !size)
> +		return STEP_NONE;
> +
> +	if (revision < size && map[revision] != STEP_NONE) {
> +		step = map[revision];
> +	} else {
> +		drm_warn(display->drm, "Unknown revision 0x%02x\n", revision);
> +
> +		/*
> +		 * If we hit a gap in the revision to step map, use the information
> +		 * for the next revision.
> +		 *
> +		 * This may be wrong in all sorts of ways, especially if the
> +		 * steppings in the array are not monotonically increasing, but
> +		 * it's better than defaulting to 0.
> +		 */
> +		while (revision < size && map[revision] == STEP_NONE)
> +			revision++;
> +
> +		if (revision < size) {
> +			drm_dbg_kms(display->drm, "Using display stepping for revision 0x%02x\n",
> +				    revision);
> +			step = map[revision];
> +		} else {
> +			drm_dbg_kms(display->drm, "Using future display stepping\n");
> +			step = STEP_FUTURE;
> +		}
> +	}
> +
> +	drm_WARN_ON(display->drm, step == STEP_NONE);
> +
> +	return step;
> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
>  	const struct platform_desc *desc;
>  	const struct subplatform_desc *subdesc;
> +	enum intel_step step;
>  
>  	/* Add drm device backpointer as early as possible. */
>  	i915->display.drm = &i915->drm;
> @@ -1307,13 +1498,25 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>  	}
>  
> -	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> +	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
>  		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
> +		step = STEP_A0 + ip_ver.step;
> +		if (step > STEP_FUTURE) {
> +			drm_dbg_kms(display->drm, "Using future display stepping\n");
> +			step = STEP_FUTURE;
> +		}
> +	} else {
> +		step = get_pre_gmdid_step(display, &desc->step_info,
> +					  subdesc ? &subdesc->step_info : NULL);
> +	}
> +
> +	DISPLAY_RUNTIME_INFO(i915)->step = step;
>  
> -	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u\n",
> +	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u stepping %s\n",
>  		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
>  		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
> -		 DISPLAY_RUNTIME_INFO(i915)->ip.rel);
> +		 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
> +		 step != STEP_NONE ? intel_step_name(step) : "N/A");
>  
>  	return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index ccf1710cb9df..4615c3ba60aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -201,8 +201,9 @@ struct intel_display_runtime_info {
>  	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
> -		u16 step;
> +		u16 step; /* hardware */
>  	} ip;
> +	int step; /* symbolic */
>  
>  	u32 rawclk_freq;
>  
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> index ee3f45b668b9..2cf13a572ab0 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> @@ -8,6 +8,7 @@
>  
>  #include "xe_step.h"
>  
> +#define intel_step xe_step
>  #define intel_step_name xe_step_name
>  
>  #endif /* __INTEL_STEP_H__ */
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
