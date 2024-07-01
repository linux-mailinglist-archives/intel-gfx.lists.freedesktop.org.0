Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3491E23F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 16:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEDC710E439;
	Mon,  1 Jul 2024 14:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NN4gIX7K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B4910E439;
 Mon,  1 Jul 2024 14:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719843614; x=1751379614;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=KDw18gmVYaoeOAkA43umsjRw3qq0Fv5MlES5RVU4n10=;
 b=NN4gIX7K4eF3ycvmzaQMwTK6ifglzTKwahUMzxI1FyhUaZ9R9gl5vT5h
 m0Hw8dVzZcepso9pUhoSCrnmq4R4Z0tuWwLIE7ve5ufSaO2vRNKD1YpM5
 4SI6SZwlBjQo2eM0UE1Yv121pi2qAGd7YI8r9c4/OQhYuYfD7+798zeXz
 YyD9xIqk3sosV0MqtfMEK/njVGl84ba00bNdHX4aUZ4DP/TtxsBbSBZie
 o/0sCfeetr+M+MehrtB7SU6z1qDDv138X7H48D5CP9v4Zw4Q86dXTpopQ
 3VI6oT9nFa0ZhTVD85AKa3jhroVuSW0NTlGTfPEu7+YX8VcytGvOmSrbZ g==;
X-CSE-ConnectionGUID: GGJ1AjbuQgK9nBRqaQKNjA==
X-CSE-MsgGUID: c6WqmAP/Ri20K9piC3+gFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="39488247"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="39488247"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 07:20:14 -0700
X-CSE-ConnectionGUID: iZfPkxPDSiykMrjJLmsekQ==
X-CSE-MsgGUID: Zrpc+OlLTWCoPZttzNqO4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="45357905"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 07:20:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 07:20:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 07:20:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 07:20:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 07:20:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TIbss9rtVbaTlh9PYxjvdTNKRhxrojK+P1Q5xy0b9wHfL+gqCGZ+90HeEzAZzOGRzKF9DGHGaw20IxjJUWKDzCn8NfkH5rV2OcKbravUNFUcabgc8OwGdf+xZ4bflCXO5fGK439VlNAgZ/187ZlxP2d3qcniqnbmnEqwckbEKvO623dxoZ3/NHjVhIGC1lWMH2blnczuWfLes1wm4U81oK264gSwUPR4xSFqNkuY0MjwK226ghqDlxVSxm2vtMgnAueZh3HBjbL2gfgQbj3VnHi5u4OxvRGXaClHw3TipbpPGNNL9KHA/eAGD9dPA5xFe+YpLGokocwf5hzuAwOtwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qEHY63xaYPn28TKEiocl9xv8GthxO+Ij3OYdQqL8Wb4=;
 b=Fj4bNrQGfaNqFjFHzp+eod9lyJQPwlglTb3d+66RnMuq0jK2DokDrPkm5TMe9nlVqm7q4NUhGdiX+a/7Mqish1HPt9+hiOonk2AdC4DPOFJuQbCSAs9xqYak/5fwpviVq3m4FgJjHs9QGvz3MT857pWfhu9U6xUJ6TYcAUeFIqn7IJugZXgIj+sAt4Y0HThrhX/O+A50bmBijI+7wqbZ99a8WVAYg+Lu8uZ0clbR8Sp/8kdvSfMnJEGm2i17+JWmnrPcNY+HXy4wlSV5saf9N3KOrYG/mavseEkIG/R+DW7YMVQWCZ+plXt+zqFJlfPl3GJxIsRfzy9n+yGxopSqcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Mon, 1 Jul
 2024 14:20:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%2]) with mapi id 15.20.7719.029; Mon, 1 Jul 2024
 14:20:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240625202652.315936-1-gustavo.sousa@intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Shekhar Chauhan <shekhar.chauhan@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Imre Deak <imre.deak@intel.com>
