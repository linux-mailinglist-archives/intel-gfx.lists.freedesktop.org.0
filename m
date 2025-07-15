Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B12B04EA6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 05:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4203010E011;
	Tue, 15 Jul 2025 03:22:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IaRA1Jna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4EE10E011;
 Tue, 15 Jul 2025 03:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752549762; x=1784085762;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VW3w8wqmw/a6LIpwQVfaOMwQ9MZEvh3XmfmWNSLxV3o=;
 b=IaRA1JnaYMmYo0zigkExIY6MYMWg2CHe5L6uH2MBrHTwyIeF0fNrrr9E
 cr1eCSUpQGCDYLcvFgJWM5kI1x99lDqv6jc3k1B84BxoaYmfhhd9cmLrQ
 5rpSixxA4zhGNY+bmX9dQjgqZ8SbolKhs9g00AJ+biXs8WC9WxrpZb0fc
 gg5KlHcLPxtfko6qdC7R7VUl4J0q6rbV37Y6zbAYbE6MEaSJmPJGBiWBi
 6EWcDlZJDBCt2zzQqwemGEJFYBOeYVF8frNkzLO5785joCY2PbSl6Difs
 F5/BIvd8Uq3y+gbjTjrIACsN2q5UKVJOdvIyGqQRmzAhXFksrrMYnEo4R A==;
