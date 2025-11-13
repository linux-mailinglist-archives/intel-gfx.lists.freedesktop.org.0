Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12B9C5A42B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 23:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE66210E94E;
	Thu, 13 Nov 2025 22:01:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d26RxSlZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8457B10E967;
 Thu, 13 Nov 2025 22:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763071303; x=1794607303;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CTWNJ5f6DyDGEUvgWiVJEEQquIIW/4Xt5+jOdDSTDno=;
 b=d26RxSlZ+9ROQrwhUgCemOFfAiBM7l5J5yIK2m6Cyd26sRThAVj6s4Dp
 ogi2Su5GwLyYh22Duk/zXi7vXGZDw0VeWfmAhjylLsSUtHJvnOzoCB6HM
 2cmAlKHEUcfJ55N2kpJrfIfQ+1e8t2Beb+TEYcN0hYQoF7aSXtsy4lE6L
 tob9HIhJH3JZccxV8lfaAtFZgr4LIlWPxJPZJ8hT3K0wPljXbzGTIh7S6
 wDvXYW8sS1FoHK/w7DMxwwsDFytdBqUnEEgZjnC3mXGn/I9mR+H2hrAm9
 QI33MIT0EkXhH86OvMy/3948xiKL4RJhRQ2veq6P1CnvQmXGSltfL1Fmc Q==;
X-CSE-ConnectionGUID: at6tToGvRCG/hyI6dyYLcA==
X-CSE-MsgGUID: w8W2LemxQr+cUQeZNZBOXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64367604"
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; d="scan'208";a="64367604"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 14:01:42 -0800
X-CSE-ConnectionGUID: +4mGbx+FQ/SgFpLUyYTF4g==
X-CSE-MsgGUID: cxqhMjoXQ9K5q/4qYhO2Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; d="scan'208";a="188863151"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 14:01:42 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 14:01:42 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 14:01:42 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 14:01:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VAiU0RYT6pf2ayBkXJgk1ANRgBhCCrX3I0GJSK5TtGnn3EJrUftL93QGBmlVtY9mKVEdsY4cwZIe1NcFXZ/O5LPu2MRPfGKD0qg37+S8u+eomFGB2pQvSn9j5O+PXme93AZHlt2xL0MF7GrkAHQcTVewMEO/WPoJ3WHwbAI7ZzHGXzUDsS5qevmK8ck3T9MzaDc8XQjt0jgVK/v1FTFztmspF+APiDAmdv4sGdXTKmnFTA1RYiQv73FVYK3zsXAmv6be1HChaJ7dprByNuuSKyUmXgYEgB0CCNlMhKQdCaDrV2PRrslA9vif6x34fZIK8C2jG4USmpAEAOttQn3tAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Az6+RZV/eP2Gbm1m0mafo6dUzns3khjvlVTkj2VB3Ts=;
 b=ozErzgFSsQkcGsUJPb10muc/CQz2Z0R0XG4rYWv7fv2TnEKz2nErTPdP+vjbFKF/sFNL00HuniV7hc3UCtpYOYGAJW6UjgzBISdY7/9h3gel3kp2021bUDztW2kGZEey15tXdasBtbG2r+NHuo5WbewGuofiMPRGg/NeUvPC9CS3vel0QkgCChXNJY25rVqBJMXMkgY4yvadr8Yvwgi/tm6cusz51IJaomCev37qmK+S61xeAPE4I7MII59PU6QsHfyspGtg4fb7c0NmIBTxsEiyxRDRhjGznkE45IMG98GXKp+JbTShugLyhDNbi1Tgw2IMExo2NbZBSNyY372GlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 22:01:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 22:01:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRSJn4pvElpFSibV@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
 <aRNeF6O4SBuBGZvy@ideak-desk> <aRNhLYc2SPuNKEIv@ideak-desk>
 <176295242789.3698.8127437932458349279@intel.com>
 <aRSJn4pvElpFSibV@ideak-desk>
Subject: Re: [PATCH v4 02/11] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, "Matt
 Atwood" <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>
