Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 452D896AC49
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 00:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C483C10E606;
	Tue,  3 Sep 2024 22:38:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQib1iHN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75FC910E47F;
 Tue,  3 Sep 2024 22:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725403092; x=1756939092;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=9L3z4gRHaqn95mFEmjPNk9H5GSQzc0P2oE2qRa57Fls=;
 b=dQib1iHNDisOCpVpAg9bNZefGc+EXJHhEdez0lV8Q4n7293e48539Okw
 b++djtrhHGi06qwC3tPxnjqkUiaU/0alA9nMxjRibo15vdRGNCgQfrWda
 gifh6sjNtytgr3LbBSiaK+7wKL2jrlnkzRul0r8uPjJxrT5NbTtVsDz0G
 c49LyEWI0r0flSsAybC5hlyJUBVlF/OoTnyZDQ9wffWv8lYefRIqKTG9E
 B78/Ohl89Udi8uBaYX+MBWuFzVJPvimRlWMWNV/5FY8LRhaXZFlInOuw6
 ATEcraQL+2858VWA5E+zQqlTA2LsMjMIOBNG7OORlaZDJTKUq3B/j27QD Q==;
X-CSE-ConnectionGUID: qM2IgmocRU2oCKK15tpOPw==
X-CSE-MsgGUID: 7gehBY1LTveC62O0WRQ6Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41506795"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="41506795"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 15:38:12 -0700
X-CSE-ConnectionGUID: 13cDTyg5QWSfc6Dk6Cg+ig==
X-CSE-MsgGUID: CZ0dSlzOSNaW9BSCj+okrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="69881608"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 15:38:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 15:38:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NcgWdzJJ8RkLfP6MiVPcPOT4plp9x9Ue+OCPTTk3Mze9m3kDc8ZUauEBl4bzNmlxeemAcV/fNXhwBom3guYPj4YjghfdO417tAVwBxKrYUEqtl+5nTKDL6Mp7vkrERHihHve62p4FsEowiAdt73zwbQGnFZfB7WHZvA99dPJkIRqhhD/c3E4EtYQbvMeyzp/EDlqLF0XRjrRQ1vG1Vd0AV+7jBKOd+Ps3AkWdD+nDBxDzL0ENQeB1fUjSL6oknAIPdMkNCIjar9BRpFXYBBWFYctEiEgrNFsfHMVU6Cp0IIQ3q5nVwA/xGd5FK7zzB2nJZBjSz8MwwYAfnw31VsNWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=28LnUDi/hBttzvRnVTBAfN2sPWlmfCCRqI6GrMa3o60=;
 b=GMF2d1/B1zqgVasdDHEqJBpwzLO9hEOKqFYFnebtgtO1z8/EPZNSGMGk59/Y0lug7cSX5m8ts7v6J+2YRZikLxBoG5ylx2cC6W0f7X9y1jYMVFYkfpW//NcmUbpZAYPYJjp+ShBJDCfhHpS+2y/pjdBxkDLvSQp8ywdrtlzLwUgV46rRsbcO/msl4MaQjvSxIg0jObyEZ0RrEF6g3CPR/ya+yk5M58qy/OTG5ZCAv3cf2vOnWc5uBppgwx8gWBs6fCMaPLQ415iWrH1e/BUcGfNwndlyWuCJ1rkQbQIviK+He+MFPefzcvnvizei1lNm4SShEX25I6ePpacp2enP/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 22:38:09 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 22:38:09 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: [PATCH 0/4] drm/xe/display: Clean-up PM sequences