X-CSE-ConnectionGUID: SY2FkxFISkSx/P6u5z8btA==
X-CSE-MsgGUID: AhUz+u+ISSKB7tLAnLjaBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="65825764"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="65825764"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 20:22:37 -0700
X-CSE-ConnectionGUID: /iU+SH13S9+7TEYaXt6/uA==
X-CSE-MsgGUID: BzZX2oz5RkuhwwYgwdP2iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="161650498"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 20:22:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 20:22:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 14 Jul 2025 20:22:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.61)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 20:22:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S70R+18ur7A24gUc7NLCJka+NfP38psGny9G3TU3TwR+iTEVldMzhyBtDX4mnxXL6acFKoE3BPCzgL9rkbfoMX+GIY0OjoZINc9s2We70HjTQ9/REdvm5Rgz3ofymWoHamrkOVK0coKEgRtfwPPSMVAGQoQzNiFlAjEVvGfVR8ZopA0J4XefnPNVzzKCZVInvg8Ckp790WKp4sM5Hfws5cXYGbvMhFdGU4lB4A4spKnCU3vKUcKdOvDyR9YXEDIpDmiFRfJonb2ZahbPDg6Bx5zxnxFquBpDsr4Z/kJDyiIl4id4rTaqDAcbEUAOpTQASIzTQyPggEdivecp+IawAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VVrNaoiDKc9TNnJ28oHGdiSnuhsNJ+RT5lkw6TNIJlc=;
 b=V7DooWCHmvSxzQaANm/blIsTXAUCJkAqcJSMHkwoXYvhcQlkPVbMjcC8J3wgLeij9Qje5RMmMoSUkgFqDB0brcUYzuVWA7EdWj1t5pCjjwhDd8utAld3nIWYKDX48XZvI2FV85vahEiyzZCI/hyLK7BHGbqSAv55aP4mTdC3OA9mhw3coR2i4rL4+8RTMpvFkmgAeYoAqNMZf/nCI5BOi/RrbnUgLjxx+ap4Z4k6kk95ujbHNAPQr2+TW4jeNMb6pnpmwaH0BnV2/d8WROF2QNLvP64s26XuD1MWn91pnLKUOVkozPw/KNQcyHPAuOecXs/4bRKjD/DsUPJ6lhcT7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6559.namprd11.prod.outlook.com (2603:10b6:806:26d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Tue, 15 Jul
 2025 03:22:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8922.028; Tue, 15 Jul 2025
 03:22:33 +0000
Message-ID: <66f5227d-dcdd-4e9a-b038-e15a4b6ddda7@intel.com>
Date: Tue, 15 Jul 2025 08:52:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL/WCL for
 bit-bashing
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <lucas.demarchi@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
 <20250711041901.1607823-3-ankit.k.nautiyal@intel.com>
 <175223383564.2061.3827139948808540740@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <175223383564.2061.3827139948808540740@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 0029a3ff-89a8-4cdd-7320-08ddc34ed5fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGFlOXZ3d2dVKzJhTjZSRVRwTGo5eGxXYUh6QnMwdTh0QjNoVzBIc1dHb21q?=
 =?utf-8?B?a0g1d2Q0Z3g2dElRd0xHRHFXbDNCbDhUY21MNGpsb0V1QjFXN2oyNWJ4dFlU?=
 =?utf-8?B?WGF3UURkaEFVODNyS0xLNzgrUERUcVhsSDB5aVczUkw1eWp6UU1QclVnUTBo?=
 =?utf-8?B?SzZja3dEVWZQeDBFYW01V3V3NzhSM0JWazdGL3h5ZEdFWVBQZlYxbk1wb1B6?=
 =?utf-8?B?WndSYmFpbGdQWFE0bnFPZUtzLzNlL0VXTE81YkVST0ZsVXczUDd2ZzhMaHBx?=
 =?utf-8?B?RmtkRlNEK0NXTTdrd3ZuUzYrNjdtRElXTXlNbmJheVFTT3pUM2NLR3dKNkdD?=
 =?utf-8?B?d2tHR0V4M2NIS0k4d0EvalF0cUhidWJZbHNqZCtVazZEc1NtZEIydlFkTk42?=
 =?utf-8?B?ZkJmVUw1WUowWmpyMnlRUUF6dkhEQlZUc3pCT2xURmNaOXFSc3pCY0FEejhy?=
 =?utf-8?B?THFHT3UvK252bytlcG5pVVdMRk45N2htRXlFeXA3MXhYN0hDclp3VWJ1cGlV?=
 =?utf-8?B?dXNGWGZOc3J5VVdOays5UlYyU0FUMUV4dUt0U1AwVE45TGpEYk9LdUZpb0Fz?=
 =?utf-8?B?RVQyUEtHU2ZPaGQwVzhlZHUzT2lOdUNRMXd4UFlCanNRRTRnV1ZCRFBtWldB?=
 =?utf-8?B?a1lTbzUvQkpmNGtQYmVJZnE4MktaZTZCdHY0S0lzWVNHZXp6MmF0T01keFVj?=
 =?utf-8?B?VE55LzlrRmJRRUtwK3plRTdEKytwWlVWTHhOT1ZNZ3ozZWpvVUtORG9jUUtD?=
 =?utf-8?B?cm9XZFNCaTYwbnptOTZueDBBZHk0TjFFSkUyMGF3MFUxYzVyeFVaVjcrL0NN?=
 =?utf-8?B?YUtIelZ2RDJXVzJ6WE5yUmlEdDRQU1ljdEJyaDMxVkZDKzErLzc2cVhjcnVk?=
 =?utf-8?B?RUFjSXNOeXA4Nkg0bU5URlpiQ2ZLZFE4Si9TQUxkWVFyZXQyTjV6MXdXejE5?=
 =?utf-8?B?VmNzNjBBT21GOS9SbzZGeVNDSFBqQkd0VGRFTnF2bFY4TDdFbzVkYko4cERO?=
 =?utf-8?B?eDdGRzEvbFRKSWhqM0FzUDl3eUxKOGV1d3FRR2NoT01iZ2F6bUt2WFhCRE1N?=
 =?utf-8?B?aGpUdUFSbWUvZDlKdU55UC85NzErbVNSOEUvQUUxSGdWYVpDM3lIZmE0KzI4?=
 =?utf-8?B?RGp1b0lQNmVjRnF0U3RzL01QdWhoVFJZa1RyS3Z0bmoyeUh3WVUwVktJcFJE?=
 =?utf-8?B?NHBpTjZ1bE84OUxVeEd0STFnNFQyNkdlbVpIV1hhRjEvdHdWbmZIWEN5TzRQ?=
 =?utf-8?B?ZzRDcE5QY090TXNCZlR0S0oyVXZ1eS9nQm94WnNBb2tFMUdkWjNQdFQ1VW43?=
 =?utf-8?B?c3NEdUZFSEFJSW1rNmdCUTJLZndudERHUE5oY0piQ0JQRi9mZVc3dTFENE8z?=
 =?utf-8?B?TmRFeEs4QnlTWXFERUtza2pSZTQvMVpKYWFKSnc4cHJ6Y05ub0hSZnIybGJY?=
 =?utf-8?B?VTl0WU5ob2dRREp1Y3VJM25ERkVjTHpPQzIzUUZTaGpQWWloSmx5cVdPeUNu?=
 =?utf-8?B?NTZuenlCcEN5SGRYMXFzNXhVaEV3ZTlwWExCek5XdjJ4c2hNRHFRazdtcmdq?=
 =?utf-8?B?QnBIWUNmeXFsZzIxaXdvaExkRG5PczE5TnVOM2ljdjZmQU5uS0krUi9FdWJz?=
 =?utf-8?B?R2FpQjRUQU1VWjk2UEcyYitUM2ZnSUpMbnd1VG9YWEZ1a21nU2x3QzlsKy9U?=
 =?utf-8?B?bVN1eVM4b0c3SHhJa1FyTGJacWtvcWdjajdKSGpxL1Q5Y0pZcEtmaXcwU0gw?=
 =?utf-8?B?RVF2Q1F2UjVCaWxUUHlqSEE5dkhJS3hqUVowY1prNnJZUWlmZkdaY0Q3dG5F?=
 =?utf-8?B?M3BzZVRjM0tpbmF3eE9ZaFByTzNMM3VpSU5BcVJ1WVJ1bVQrc1lqeDQ0TytG?=
 =?utf-8?B?U25qYWtMc3NkejExUnBveUVpaHZGTmlMeXBZTTMwVytKUEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3dZNUJsOWh3WHFqQnJFNjZOMTkxTythdDNHMG1rUi9qZ2VSZk9GSzMwRXlX?=
 =?utf-8?B?b2lMVXpoR0s1R1VMYUNhMmxMaWJzdDNJN0pUa25xdm0vYU8zczllbGlzQ01O?=
 =?utf-8?B?eVBmRGdSVFFHaFIzZ2sxdENveFI4bDhPSjhrSFpkZHFyWlRMMVlReU1Zck5t?=
 =?utf-8?B?UU1FU0JwZk1peU9IcjJMZTd3Q2lvQ3JFNTlvZm1zYUFMSjRxeCs4MlljUmpj?=
 =?utf-8?B?MnZncUNmS1dZRHp5RkkrVysxQlVRcEVod2RiZEtSSklwNmtPRm1WU29TaERz?=
 =?utf-8?B?bkd0RklDZUFZaGZQdlpUTjd5L0w3K2xPeHpwNmw5MmZXcno5SnZ0Y05jbHN3?=
 =?utf-8?B?cHFEa0VKdjYrNS9vN3RoQWlqVzB3dnpOTVVwRVpIQnZRT2srMkFLaWNyRnBF?=
 =?utf-8?B?QXMzK29YSWxXU010Mzc2cHdiTFlEcGczVWJ5VGZyVktVd0pQZ3JTS3RtQVJ0?=
 =?utf-8?B?N1c1dXc4VE53cDZOVnArYmhsT0JUdWZZQkxNcU9zaVpYVDR6bVNjUkFnckVu?=
 =?utf-8?B?a3RtQTdrSmgzd0hmaDdoTHl1R3h0MVR5SlZ4RDRLSDllWnNTaERsSUZmMElq?=
 =?utf-8?B?KzNoOWs0aHV2OGE0RjBsMWVXaWQ1VDlIS0ZzajBITTdGYlhGcHhoRllGWjJX?=
 =?utf-8?B?MDVYbXF6RENCY2VXd0pRWGhUUExsby9GcVhUQU1XS2lKOHBRdU4yR1Q4S1Fp?=
 =?utf-8?B?U01iampGMlZMRU05bXVLZmJPV3g2Zk9UdnVXK3dvL1lNMzhKSkM4UXM2UTlJ?=
 =?utf-8?B?TUZmd2szVnREV2tndEdZZ2c0ZEtNMUt1SlBWdDBJODVKc3NuK054RzdkcDRQ?=
 =?utf-8?B?TzZUNno2SWluWlRqa2x2dFE1RnRXZDg2OFpEMW8wUWwvSW1FWDZvU2JhK2Fm?=
 =?utf-8?B?U0hyOENRZTVtTzA1KzVSSlNZN2ZUMkdFYXVDeHdDUDJHRlpIY2VXbWl0NXFD?=
 =?utf-8?B?c1kyU0xnRHpnVDFIVmxLYXhnZTcxUTZXbmhHUEllM2Zuc0h0TkppMU5rVDNj?=
 =?utf-8?B?cXdLL28zakFmZFNXT21mU3dLejdOazR3L25JbmVBOWJtVmxTSjBqMm9aY2dH?=
 =?utf-8?B?R0U1VktNbmhIaDdRZzdib1pRci8rLzRkMjFtVUFRa1FlaUFtTFl3RDlDNi8y?=
 =?utf-8?B?UmpGc1Q1ckhBd3dpSUtIampDZGRmdVBYRXJ4ajRTRm1ISGpYWll3TE5wWTVK?=
 =?utf-8?B?UW16WHliVHlTRHRjSzZuMnVsZXdVNUxqbDN0TCtUOEY5SWMwMTlRejZHeEg0?=
 =?utf-8?B?N3E4TG5hTTVCMVpqYUViTUk4b1N0MFZlNHhaUDNCYzI1aTJmZHhkZXlZRjh6?=
 =?utf-8?B?cjB1Y1FuN1ErbUk1K2lkdUM2U1ozcGJzbFZaT1Q5MVNob28vU2FFc3JPZ0Rw?=
 =?utf-8?B?T2FtYVIxd2hnZEg3UUFxTVZUNXdmYkhoVXV3cExKZmR3dFpFdHBQaXpUNU4r?=
 =?utf-8?B?MEEwQkFhSW95WTNoK3YrSnkvTDZGZXlvazhucVM4MmFYUjdCZ0YzVUJKWGNH?=
 =?utf-8?B?STJwZmEwbncwa056TzhjRW4zb1grOE9CSlRnQnpTRS9JRkhJRldZb3gra0NX?=
 =?utf-8?B?enVWaTVRQnh6RzBCM0sybHk0ZGdFbHZYbTFhdXlKcWpqUy9ua3N2d1pwaW5p?=
 =?utf-8?B?eEtKN1RmOXFvRTJyeHlyY3kyNnIza05tNy92clRPOFZYK2g5TzB4Y1dYZ2xX?=
 =?utf-8?B?MDZUMWIza1lDR2JUcWhHd2lvUHA3V2dPTkVHekhGK2lzRUtBYjQxN1ZWWk00?=
 =?utf-8?B?Z3phQy85bUZ4ZHZhSjByUG9kdGJUcDhvVUk5UTZzYVgwNjljVHZDNTZQOUgz?=
 =?utf-8?B?QVFnMkhPK1J6RytiMTAyeDgyQkhRaWUxWHF1MEhWbjZJNm5nR1VLTmVkNGhC?=
 =?utf-8?B?dWoweXVkMHdTVGFVQTB4dzZrcStvUjExVUM2QnpKcmdWdzZDai9YRDJmVVJ6?=
 =?utf-8?B?TXFTL0dlZGZqZ0pnS2R0QTNXK0l3N3BNZ0JRVjIxYm51YWxHQUtDUkFEY2hr?=
 =?utf-8?B?SmxpWkY0SEczd2dZQTNLL2diRG9PekNsTkhoQjJNYXg0b0puSTlLNEMzRHlY?=
 =?utf-8?B?bHdnbG5pbWo1aHIzVE1zTVJpUDhkd1RGVjFKOFUwem90SFArZFkvY2dndWdy?=
 =?utf-8?B?L1JJMlN1MlNlZ2RBckNJdUhtbWs4dWt0bVlkeUc0cCs0Q2ljeGs2MGUyWWpL?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0029a3ff-89a8-4cdd-7320-08ddc34ed5fc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 03:22:33.7283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9sVTB/yByJmxw9AcC5ZyoQ93clF/wJdxTFsRrWYOYGWXlHqj6QVljr2owlxfB3DWT9JyW1eesbHwJ7jh/N0LmkT4tGvnL7ad5JSdSj3AiVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6559
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


On 7/11/2025 5:07 PM, Gustavo Sousa wrote:
> Quoting Ankit Nautiyal (2025-07-11 01:19:00-03:00)
>> As per Wa_16025573575 for PTL/WCL, set the GPIO masks bit before starting
>> bit-bashing and maintain value through the bit-bashing sequence. After the
>> bit-bashing sequence is done, clear the GPIO masks bits.
>>
>> v2:
>> -Use new helper for display workarounds. (Jani)
>> -Use a separate if-block for the workaround. (Gustavo)
>>
>> v3:
>> -Document the workaround details in intel_display_wa.c
>> -Extend the workaround to WCL too. (Gustavo)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>> .../gpu/drm/i915/display/intel_display_wa.c   | 12 +++++++
>> .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>> drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
>> 3 files changed, 45 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> index 32719e2c6025..0dbcc1d272c7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> @@ -42,11 +42,23 @@ void intel_display_wa_apply(struct intel_display *display)
>>                  gen11_display_wa_apply(display);
>> }
>>
>> +/*
>> + * Wa_16025573575:
>> + * Fixes: Issue with bitbashing on Xe3 based platforms.
>> + * Workaround: Set masks bits in GPIO CTL and preserve it during bitbashing sequence.
>> + */
>> +static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) == 30 || DISPLAY_VERx100(display) == 3002;
> Using DISPLAY_VER(display) == 30 would match any verx100 between 3000
> and 3099. If in the future we come up with another variation of display
> version 30 that does not need the workaround, we would endup applying
> unnecessarily. So I think we should replace DISPLAY_VER(display) == 30
> with DISPLAY_VERx100(display) == 3000.