Date: Thu, 13 Nov 2025 19:01:12 -0300
Message-ID: <176307127233.3698.11282343839061851475@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0188.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6802:EE_
X-MS-Office365-Filtering-Correlation-Id: 13f0d873-ba20-4378-8a5f-08de23003883
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wk4ybEM2VjhyV1hEWWk0c3N4dFd0U1NqVG4vYUcvUzZyZ2F5ZndiSjVJS2ky?=
 =?utf-8?B?akhTU2ErVm93NUpqa1ZUM0pKbDZOWjI5THdmL2FKV1FHY0FKQWJFRFd2SEhO?=
 =?utf-8?B?dkVrN1VVemV3TUduSnBhb1p3S3ZWNHE3dFAwdDJGbHRiaHY1K25nemRxK2hF?=
 =?utf-8?B?Qms3US8yc2lFMWJVWWxwWmJhTUVnRzc5SDI2blF5Tk9ycXdjZWlvc3NtTHpT?=
 =?utf-8?B?YnQyRDdlRFJ3Y2EvV2I0b1l1N3VpZWp4dVdLYjllejlPbWU1U2dVazdJS2p2?=
 =?utf-8?B?c0VTeUllZldFaXhrRTIzbStYOXZnaDB2UlJnREs1YWZ4ZUpLMVpiSlViOGVT?=
 =?utf-8?B?ekxkUXNtaHpvSFVpTitsZUNRR3cvZmQrL0JFT2RlcmlKdUJHV2ZUYkN6c3R4?=
 =?utf-8?B?VStmVWlyTGo3WUVrMFFFblE1YWNlQXA5bC9teWUwSTRKTXhsZjNyZDdpS0J6?=
 =?utf-8?B?TUFTWFIxTU5aekQ0aElZa3ZoNW5QYmxXaG9WMDhDSzJvRlVOMS9vV3VjYXpT?=
 =?utf-8?B?YzhHQ082QWdoU2NrcWxLSnA3aWhSQkVKekNNWVJpU3F3TXhJY1Nrblo2ekJ0?=
 =?utf-8?B?VlR6SnhUZGM2RDlMSFpwc3lwOHQxRFdidlhEamFJeTNKR2N4K3U0UTVJcWds?=
 =?utf-8?B?N3djNXdLV0VBSzkwYkJwR0ZkVlJCR2lxdWlZUWoyTHNiMXRmK0dpMjJlSDh2?=
 =?utf-8?B?Vk8raXVnYVZ5VHl0M3lDTTI3RnZ5eVg1WTJTc2RtY1lnYjIyN29iWWJQYkFn?=
 =?utf-8?B?UXJzYjViVk94cWZMcWpqci90ZUN5WFhRWmxESW56NUJFOU1jSWJ3ZDk0N2to?=
 =?utf-8?B?bmpOSkc3M2tmZEgwdUUyNmh6Uy96ZktWVjhXVzliQUdzbFVJTHFGd1N3VGpO?=
 =?utf-8?B?OWFlMUdETnlNTlhBalBXQXhUazNKOHlQV3ZQZ0Zjd0JiLzRodi9VV01XbStB?=
 =?utf-8?B?TFIzeFQ0Y004Ym13UEVrQnFjRDlOZ2VURlVDb3MxcEtMSXdBR0lYaGlFVkFI?=
 =?utf-8?B?WVJUWExHcUNTUS93OTJLSjZBOFRNR3FGbmpjT2kyVWJqY2szZWJsWmtHMnNl?=
 =?utf-8?B?eVNReDNOeUc3cEJZMWZxanNQYjdGUVZPS3ppRFJHYk05RXpITVYzLy9ZMGV6?=
 =?utf-8?B?WmdZOUloMnRzT1BwYTNqUWlPdVFETEZOSnZmTGtkTXpVL0lYSWo4V2JjVVMx?=
 =?utf-8?B?WVB6UUsxR3NPV3JqU092VndNeVVlbDVUMHhxZ0lZUjJOckdxQ1ZSVGUzdVlT?=
 =?utf-8?B?bDZyM2RVRXlyR0k2RWRZNVpxSVJhYmR0V0YyZDFyanJkTjFzN3RZRXZ4Vm9q?=
 =?utf-8?B?eDJxOENOSnFuNUQvQytRNFplTHR4ZnU0bUpHaUFLVnpqQTk3Vm9DWGtCdzJD?=
 =?utf-8?B?QVFsVUxWeXc5M01NNlFPcVB4Sy9rM3A3MG9La1AvRkZIUnlCdDFmNm9OVGtB?=
 =?utf-8?B?eFBzcUlOTC9tNzlncUpWK3Y0ckx2TC80WXBKVnhlOEFkWHdxQXpzandBVGVh?=
 =?utf-8?B?Q3FoS1F6R2toRUZCaVVoN0hTdmZ6MmNEZndHd2phQjZYYmJvNmxleUVSRjJU?=
 =?utf-8?B?NGo0UDR0bmFEeTRmaCs5UEp6RjNwdHBGZ05DRFRvVjN6b0cvakVaYUVkbkg3?=
 =?utf-8?B?c2psbmVIdmNYTVh6b2ZQdHR6MXRJRThSaFhielROUEthZ3VhcFNmSnlLdzdr?=
 =?utf-8?B?VnVoamx5NFdVRG91enUrRHZuZThiZTI4aXgrVWFVYXhhTlZoeFZwN244TG9T?=
 =?utf-8?B?TC9vZVNhNThqZXBDaWNNVFFucnZ4cHNPK3Bac3o1MThCdmtqMER2VUdYUXAx?=
 =?utf-8?B?VjVoWmEveUZrbDlXeWxzV0VEZGNhWWFHQ0lTTnhBMnpQa05QNG8vSGxQcjNN?=
 =?utf-8?B?VjgycGZQV2pKUldPK2NmbkVvRndrRTErMXYxbTd0V1lqU2VsSWNYMFFFQVJV?=
 =?utf-8?Q?9+cSiFuyQXE4IaDoJQg/6c2YyFpzemN9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEE5WWYwbzltUGRTUU8wTGxpTTlpWmtPbzN2amhsNTdGdzdVSnowdXNHcEFK?=
 =?utf-8?B?d1VwZXUzSTBxejZTVVk5d0xyQWhzR2VtTW85S1FmNkZ5YVRFUy9WZjl0Y2R0?=
 =?utf-8?B?RURoRHF2NVd3Zm56S3cxU2JmRTRDZDZQOCswRzRBaVlMY2tSK2N6Y3FIWGRh?=
 =?utf-8?B?SnhoeTlNQjZvRUlTN2ZuaGhXdVNSUnF5OUxPRGNIS0I0cFVMRDBMV3BsL2lU?=
 =?utf-8?B?RmdQdG52bTc5VUNJL1AwekVoeTUzL2xpbndCTnZkRTB5NmZ6RkhDU1ord2Ix?=
 =?utf-8?B?aWhTNGF1QzMvNU1vdGxqNjZkM1hZN2FDLzlKdSs5bHpGM3VYMEkrTmREbDFz?=
 =?utf-8?B?NkVFN2R6SG44MFZSb1BEUVUyZ3ZCMjFmWkQrUmt2ZXZnSVJqM0pxWEUvZGh1?=
 =?utf-8?B?OXZEQXN5ODB0RSs3bmVqT2hhMFVWMUhueFZQaXF2UzYxZmhOUTF2a01tWHpF?=
 =?utf-8?B?ZHRybHkwS3I0bmQydG8xQlJUREsxdmQzR0ovVFA5a0htQmo0RUlma0JpT0Zr?=
 =?utf-8?B?UjZuSkJhTjRBTkg4SklxRldTaGRSR201QWZXYWdjQUpaR2ZjRE1OYjUwRTFG?=
 =?utf-8?B?SGhlWU04TGxUMGlhMDZnQmlKNDJneGhUZGFkQmpmOVRMMzZySkFnYnQra2V3?=
 =?utf-8?B?WDZlR09WRUJIOE9CTWMyNitVVFVNZnp1UHFseDhob1FMY3A0ajdFZnZoK1dX?=
 =?utf-8?B?bFROU29oaE5rS3ljUVVDaldkRDN4cStCWXhMaVpnQWxaS2JMdXdSMGp6STJS?=
 =?utf-8?B?Q2FQb2xDRGhXTkMybm5ndG5XNU9PU1pEUURtOFppWE54WFFUNkNIaTB4REYv?=
 =?utf-8?B?V1ovUlk2OGt6VmVUakRTR1RQZHdUU3VqcFlEMXk3d2lvNmo4dnloa1Q4Vm5i?=
 =?utf-8?B?Wmk5d05DTWxYOGRwZHBLTFoycU5GTjFpcHVRNVJxMDBNTGJBd1ZVOFhJVlZJ?=
 =?utf-8?B?MmNIaTVZSzlpcGRObVNvcnI2Z2g5TlNGak1PaytaQjUxcnZlaC8wcmI3L3hp?=
 =?utf-8?B?RGRvYkhhMEw3ZDdydG1tUTdtVWN4TENPVDdHa0F2T3R0ekhndGFuTHdUZG1u?=
 =?utf-8?B?Sld0dG5VdWpIUXNBMmVtSmtlakNpMDk3Nm11Um1GNE1hNEhjN0VkQWxBelRY?=
 =?utf-8?B?bHhBb25XcEdYN0dZRG5qMWxySGhQNStzMm1EbHBZOFRZWmtmS0s1cGt4ckpF?=
 =?utf-8?B?WFYraEhQV3I2amZsbUdFNkUxM2ZRTFZ6bm5ibU9IcnFOcU1QQTdSSnlPcnB0?=
 =?utf-8?B?ZE5jcFVHMk13NVI3dEZUZGt0SGVpTThsbTUwQzFRbXUzOHZmeDdnRmF6L1NV?=
 =?utf-8?B?a2FYTC9yZG1FRkV2dlZUV0hWSHE1MHJEUTNMcTBvUStIaTB6dE1CbVJ5T3Qy?=
 =?utf-8?B?Nys0SDY4c204T1czTWtJR2JoVEdqTGQ1Uk9lRHhVUVM3UHY3clpwRTVJMkRo?=
 =?utf-8?B?eHhEQWxGbitqOS9rc2xjSG5mQ2N0Y2ZQMEZ2OG5pSXVTVTNyL1huMm9xYjN1?=
 =?utf-8?B?RnNmb0NaM3NrRWZGOUhWdEZzSHZFNm9RckZ2aDVXVDZNbTVBRERtai93SnIr?=
 =?utf-8?B?UVdRdnlUK2c2VWY4WHZjUEtHWVp5OCs5OVpFbVZTUmh5VmUvd2M1a1F1emNv?=
 =?utf-8?B?VUtqelQrTmMxVjI4UkxOMTlVZW5CSUh4cnI3aEZoTHpvaVhveTJxQjh4TEh3?=
 =?utf-8?B?Q0F3SENjeUZLVVBGWTgxc3BiZDQ4WmdTZzVjTmZjK2M5NmlmKzN5VUhCeVRZ?=
 =?utf-8?B?VjRKRHNIa1J0NW94YW1DaS9pTUIrWUNROTdrVGwrLzl4dkI0NjQxOUhGY3ZK?=
 =?utf-8?B?NGgwSHpxWkltbEJUK1c5c252TkRDcmE3ZlhNVmU1TGdGZEppV1UyZTFvMFRB?=
 =?utf-8?B?WlRONWVhRFFKbHU5RXkxdW5EOE5wVjNwNEE3VzZpQ0h0anF3RmxjUGNQMlls?=
 =?utf-8?B?d2tuWWFtRUtnaG9JRGpCK1pHbWIxNnAwaW45ZlBSbVBXRmJFZ2RVZTZCRUNy?=
 =?utf-8?B?SzIxMWs3SDZGKzlDQ2ZFN3hVd0I0Wlg5bHRVeDRRMnpUYWRiYmI3QW4xNjZD?=
 =?utf-8?B?dzlrVVYyZEp4bjllcm5ZeUFEVW5uK0FNeVphNnA1YkRIWXlweXJPa3c1TjA5?=
 =?utf-8?B?Yk9aWnZsSnA2Q3dpUnhQeEFCdjAwcDkzSGpNUWtsYkpkMWYxdjZ6bS9Eb1Qr?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13f0d873-ba20-4378-8a5f-08de23003883
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 22:01:39.0521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U5mUR0m7FhgVck8ni+ARLDQZKt0+bqFfIMgqzAJNmMPAUDn4w/GIiJx/Hm9NCYC0Zpb0twJ/wgVJo6QGUhJT/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
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