Date: Mon, 1 Jul 2024 11:20:05 -0300
Message-ID: <171984360547.17689.1195585294093425478@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0052.namprd11.prod.outlook.com
 (2603:10b6:a03:80::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8414:EE_
X-MS-Office365-Filtering-Correlation-Id: a4b9f133-6cc4-4efd-a38e-08dc99d8e9fd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3VLM01HWlVJa0M4OWxaM0p3TEVFUDFtTEVKV25VWW9VVUlnaEJKVENpdFo3?=
 =?utf-8?B?YVBmRG9zaHdEdHpoeFNlVG5mVE5RWnJnUTZnc0ZHY2Q3V3JESSswL1oraWp5?=
 =?utf-8?B?RWVMeWY2ZTFVUmQrTTdwRHRoNUZMR1JGV0ZqeWFBdWpCMndUTGxpdnhJMWo4?=
 =?utf-8?B?enlmcEM0eDZLY1RVaUljTFp4YlM0aFB1MUkyVk1idjJaaFdISVRyWG5XRVFS?=
 =?utf-8?B?UVl3RnRoWVNVcmRVUUxSWEpYZ1hVWW1laXdMUWFndGlWUWhqbjBsWEUyL1RS?=
 =?utf-8?B?cmNmVjhiWDhFY3RJR1Y2a2hFZENPZFNkRlZVSlIwQzlwNktEYTVrVkZBTktW?=
 =?utf-8?B?RXoxRW1JQkF2bmdGMzJ2d1JHalFlc215NmJQb1FkYkpaVWlRN0VjOVk5cVQ1?=
 =?utf-8?B?MDdQV0hJdFkzU2hCMnM3TW1nS0lpbXdXM3h0TFVjNVJjVTBDaDUwdi81K2dZ?=
 =?utf-8?B?U3NqQTF0UDRZVTlhOGRrZGErUVVxYURDeWNRZU9aQldPclgvVmtOOUUzY3Iy?=
 =?utf-8?B?eEZkU2NUaVBTK2V6TCtSQ2tHeHNOYldhZmk0eFBZZlpXYXc4YitNNloxY2Zj?=
 =?utf-8?B?ZGRKK2tpWkNSTG9INENoNyt1K2RvZXA1aUkwM0xRbHpBTU5EQXl5a3NNeU5K?=
 =?utf-8?B?QUhTdjJrWTcxSzNTM29mL0prSkU1YkVHbUxqRFV1b2xjNXU1Y2V0L0JzNWtQ?=
 =?utf-8?B?NVVJNW1BREg3M1QvTXk2cDZBMHR5MlpRd2p3UXQrNjVCTGJGbHBYVXJyRjhP?=
 =?utf-8?B?UTNJUENMVGN5NHNBK3M3NE16TzNrRzBNbDlhK2dvb3o0dng4bkRGem5LYTZm?=
 =?utf-8?B?MndpM2RLdlNVc3lkQ1M5V3AvY3g1aXBqT2wwS0dlYmNOckJwWDRiV2Rqem5R?=
 =?utf-8?B?L0ZhRkd1djY2UjBlc1ZIblA2SG05aE9mVzdqSk1ZSmpLRXBwVTd1dEVQN2I2?=
 =?utf-8?B?Mit1Sld1RHB6ZHh0ZmYrejl6cnc0U28yTnN6MFRVdXV2dzg3OTBrQUlOZTg4?=
 =?utf-8?B?ZkpKRFJ1akgzNll0aVcweXA0RnVEQlYva09kYzNUVml3aVUrWDRrL3F5WmtD?=
 =?utf-8?B?YmwyaUU3aHpmenRLRjdYV1BBeTE2Qml0MGw5NWdRbEpxSmhudE1QL2paUE83?=
 =?utf-8?B?dG0vbUlVbnVSang2T0pNcE55anhXaUNaeUJ0a3N6NDhJZ3Voa3R6Y2ZCM0Q1?=
 =?utf-8?B?dUtvWEVhdVpuRXFRSisxd2krMFB1U045Vk9Qb1lCZ3VQTmFBREZ3U0tPUll5?=
 =?utf-8?B?d3ZzUEJxN3RYbHkzUk4zRHFhRXhPZEVjbXhyS0FteXVKeVBDcjdwNk9Nd2Jt?=
 =?utf-8?B?RUo0OURsSytUaFBCb0pRVWo3eSs1TEZ4eFRLTS8yTjg0b0JiN2Y2a2ZBbStD?=
 =?utf-8?B?dWtQZlpENncxYTk3dExuR1J3NUp3dzZQWXlsVDJ4ZEgvbjd6WkJ4UUJmMEdi?=
 =?utf-8?B?dFBJRDRDTnJTdWZBaUZLSE0wN2hlS0VjbTEwT1N1U1hQRUlBc2hrTUluNmVi?=
 =?utf-8?B?eEtuM3Q4Q25ITm1pSEhQTHR2RVdGQ0VpY0liTDEyRXJ6YlQ3WUFXcGpBM3VG?=
 =?utf-8?B?ZWFWc0xhS0NBNTVPOElYSnFPMjVJWUJDdUplbVozY2RoNmQ0QlpHdEhyUFZ6?=
 =?utf-8?B?bzFUdTB5MEM2MlZld3B4V09tL0Jia2ZrTVZ2OFpkUGYyMU9yK3dsaDNxUWdP?=
 =?utf-8?B?b3hmMDlKZy9Ea2hKRGJqQ3Vlck9QUVorc2xNaHcydGtPTlZkdVN3SEVzK0Nt?=
 =?utf-8?B?VGpVWEwzdC9zVndCbUlRVjY3VXZGbDdJdzJmL1B6RDRkVmxOWE4zQk5HUlVC?=
 =?utf-8?B?OTlwaGNCK3ZNYXUvSmF6WWZvMEh3cGtUdHc2V2I0YnJpYXA0ZHoyQ0phQkln?=
 =?utf-8?B?MW0vM3lhMk0vU0NsMXlzM1pNeDNRU0hpQklUKzVWcXNzanc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3V4azRXNDhyNUpLZTQxQ1VJbGE4TDgwY0t3cXJLL0dXMW9IVllMeVRBUFZO?=
 =?utf-8?B?WERDWXFYbXRKN0NEYzdaSGpZYXk5U01uRmVDM2ZIQkY1VGQ2OFRzb2lWZjBU?=
 =?utf-8?B?dlFsYmFqcVpBb2hIUy9QcGNmWGNuNEprVTBCc0F6ZnNDNXdCUFRhZDFqRjFU?=
 =?utf-8?B?NHhBbDRsTHJtQlpwM2RtR3g3SGM5cFl1SGJVZmY0OFBZVlc3MDRqTlFPYlpm?=
 =?utf-8?B?Zll5eUJMUXFiWnk0NG5DTkRiTm9GeGpuSytIdmk1VXY4N3E0Y1J0WjExUlht?=
 =?utf-8?B?b08xZVl0UDB4R041T3NYQ0VxN0NqWXVGaTI0b2FMalE2QlVrZnhlK2ZDWVRT?=
 =?utf-8?B?Uk1EL1NHQzkySURETmt5SmhxQ3gzOVBTd01ZYkRaTGFuMW5WbWtoMDhVeVVJ?=
 =?utf-8?B?YzJmQ2F3c0RPMStSUndPSGRQNnNsOENYaWJzRzVjSnIrL2FkMDdiSkVQcUdZ?=
 =?utf-8?B?SU1OQUxZVkl6ZzlxS1JXM2dvQkVLUjR3VHlwU2hjZFBZTHRGdWl6RXVnMmJs?=
 =?utf-8?B?Ky9tZ1R5cmhnTFVVSE9OaTJKRUliNTVuUXUwYWE1WkRvOUpRV3FnbWFjRUU2?=
 =?utf-8?B?UW1wZzVRTE80akg0S1lDTy9oMjZnblFucll4eC9qbFdtWW5UWUY3K29sOHM0?=
 =?utf-8?B?SEpOZWJ1RjN4MGdGMXJKRTRHSUg0V1NuQk10dXV6QTlrTzZieGs4TzJvbzR2?=
 =?utf-8?B?cjJVRFZwWWtsYnB5Q1ozUiswWmN2V3ZlRU1pOGRHZWpYSmR0cEVTZHVob1Z5?=
 =?utf-8?B?eEIxSlpLYXRIWGVCNmg4ZnlTMnZpZlJOeWxsYWFMZnhENHUvbXBLcGluUUZD?=
 =?utf-8?B?N1Zwdm5sblNVbldPckMydERFTWk5bC9SRFNJZWFnSDJGem1GTEJkWDJUa2JV?=
 =?utf-8?B?UEJlbmY4Q3ZKcE9PUng0UjRGMXZ4b3h1azNxNTdXOWxoRXJTMXdkR2NsZ25h?=
 =?utf-8?B?RVVrTEpwd3Q3L0VDN24zTHBKUnVKckVlWmV4a0hLVC80M2hSWXRSWXpsZ1lH?=
 =?utf-8?B?bkZ2RHozMFErRDJ4eHdGemZNZ0NxSWEyOGIxQ25wUHowZTdxZWd4VHVrM0pT?=
 =?utf-8?B?NS9FTTRvN2oybTNxL1AzVldCZmdETUk2ajZNamFxQlNvbHpwSnU3ZGI5K05a?=
 =?utf-8?B?UEZjTW9Rd0I1SjdWTXN6aU9vYXpTTEpyNDNvUjBjbHBNbHV0Z1AyZEZPS1pO?=
 =?utf-8?B?dmxaSDBPb1NpZjFwMGR0WjcyN0FFT0kyNVJwVjNVaTZ2YnJEN1luNnVteFBZ?=
 =?utf-8?B?eTdEMFNiY2U2Wmh2KzRBMXJXMWpGZ1RIRlhIaUdiN280bTRhYVoxc1RXOXl0?=
 =?utf-8?B?UXZ5ejlSbjlISU95NUN4MzIwRC9PMmVWK0s5cGZxd1RubkNtY1RWSk5qUDNN?=
 =?utf-8?B?Rllvem1lcHpkSFB2dmNoUDVMYmpKM011U1NOTkc3dzhGWXp3ZmVwdGVtcDRu?=
 =?utf-8?B?cnZxNTBxQlFoTEx2dlhEa0dmejY5NXZZSjNRbmhxY3ZtSkVCL3V6dFBkTGsr?=
 =?utf-8?B?cXdodkxhTTQ1eXQ2L3l1cWNDMTh6TnV0cjF5ejlBUmtCKzFCRGVJNjFLWmZI?=
 =?utf-8?B?cjJUdTltWHVyVWVMZ0VLaktmTnZveDF4ZjhHTWM4QWF0cUQyNEJvcGN2M3NG?=
 =?utf-8?B?b3NobnJzaGErM3NkTU1SMzhaVmwzUVdiT3R1UlpBZEFUc01YUnJxV1RUUmhY?=
 =?utf-8?B?TlNYRjcvamd2d3lIK1o0NVhyTGdrS2dQVXlBVEliZzJxTWRnUFpMbkxiWXdq?=
 =?utf-8?B?U1pzVFVEWGVCOFNEMlhSNFExam5Wcm0weDNpejhEL21GTE9KOHRvZkZkR3lZ?=
 =?utf-8?B?WmxCYlRia0ZFNkwrTWhaYlgzaWNMZTZRVkNDbFNTK2ZKU1JVVHU1YnJPWStU?=
 =?utf-8?B?aFdhTXNIY3BaOFZobDN0djVPWDVYTWo0czU3UWJ0eHFPcmIveEhMRHprSDg4?=
 =?utf-8?B?d0xUY1l4enJ5aHhLQ3RGdjBIN2FneTRsNGcyejZuc2xXOVlwdzNvWnAweHkv?=
 =?utf-8?B?QVYweHc0MHNmMTdQNW1nb3M3Y3dyV0hWeWtEbEI4aUlVOEFlVGhDeC9aTE5l?=
 =?utf-8?B?YWlldGExVmtVMGhIVmxlNFJTckxiV3Qrd25Ua3RVN0JURUQ3V1lHeDZwR0s0?=
 =?utf-8?B?RmRVdkpDeHB0bmltM2lOYXhoUkRFY3FndU0zZmhXL1BsbXF4SG0zOU5KalRy?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4b9f133-6cc4-4efd-a38e-08dc99d8e9fd
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 14:20:09.8652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QKvuf4usQJ7nBJ7rkOdmmlwL53poG52IcKfyQFS1m62KYMDEk72UD46iEY3FpSF/rxBgg6m7vtpiRjUUlElLlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8414
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

Applied to drm-intel-next. Thank you all for the feedback and reviews.

--
Gustavo Sousa

Quoting Gustavo Sousa (2024-06-25 17:26:52-03:00)
>Starting with Xe_LPDP, support for Type-C connections is provided by
>PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
>anymore. Those registers don't even exist in recent display IPs. As
>such, skip programming them.
>
>Bspec: 65750, 65448
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 9887967b2ca5..6f2ee7dbc43b 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_dig=
ital_port *dig_port,
>         bool lane_reversal =3D dig_port->saved_port_bits & DDI_BUF_PORT_R=
EVERSAL;
>         u32 val;
>=20
>+        if (DISPLAY_VER(i915) >=3D 14)
>+                return;
>+
>         drm_WARN_ON(&i915->drm,
>                     lane_reversal && tc->mode !=3D TC_PORT_LEGACY);
>=20
>--=20
>2.45.2
>