You are right Gustavo.

I will change this to DISPLAY_VERx100(display) == 3000 || 
DISPLAY_VERx100(display) == 3002.


>
>> +}
>> +
>> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
>> {
>>          switch (wa) {
>>          case INTEL_DISPLAY_WA_16023588340:
>>                  return intel_display_needs_wa_16023588340(display);
>> +        case INTEL_DISPLAY_WA_16025573575:
>> +                return intel_display_needs_wa_16025573575(display);
>>          default:
>>                  drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>>                  break;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> index 8319e16eb460..aedea4cfa3ce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> @@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>
>> enum intel_display_wa {
>>          INTEL_DISPLAY_WA_16023588340,
>> +        INTEL_DISPLAY_WA_16025573575,
>> };
>>
>> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index 0d73f32fe7f1..6d6c3611d6c1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -39,6 +39,7 @@
>> #include "intel_de.h"
>> #include "intel_display_regs.h"
>> #include "intel_display_types.h"
>> +#include "intel_display_wa.h"
>> #include "intel_gmbus.h"
>> #include "intel_gmbus_regs.h"
>>
>> @@ -241,11 +242,18 @@ static u32 get_reserved(struct intel_gmbus *bus)
>> {
>>          struct intel_display *display = bus->display;
>>          u32 reserved = 0;
>> +        u32 preserve_bits = 0;
>>
>>          /* On most chips, these bits must be preserved in software. */
>>          if (!display->platform.i830 && !display->platform.i845g)
>> -                reserved = intel_de_read_notrace(display, bus->gpio_reg) &
>> -                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
>> +                preserve_bits |= GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
>> +
>> +        /* Wa_16025573575: the masks bits need to be preserved through out */
>> +        if (intel_display_wa(display, 16025573575))
>> +                preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>> +                                 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>> +
>> +        reserved = intel_de_read_notrace(display, bus->gpio_reg) & preserve_bits;
> Maybe we can skip a register read if preserve_bits is zero?

Hmm.. that will be only true for platform i830 and i845g as of now.

But yes makes sense to retain the original intent for these platforms. 
So I will change to below:

static u32 get_reserved(struct intel_gmbus *bus)
{
         struct intel_display *display = bus->display;
         u32 preserve_bits = 0;

         if (display->platform.i830 || display->platform.i845g)
                 return 0;

         /* On most chips, these bits must be preserved in software. */
         preserve_bits |= GPIO_DATA_PULLUP_DISABLE | 
GPIO_CLOCK_PULLUP_DISABLE;

         /* Wa_16025573575: the masks bits need to be preserved through 
out */
         if (intel_display_wa(display, 16025573575))
                 preserve_bits |= GPIO_CLOCK_DIR_MASK | 
GPIO_CLOCK_VAL_MASK |
                                  GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;

         return intel_de_read_notrace(display, bus->gpio_reg) & 
preserve_bits;
}


Thanks & Regards,

Ankit

>
> --
> Gustavo Sousa
>
>>          return reserved;
>> }
>> @@ -308,6 +316,22 @@ static void set_data(void *data, int state_high)
>>          intel_de_posting_read(display, bus->gpio_reg);
>> }
>>
>> +static void
>> +ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>> +{
>> +        struct intel_display *display = bus->display;
>> +        u32 reg_val = intel_de_read_notrace(display, bus->gpio_reg);
>> +        u32 mask_bits = GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>> +                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>> +        if (set)
>> +                reg_val |= mask_bits;
>> +        else
>> +                reg_val &= ~mask_bits;
>> +
>> +        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>> +        intel_de_posting_read(display, bus->gpio_reg);
>> +}
>> +
>> static int
>> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>> {
>> @@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>          if (display->platform.pineview)
>>                  pnv_gmbus_clock_gating(display, false);
>>
>> +        if (intel_display_wa(display, 16025573575))
>> +                ptl_handle_mask_bits(bus, true);
>> +
>>          set_data(bus, 1);
>>          set_clock(bus, 1);
>>          udelay(I2C_RISEFALL_TIME);
>> @@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>>
>>          if (display->platform.pineview)
>>                  pnv_gmbus_clock_gating(display, true);
>> +
>> +        if (intel_display_wa(display, 16025573575))
>> +                ptl_handle_mask_bits(bus, false);
>> }
>>
>> static void
>> -- 
>> 2.45.2
>>