Quoting Imre Deak (2025-11-12 10:20:31-03:00)
>On Wed, Nov 12, 2025 at 10:00:27AM -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-11-11 13:15:41-03:00)
>> >On Tue, Nov 11, 2025 at 06:02:31PM +0200, Imre Deak wrote:
>> >> On Fri, Nov 07, 2025 at 09:05:35PM -0300, Gustavo Sousa wrote:
>> >> > VBT version 264 adds new fields associated to Xe3p_LPD's new ways o=
f
>> >> > configuring SoC for TC ports and PHYs.  Update the code to match th=
e
>> >> > updates in VBT.
>> >> >=20
>> >> > The new field dedicated_external is used to represent TC ports that=
 are
>> >> > connected to PHYs outside of the Type-C subsystem, meaning that the=
y
>> >> > behave like dedicated ports and don't require the extra Type-C
>> >> > programming.  In an upcoming change, we will update the driver to t=
ake
>> >> > this field into consideration when detecting the type of port.
>> >> >=20
>> >> > The new field dyn_port_over_tc is used to inform that the TC port c=
an be
>> >> > dynamically allocated for a legacy connector in the Type-C subsyste=
m,
>> >> > which is a new feature in Xe3p_LPD.  In upcoming changes, we will u=
se
>> >> > that field in order to handle the IOM resource management programmi=
ng
>> >> > required for that.
>> >> >=20
>> >> > Note that, when dedicated_external is set, the fields dp_usb_type_c=
 and