Date: Tue, 3 Sep 2024 18:37:59 -0400
Message-ID: <20240903223803.380711-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:303:8f::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: f36266fb-c817-4430-f5ca-08dccc69159e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?djH2BdXVRtP45bNHZG/gfZPFY7jrwWKYxqNDyw7QfufMq4zXfVJlXGdQ8pff?=
 =?us-ascii?Q?tFw4El4auqt77CgpL76ua05cCmT+oIBFU+vHUcbcejbYzZcfe54Vf7MA7vOW?=
 =?us-ascii?Q?h+nzaJ+32o5mIVxntV6bnEErmwYJrT3qNjb1QLwru3vkj8Wox22VHV+iy1Au?=
 =?us-ascii?Q?2i0v5PlVLi7MfzpkoBLZLv9Lb6IlQxDkz2odDPLDKaQc9IP0kKJkCX20d7j7?=
 =?us-ascii?Q?xir7QoyjSSPumoCKUmo4gDbbTIqyIoo7zFjGS11v5Hv7vRYV0Xsi933g4uup?=
 =?us-ascii?Q?f9xVumyKrd/zdYUbVddnRNW9jxswS58NLzhKks/k1bf/sTdbHeyIXnce6e9Z?=
 =?us-ascii?Q?pLQBJWr5/0khagCfgFjXzywBxspfVV68/hexhuh/ZG3unuw0XugjWI3j2SaW?=
 =?us-ascii?Q?jEueooZmU3BoISiPc6CJg6b6wuOOosps1pYStRB9oCgOy6vV+UEwLfsPMNGk?=
 =?us-ascii?Q?MQw5e8KpbSHB+c7OBF+9Ttix5+h6wq/7IIEuGNDys0b2GP0t2EQO+c6xaURd?=
 =?us-ascii?Q?hoaIvFmM8VzIYJpdhR9Lgv9mIIbDle/Jrk7MRmemC956T1rxCBktDHRX8PEC?=
 =?us-ascii?Q?edrm9COOvJsqiKzpHcB4gHI0OpVmfhuQyOqYnTs5unBc8HSuXhwQJv8UQZk+?=
 =?us-ascii?Q?hygd3JvF541l8iTuyLc0FqaEmHHZrYF6N4BxqffcCxm7qNNCJrcOdDJ/LFS4?=
 =?us-ascii?Q?N6/O80K/pAJ522IUTagPernq2+I/XOVzfxZzT5TgUuhmVoIxovG9RPss/X8P?=
 =?us-ascii?Q?/ZUMEPJm8B9HzBtwFVtmm2OI2ZES/hIO5E02X0lUFlrTgI0rcfz/vEJSYEiK?=
 =?us-ascii?Q?NRT2GwOgdbu2WQeayM3MieClAsBS3eXkfONs7lFpysUJ8kfsS0HjpFTikyc2?=
 =?us-ascii?Q?Llph/F/fdO5IjZPEDT6sKYX2LJzFrdENMGOj30r0/ezWBUCehBGEwEq4rsYb?=
 =?us-ascii?Q?6feo+EC3V8iIp3Goz1s2ah0qsyNqDEbiQ0OZlcrBazS/utSp7EFE83F7CKzU?=
 =?us-ascii?Q?HjRHuqXnKuUOyjTHWEatMHdo3yL6im1c3AHkGlj+Ki3SGM2GgOPl0gQrjCrM?=
 =?us-ascii?Q?gDxXwJw6iTay4TuVkuoMNwR40Wiry4uBwzfVdcAPxbInn/tpoCv3375PSd+h?=
 =?us-ascii?Q?doORTKkQWhyJSLoTrcbc8qugYR3tC9PN2GCbYWqJbWfK2IAHB2l17RYQe/Hk?=
 =?us-ascii?Q?LysbSU9gfP8tIj2Go9lJ8EcUUZ97eYAUaxZRewBHspeLB1Lf+oSudx8ltX0Z?=
 =?us-ascii?Q?zK9nNjyK7cAEIUWvWhtV7/x9tQ2lkUP2FPWOfTGlFPvYs4scOBGX2Y9XDB5c?=
 =?us-ascii?Q?LiudE9UlCU+kST9zqtR5gqtVB0zPs35ukRuocNvzwFOllA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Cg0zvSE49LpKnaTrBWGlisrDqS5kXo9uwbMXD3nz7T8C1ccPTiDaC22T3Eiv?=
 =?us-ascii?Q?wWmttOyel0b2G/P/OLD4BrW4co5147nIrej4TQjuOnbWihpBDS9gl1cMvOuH?=
 =?us-ascii?Q?l2uJjBVdzfXpNWIL+S2YBrb1a3TSbn4WEFXgteEQkZUyTn9+AggnAs07vnRx?=
 =?us-ascii?Q?MUajXu+WM5cauF2MawG4wbFYciJdX0C017Jrs2qqhupW+z2ng+gtuQFkNydO?=
 =?us-ascii?Q?OhFR2imngMchHexVSc5WDoM+axx5FP9I1SN5PC0h/Tfevs83yr06kr9oYtqQ?=
 =?us-ascii?Q?RWORj96WONe2kxlyD7IpaqPLdI92c/cGGW43rfzlIfZ1ZReVq+NpvZdFh4PO?=
 =?us-ascii?Q?nCKu0rgVohaYIhD5Z9i63nzYIP5QdETjExta59ZGQEK2IjXtrLhdFHV6KDSk?=
 =?us-ascii?Q?cPrB/K9jmo6DtybbXJp9HNXNUjqI4hngDHhKh+1hxv0yLp17Swe3YW2n0kRm?=
 =?us-ascii?Q?/d4BUlaTP8IkImNnD3+sY60iKsa6kBOEXAlyUFqzQPzBLczrSxeJwvi4JR4M?=
 =?us-ascii?Q?E+t4oC4zPnyeKjY0Aa0UtzDtwq42u0mQOeUA+o/exY4bwf9DbHcfgNMX/iEj?=
 =?us-ascii?Q?SeSHw8TDyAgnvouV3w0ViHaU9WbwezY0UwXWzjo2QbrJSFHHNn5iibEzN69+?=
 =?us-ascii?Q?mGiBAPxfGobWK0oiL+1RxJrVmeVnHTSPl8L4S3QwDFCTYYxz7REBAoYdNFNW?=
 =?us-ascii?Q?h5yWj5mfDZVx9BH/FJHPW9IwiZqWBLtkW8NgVonbOcDAudEUAga2AoQ3vj45?=
 =?us-ascii?Q?e4ZeAOWaZBzo2LxBpYMSw2Ohwerxv3GSJww399uCN0KDrXbwCpEjLfw+vbPh?=
 =?us-ascii?Q?zCHWnbNBkOdPRsf9qtIarXF6K7HfNGh5gLbEGGber1LmKSRhWTnol7qW4AF1?=
 =?us-ascii?Q?eZ2CwO2RrPr2VekYA2zZiZhj5xnCBHEGS5xz/xINl+txODJgfjZoA8FnrV6O?=
 =?us-ascii?Q?HuQik+hG7nS5K24pQ+u+63rO6Za63AkhLLMc8BeYnuiwWqJuYaXlxULPQS1t?=
 =?us-ascii?Q?MXM0vgIVU4ur/Xl1mc0XkEJqWuzc6xGJd4FCIG296njKw2kgvnKs7+9+Figj?=
 =?us-ascii?Q?jCQgDhjE5j69+5wE86opMUK++wsxtkrSqS1GAOEjdFTCAjpnMBC+LcOIEuVm?=
 =?us-ascii?Q?aecG3pPHs54VftRppa4fe7Zb7rlC/fMusi9+1/nQcPZYWwlwRDmruaNkwbyv?=
 =?us-ascii?Q?FZz5cLLnwbMMxVZZ2G/kqP1KnbVoTnWr6bbKl5yU/zSXDOj2ryIdvJZ5vCal?=
 =?us-ascii?Q?XY/0tIERO0OUrJcvwJuIZRe43eu7KYkBGMa+hC/hBuA4vRJuIFnFcPXrC203?=
 =?us-ascii?Q?hBNCA1feySgRVxC4t1Vjdjbf4Fx8THDSE7PkQHQpr75fIGuZQ7rvAVuuTNon?=
 =?us-ascii?Q?odk0d5K6U1yBdBjlGLa0luqDgGZK3ZbfP0NI71DGfQLR9mZ4utnXV/Cbxp0i?=
 =?us-ascii?Q?h1U7sUVVJSOzqiUMAepCkruuTD/2DheNR2EG5Fx5vvsoywS2MaUyV7SOQUXR?=
 =?us-ascii?Q?//ZZhPAmjo2dA2tafOxVNfe//nB2uxaJpff3vXmbA8ViCxBWSTjn6gaYQFiP?=
 =?us-ascii?Q?8ZtEY1/yVuRz2HuVl73/BNbD6EAw9tgtCAuydaS0I5GdsQ+xEIHHE7sJfu4h?=
 =?us-ascii?Q?1Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f36266fb-c817-4430-f5ca-08dccc69159e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 22:38:09.0440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rGf7ylMBJ4YH2os6pU6lulblc6OztCfGU5bjwFQ2ewtm1mFLOZm6nIiBYRVFxUXav+KE6U2G8d3uLPlm7T9M4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
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

This series aim to bring a bit of clarity in the display PM
sequences and start a clean-up around the runtime_pm ones.

Specially around D3Cold. There are some ongoing discussions
that we wouldn't need all the sequences that we currently have.

So, let's at least split them up to separate functions so
we can individually scrutinize.

For now, I removed what I'm sure that we don't need in a
d3cold scenario where we lose power and that I could
validate in my DG2. Any other attempt to clean-up further
at my end failed badly DG2's d3cold.

But again, let's at least bring some clarity on the
sequences before we go even further.

Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


Rodrigo Vivi (4):
  drm/xe/display: Spin-off xe_display runtime/d3cold sequences
  drm/xe/display: Remove i915_drv.h include
  drm/xe/display: Kill useless has_display
  drm/xe/display: Reduce and streamline d3cold display sequence

 drivers/gpu/drm/xe/display/xe_display.c | 109 ++++++++++++++----------
 drivers/gpu/drm/xe/display/xe_display.h |   8 +-
 drivers/gpu/drm/xe/xe_pm.c              |   8 +-
 3 files changed, 74 insertions(+), 51 deletions(-)

-- 
2.46.0