>> >> > tbt are tagged as "don't care" in the spec, so they should be ignor=
ed in
>> >> > that case, so also add a sanitization function to take care of forc=
ing
>> >> > them to zero when dedicated_external is true.
>> >> >=20
>> >> > v2:
>> >> >   - Use sanitization function to force dp_usb_type_c and tbt fields=
 to
>> >> >     be zero instead of adding a
>> >> >     intel_bios_encoder_is_dedicated_external() check in each of the=
ir
>> >> >     respective accessor functions. (Jani)
>> >> >   - Print info about dedicated external ports in print_ddi_port().
>> >> >     (Jani)
>> >> >=20
>> >> > Bspec: 20124, 68954, 74304
>> >> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> >> > Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_bios.c     | 54 +++++++++++++++=
+++++++++++-
>> >> >  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
>> >> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
>> >> >  3 files changed, 56 insertions(+), 3 deletions(-)
>> >> >=20
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gp=
u/drm/i915/display/intel_bios.c
>> >> > index 852e4d6db8a3..1487d5e5a69d 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > @@ -2530,6 +2530,36 @@ intel_bios_encoder_reject_edp_rate(const str=
uct intel_bios_encoder_data *devdata
>> >> >          return devdata->child.edp_data_rate_override & edp_rate_ov=
erride_mask(rate);
>> >> >  }
>> >> > =20
>> >> > +static void sanitize_dedicated_external(struct intel_bios_encoder_=
data *devdata,
>> >> > +                                        enum port port)
>> >> > +{
>> >> > +        struct intel_display *display =3D devdata->display;
>> >> > +
>> >> > +        if (!intel_bios_encoder_is_dedicated_external(devdata))
>> >> > +                return;
>> >> > +
>> >> > +        /*
>> >> > +         * Fields dp_usb_type_c and tbt must be ignored when
>> >> > +         * dedicated_external is set.  Since dedicated_external is=
 for
>> >> > +         * ports connected to PHYs outside of the Type-C subsystem=
, it
>> >> > +         * is safe to force those fields to zero.
>> >> > +         */
>> >
>> >Forgot this: IIUC dyn_port_over_tc doesn't make either sense for a
>> >dedicated external port. IOW, a dedicated port/PHY is not enabled by th=
e
>> >TypeC sequences defined at bspec/68954 and so for such a port/PHY the
>> >DDI->PHY mapping is always 1:1 and so the corresponding DDI can't eithe=
r
>> >be dynamically allocated to different PHYs. If that's a correct
>> >understanding, dyn_port_over_tc should be also verified/zeroed out here
>> >imo.
>>=20
>> Yep, there shouldn't be any need for DDI allocation for dedicated
>> external ports.  However, we would only be checking for dyn_port_over_tc
>> when doing the Type-C flows, which would not happen for a dedicated
>> external port.  Give that, do you think we need to add the extra check
>> here?
>>
>> The main reason we are adding those checks below is because the VBT spec
>> marks those bits as "don't care" when dedicated_external is set.
>
>Right. To me, the interdependencies of these flags in VBT are a bit
>complex. We are reflecting now about the above dependency, which is
>good, since we'll at least agree then how these flags are supposed to
>work. Imo it should've been also documented more explicitly in Bspec,
>similarly to the DP-alt and TBT "don't care" documentation.
>
>With all that, at least a code comment would be good about this for a
>future reader, but even the verify/zeroing would be useful imo, in case
>there is a VBT setting the flags contrary to our assumptions (that would
>remind us then to figure out if our or the VBT authors' assumptions were
>wrong).
>
>It's a detail only, I'm not insisting on either of the above, so up to
>you (maybe you'd only update it in case you have to resend the patch
>anyway or stg).

I'll have a new version of this series and I added the logic to zero out
dyn_port_over_tc as well.  Thanks!

>
>> --
>> Gustavo Sousa
>>=20
>> >
>> >> > +
>> >> > +        if (devdata->child.dp_usb_type_c) {
>> >> > +                drm_dbg_kms(display->drm,
>> >> > +                            "VBT claims Port %c supports USB Type-=
C, but the port is dedicated external, ignoring\n",
>> >> > +                            port_name(port));
>> >> > +                devdata->child.dp_usb_type_c =3D 0;
>> >> > +        }
>> >> > +
>> >> > +        if (devdata->child.tbt) {
>> >> > +                drm_dbg_kms(display->drm,
>> >> > +                            "VBT claims Port %c supports TBT, but =
the port is dedicated external, ignoring\n",
>> >> > +                            port_name(port));
>> >> > +                devdata->child.tbt =3D 0;
>> >> > +        }
>> >> > +}
>> >> > +
>> >> >  static void sanitize_device_type(struct intel_bios_encoder_data *d=
evdata,
>> >> >                                   enum port port)
>> >> >  {
>> >> > @@ -2668,7 +2698,8 @@ static void print_ddi_port(const struct intel=
_bios_encoder_data *devdata)
>> >> >  {
>> >> >          struct intel_display *display =3D devdata->display;
>> >> >          const struct child_device_config *child =3D &devdata->chil=
d;
>> >> > -        bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, suppo=
rts_typec_usb, supports_tbt;
>> >> > +        bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, suppo=
rts_typec_usb,
>> >> > +                supports_tbt, dedicated_external;
>> >> >          int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hd=
mi_level_shift, max_tmds_clock;
>> >> >          enum port port;
>> >> > =20
>> >> > @@ -2694,6 +2725,12 @@ static void print_ddi_port(const struct inte=
l_bios_encoder_data *devdata)
>> >> >                      supports_typec_usb, supports_tbt,
>> >> >                      devdata->dsc !=3D NULL);
>> >> > =20
>> >> > +        dedicated_external =3D intel_bios_encoder_is_dedicated_ext=
ernal(devdata);
>> >> > +        if (dedicated_external)
>> >>=20
>> >> Nit: the variable could be dropped imo, and would be good to print th=
e
>> >> dyn_port_over_tc info as well. Either way:

Incorporated this into local v5.  Thanks!

--
Gustavo Sousa

>> >>=20
>> >> Reviewed-by: Imre Deak <imre.deak@intel.com>
>> >>=20
>> >> > +                drm_dbg_kms(display->drm,
>> >> > +                            "Port %c is dedicated external\n",
>> >> > +                            port_name(port));
>> >> > +
>> >> >          hdmi_level_shift =3D intel_bios_hdmi_level_shift(devdata);
>> >> >          if (hdmi_level_shift >=3D 0) {
>> >> >                  drm_dbg_kms(display->drm,
>> >> > @@ -2751,6 +2788,7 @@ static void parse_ddi_port(struct intel_bios_=
encoder_data *devdata)
>> >> >                  return;
>> >> >          }
>> >> > =20
>> >> > +        sanitize_dedicated_external(devdata, port);
>> >> >          sanitize_device_type(devdata, port);
>> >> >          sanitize_hdmi_level_shift(devdata, port);
>> >> >  }
>> >> > @@ -2778,7 +2816,7 @@ static int child_device_expected_size(u16 ver=
sion)
>> >> >  {
>> >> >          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>> >> > =20
>> >> > -        if (version > 263)
>> >> > +        if (version > 264)
>> >> >                  return -ENOENT;
>> >> >          else if (version >=3D 263)
>> >> >                  return 44;
>> >> > @@ -3723,6 +3761,18 @@ bool intel_bios_encoder_supports_tbt(const s=
truct intel_bios_encoder_data *devda
>> >> >          return devdata->display->vbt.version >=3D 209 && devdata->=
child.tbt;
>> >> >  }
>> >> > =20
>> >> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_b=
ios_encoder_data *devdata)
>> >> > +{
>> >> > +        return devdata->display->vbt.version >=3D 264 &&
>> >> > +                devdata->child.dedicated_external;
>> >> > +}
>> >> > +
>> >> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct int=
el_bios_encoder_data *devdata)
>> >> > +{
>> >> > +        return devdata->display->vbt.version >=3D 264 &&
>> >> > +                devdata->child.dyn_port_over_tc;
>> >> > +}
>> >> > +
>> >> >  bool intel_bios_encoder_lane_reversal(const struct intel_bios_enco=
der_data *devdata)
>> >> >  {
>> >> >          return devdata && devdata->child.lane_reversal;
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gp=
u/drm/i915/display/intel_bios.h
>> >> > index f9e438b2787b..75dff27b4228 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> >> > @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct =
intel_bios_encoder_data *devdat
>> >> >  bool intel_bios_encoder_supports_edp(const struct intel_bios_encod=
er_data *devdata);
>> >> >  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios=
_encoder_data *devdata);
>> >> >  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encod=
er_data *devdata);
>> >> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_b=
ios_encoder_data *devdata);
>> >> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct int=
el_bios_encoder_data *devdata);
>> >> >  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encod=
er_data *devdata);
>> >> >  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_b=
ios_encoder_data *devdata);
>> >> >  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_=
data *devdata);
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/driver=
s/gpu/drm/i915/display/intel_vbt_defs.h
>> >> > index 70e31520c560..57fda5824c9c 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> >> > @@ -554,7 +554,8 @@ struct child_device_config {
>> >> >          u8 dvo_function;
>> >> >          u8 dp_usb_type_c:1;                                       =
 /* 195+ */
>> >> >          u8 tbt:1;                                                /=
* 209+ */
>> >> > -        u8 flags2_reserved:2;                                     =
   /* 195+ */
>> >> > +        u8 dedicated_external:1;                                /*=
 264+ */
>> >> > +        u8 dyn_port_over_tc:1;                                    =
    /* 264+ */
>> >> >          u8 dp_port_trace_length:4;                                =
/* 209+ */
>> >> >          u8 dp_gpio_index;                                        /=
* 195+ */
>> >> >          u16 dp_gpio_pin_num;                                      =
  /* 195+ */
>> >> >=20
>> >> > --=20
>> >> > 2.51.0
>> >> >
