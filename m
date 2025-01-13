Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7F9A0B006
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 08:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB59C10E25D;
	Mon, 13 Jan 2025 07:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AjndwG8T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D053010E25D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 07:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736753103; x=1768289103;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zgr+ykM9flPuwbVt6CRMvaHqG2rKfEKaA3Tk60FuXmE=;
 b=AjndwG8TFUfQHQA6fEHb5iDwBv8rViWog1Y98q0tyUW7xMIwysEczcr8
 oCXtcysiG5Tnw9x9nqWBcCxV05dseeGn7YNc3Dln8s/JjCrU2f2cltQIJ
 +iylnR+KEI12eZcYs9mjG+B/pOp2l9/PATUSo3ZqHaPJ2m6sv9GAlgYfS
 SLqcekEIwR3HTSKyBZ/a3lXwTpGVaxtsr6g0/obaYs0bakotIAaFUe+I3
 HakLxZosjE3kENV/fSvIN9BGPabNKlJ3Ju3B+6BqUzoAKp6a5+G0UHtNJ
 aNB6+jRqkIgQYceRyEXZp4+FNwRkDZe7IWZRaAkVAL5oAMAs5e2C78Jm5 A==;
X-CSE-ConnectionGUID: OuqEseMiQZSFZUnZkvf64A==
X-CSE-MsgGUID: iMk0d0D+SQqrCoeZPIsAAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="37108698"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37108698"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2025 23:25:02 -0800
X-CSE-ConnectionGUID: ZyWIvsBPSJu17un9gBVdew==
X-CSE-MsgGUID: vu2IPzvmQP66R3HgVoESPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104955851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2025 23:25:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 12 Jan 2025 23:25:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 12 Jan 2025 23:25:01 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 12 Jan 2025 23:25:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xil/f8tGSSNTQwrI2c77jMZWmepe/ODuo5LI8HNlDw1NTz2onTLqYkBR++NeZ9WWpukNlQElumR94774n0teQXth0sVyAugBKsjhYfK+e6UYtQudzvFPyns8sezSkFSMY2YXt4IVeSg5DEwEiL6wPIqZjcw6tdgCrlfFRiQYYsDrXkXtIh3vBkW9ztoBvsXht+M1XOmGXaxcdYDPPsMNrEBxK41dC53ya+nCUkwwogxheE+PwtJetCG5SHynhf9c33x6NJGbOHtGLNmpDyHLXqvHMI+u1Yv5OIzJZe4enGLecrwRePCCsG9MJYAwYnANnnaIJR5vTp+B3A6ZqLIDCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W7FY5MrvGKy/wQt8DH5rtgUvL5gcs9GMBIdTczoXLtU=;
 b=TxQ/KzhWVoZmkI07SRiM4qAe1dzNjZ+UK+h2u+qgMrUJKY2Pj6bsI7YSbiQr7OuQxdy91WGVKL5BArLFrs1Ek1HwSV3ORYaZqYg83VXD4TReClQAG0KcTuZcW4PxDbinvBR1w/HCZFg+7UiHJO/1p2zGM38xRSmGYWpnZwpd/f1zUy/2JF+2cOG1xIGuQEqpkTnsw1HMWQrgolsJoQkxpqjTJqTeR7zAVjhGDuBlSH2zs0k+UbYPC0qwhdwK3ohOg9pFeB7SnHWMErvNuLA+79iDv7Qhg3hn53UoexoV9woxap6w2weHlU6tU+VVk+6bp/R85Deoab1nkC5VFObp8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by LV8PR11MB8721.namprd11.prod.outlook.com (2603:10b6:408:203::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.17; Mon, 13 Jan
 2025 07:24:32 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 07:24:32 +0000
Message-ID: <b356f17e-9fc7-42d2-9198-66b65a330b69@intel.com>
Date: Mon, 13 Jan 2025 12:54:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
To: Riana Tauro <riana.tauro@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <karthik.poosa@intel.com>
References: <20250109093010.3879245-1-sk.anirban@intel.com>
 <f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com>
 <66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com>
 <0155609b-b3ef-456b-a838-37e5fcf8bf88@intel.com>
 <71aaad10-abe8-4642-90fb-1a5c19dd3231@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <71aaad10-abe8-4642-90fb-1a5c19dd3231@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::19) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|LV8PR11MB8721:EE_
X-MS-Office365-Filtering-Correlation-Id: e909ee51-ba29-4130-5053-08dd33a352da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlJKa1pQR1VHU0tXZE03aWpnMzNZcnBpOXZjbUlEek9tUEhxVC9WNGk4V2lJ?=
 =?utf-8?B?VWpPeUFhMUxOZjJxSjFQUHFqY3RObDJ5WjZ5UXYxU25kRHkzeGVqQ1Q5eDZm?=
 =?utf-8?B?c1NBbmlHM1RUcG1wNTNJaEtMSXdtZCtXUEhGT0djUzlUMFFGdlIzT0tCcUpT?=
 =?utf-8?B?QjVSODVqR09yb3ZmSXhFTGZsWXozdW1BMHFQRHZOaTVWQW04a0UwTHdvb3d2?=
 =?utf-8?B?bXB3Z1p5c01qaVhKelZEUk1TcEl5UlVxSlFrdmRDWVlhV3VwQXZtZ2RVWlZk?=
 =?utf-8?B?cWRNQlRHVGw2WDlJZUZ3YW5TZ2I2TjZMSWY5bjZ5a2xLa2hnZW5BZXFPWERx?=
 =?utf-8?B?ckFjV2JlbmpRMXRKZDkvZk9Rb2FLMGxsTHl5amIrVjl4OXJMSTdiRGlRbXQw?=
 =?utf-8?B?Q2xkMHp2SUUxa2VraVZMQVJDLzFpNS9WVXFoK0QvdnNkZ0I4VmtHM3VkVUFW?=
 =?utf-8?B?UkhlNmY1WVprUXRCRjRTaW9xUHhNUXRRQkR6aDhaQXVScWxrcE91WFQ3YWc1?=
 =?utf-8?B?OEZDU1dsSFVMUHNjRjhZdmhaa1FyQ21SSWFXbjlDcXJTbHlpY1JqVHFQdWMw?=
 =?utf-8?B?KzhwWFYreUN1NGZieGhzclN5eWc5UmNNN1FocjlsbENSNXMwc0cvWDVwdi9F?=
 =?utf-8?B?RkhLZG1TZUxpb2hMNUNPRmNDZzJic25oM0FhVGp2eXdNSHk4MUxQeHdEVDRx?=
 =?utf-8?B?Ky9jZEt3YWowbTlka0Z0Vlc3amFMTW1PQ1hPaUtYbWR0bDFTcmZuTTJidEZI?=
 =?utf-8?B?djV0SU8vdHZ1R0J0b09CdFRJSC9BblNmeXB3Q0M0OGU3UC9ZWWI3SFBIdjhN?=
 =?utf-8?B?SDBTbVhPby9jSE9tWkhqTmNQQ3c3TWkvd1RCMEpua3FkbnNTYWRSOWpRc1k5?=
 =?utf-8?B?YXd3YlFxRndKaThMWjVrTnRtd25qaGxsWk11OVZjVk04UVZLa2l6eVR0WTZa?=
 =?utf-8?B?L0VsbEwxQXVUNHBnU0MvcTVZNHVuandhWkNUQStYM0EyNzBTMHFCTXJMTXNN?=
 =?utf-8?B?Y2E1RU1OVmhBNUlOTmU5bDIycThwaTlMK2JYUkE0TkE2aUpkR1Y5N1l0KzA5?=
 =?utf-8?B?TkYvOXdPNlB6REQ3RWoxdzYrQ3NCNDdlcEhJMkp3VGw5VWszL0dGOFFyWnFZ?=
 =?utf-8?B?NnRJUGNmZjNLMWo4c2hWNzREVVJ4V1EyelZYcWZiWkx5dTlPS3NGTjQ0SC9r?=
 =?utf-8?B?MU1GaHczVEYweExZRUVUWTl0VnJGdnZrQjhvaS8yMjYwRUxSSU5LK29NUTdR?=
 =?utf-8?B?L0k2djkvQzREMStBNjRKTXgvdlhSRCthQUJiTG41S1ZkcGxhZkprVzh1U3o5?=
 =?utf-8?B?OWwxaTBveEp5Ny81b0tlSi92c1RyUDF6Zm9reW1xeEJzVDR6cFdzczZ3bDNG?=
 =?utf-8?B?cUcxdnZJUEMzL3RmSU5RSTRIVzRnN1I5cGFNajZWbjlZb0NDaVpLeTRLZDdW?=
 =?utf-8?B?UFVUVmtmOGNZbEJoNTZGSi9WMzliVHBqZ283ZWxML0NUWDFDVG0wdEd4NFMr?=
 =?utf-8?B?QXBTTDN0RVRlMVhoVHdWdjdaNlNhZDNlQzZ1c1VqOGdZMUFFYWpYL0xZbWEv?=
 =?utf-8?B?bUh0Q0htY2EyTUhLWTFqSkZnQzNRVUYrQThhT0w0bVF5RlZyai9kSC80blR6?=
 =?utf-8?B?YW1DRjZmcUJ1cTVkQS9ySlA0R21QTG1rYm5lZTB1YnNjMUdvMGEveCtONld6?=
 =?utf-8?B?NnFoaGZ6VU1FUlMwUEhGeDRqWFFRT05Ma1YzMnRIL05nN01jNGVzTmY1NnN1?=
 =?utf-8?B?cFNtYlZGSFFIdUhZMEhVU2tLZ096dUFuanZxVFNQclZxREQxMlJlc0NVdHF5?=
 =?utf-8?B?ZHJVMHdEaU1EOUR2R1IwUXBWR2pGeE16MEl0bnRjRFp6dkgwZjB1YzdaTkRG?=
 =?utf-8?Q?fN2PeIzJvG7+5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWxKODdJR0VDbzRMVVRQYkZkWkdEeGRMRC9NNGtpVFpzSWZid0tKazZhaTZ5?=
 =?utf-8?B?aTFxOXZxUU9ldkc0NkgvSkM4c1BFZG5vZVBWWUpDdzZMTEFsZEs3ZnpmM3lt?=
 =?utf-8?B?N3B2b3Z6a1NRSjJhNDFMV1VBQTJSaGw0ekI1RUJrNEZnSy9Kd2N5OS9ubWZw?=
 =?utf-8?B?b2t5NmFsUkZweUw5d0FXSFFSR2QzTklUL3YxUk1CWUIxclFIenFpNXZQS3VF?=
 =?utf-8?B?K2wxeUJ2b0NHY2JCTEp4YUNXNTZ1LzVFZ0pSLzFXYVJjNytVOXZqeTJrc21I?=
 =?utf-8?B?ZkJSU3p0a3p1U2Vvc3Z0RFc0RmtiZDVtNGxhS29CTUlOUVFpUDhBM1k0eEdj?=
 =?utf-8?B?NkNNSndBNFZsaTdxcVR5WnJGcFZMQWJXT3M3UVFkTDJXTEZqWkpGTU4zMVVo?=
 =?utf-8?B?V0VLY3Y1bnZORndjaHdUY2ZNeUxUcGo5YmtRWVdKRFpVSGdWekN0MU5qV2pu?=
 =?utf-8?B?RkF2TmZMQVREOXMyTzdseDJvRm5TT09LRmhjSlVEVkFocDh4aENWZUNHTzhr?=
 =?utf-8?B?WVRVeU4wd0RtemQvRFQvVHhsZncxbHh6TnJTWkwzbHNzbHZpU2ZJWUNjaCts?=
 =?utf-8?B?YmlvMkFnRk1PWVgyQ0IrSU5GeFhLSC85eURWSkFqUnZoeE11RHdzWnRNN1lu?=
 =?utf-8?B?STNQWmNibGF6YnhIR2xPNTFmN2taSGt3eUo4dDZDZW1XSGNDVUFxaVcvYjFT?=
 =?utf-8?B?ZWg2VG1XOVdubDZ3eVRGdENSeVM5SUNpa3JMRmczZ0t2a1lFUE9abFN3eDlM?=
 =?utf-8?B?UHpVWkl3Sm9YK0s3NDRIcXROSjlpQ3prM3RXQmJLY3FxQ21kUmFWNEJnZjBG?=
 =?utf-8?B?ZzZtcmhmbTBQMGhONktxbE5hMkNma3k5UDVMTnAyMUNoMjZuSFF4a3Q3QmJW?=
 =?utf-8?B?S0FnM3ZDUTZNWkFhblQxT20yQllOSVE0bGdkTk5tL0V5eGFVNUtKZkNwN0Zn?=
 =?utf-8?B?Tk55QlhpakFZZytBYzFmTUczYXdLYzlsYTh5STY2M0xmcDNCamVIREMxOFkz?=
 =?utf-8?B?eGJta1ByV2pkRkFvODVIdnJHOEFUWDRQejlNaTQ1ZGJEelNhWmhpalFwanZj?=
 =?utf-8?B?N3k3aytVM3VXWEJRc0xvM2QvQnFXRXBGaWZQSWtXZnRSeU82di80Q0dMTVhN?=
 =?utf-8?B?RTlPYk5sWG1EMTVRZVZXR2tYQmZIbDVkMWdnTzQ4VU1QWXZEMzMrdVUzQzVQ?=
 =?utf-8?B?ZVNxUGFUMzNoN1lxRFhBam50S3NNOUFFdlZlZWpDYjNSeVJYencrNytaNVdy?=
 =?utf-8?B?NGk5ZWtCNVN3U3BZS1BpNURDY3Y1NUw4RHkyeHo5bEVEUnkrUmRpYWI5TjRE?=
 =?utf-8?B?NlNpNm1UdmMyNTBQcGpBR0lIRnpXaDY5cmo2cVJyYXN1K25OSzh4cmU1Snh2?=
 =?utf-8?B?RTg5c1U4YU9LSTZyVWpxWFNFRS9ZOXZxV2VZbERaS3lKaCtqVmRGTkdTbEFZ?=
 =?utf-8?B?WjVwTXYrZytwdWcxWXZuQitoeFFxUEU5VVlMMzZXUjYweTduRTNDMUpQaUE5?=
 =?utf-8?B?KzByODZQbmxFNEdZNXc2bnJTejZjUlduMGh4VXVaclM4UVpweG9OT29PdmNn?=
 =?utf-8?B?YVhwUDhlOTNhQ0lyYktyNDRmQVhlL3BHWFo0SUlEbnFobHhzaWRmUEsrcUhm?=
 =?utf-8?B?WWtXTHdtVUhQUzF3dWtNSXRXdTFwYVI1VnlSN2Y0QWtJa21Fek9veUh3UjZj?=
 =?utf-8?B?SjVhVDNHU0dFMzFUdlNVOW9Tc2E5TWVpTDdObGtoQVJEUVY0N1Jnbi9Od0hS?=
 =?utf-8?B?TitQUWxOakU0ay9VNmlCK3NtU1hrTHZ1OXdXVGdZb0F1WEo3ejdXVEVPT1FO?=
 =?utf-8?B?bjljVXZVdkZBV09UUzA1MHVCWG5wK0M4R240d2JWSUxVd1lwOVpWSW1PbUI5?=
 =?utf-8?B?ZW84Nytxbm9La0FVZVlsbGhKY1lyV0dhcTUzNlNScUZPMVU5eXo5SDBIRFF4?=
 =?utf-8?B?QUhIdnVPM3BTL2ZMWEZXaVNRY2xHUDQvUDM0K0owQlFMWGQ2MzAvTExGYXc2?=
 =?utf-8?B?MXZ1c1lxZTM2S0doQjBKOEFuZ2YxZ0ZFTkFyZitSVGtmRUUrQTM1SXJyNEFz?=
 =?utf-8?B?R2sxUC9NdnRGUlBydEo4TnY3UFdkS011UlAzRG9yd0xrTkdHbXhGcmFTQ2ND?=
 =?utf-8?B?aWZITVdaSTNnZWNJV3RRU01JUVZST3ZwcE9ZUlRvUU84MHdIa3RuWW9qWnd2?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e909ee51-ba29-4130-5053-08dd33a352da
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 07:24:32.2644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mgMkTy/vEt9rS43BeC/6fXag8QrjsQlVYv0iSp+1pcrnMEKbcHTru9PR3ebSqf+j6CvCDYFweWLQgNsQjHKmYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8721
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




On 13-01-2025 12:38, Riana Tauro wrote:
> Hi Anirban
>
> On 1/10/2025 8:42 PM, Anirban, Sk wrote:
>>
>>
>>
>> On 09-01-2025 16:45, Nilawar, Badal wrote:
>>>
>>>
>>> On 09-01-2025 15:50, Nilawar, Badal wrote:
>>>>
>>>>
>>>> On 09-01-2025 15:00, sk.anirban@intel.com wrote:
>>>>> From: Sk Anirban<sk.anirban@intel.com>
>>>>>
>>>>> Fix the frequency calculation by ensuring it is adjusted
>>>>> only once during power measurement. Update live_rps_power test
>>>>> to use the correct frequency values for logging and comparison.
>>>>>
>>>>> v2:
>>>>>    - Improved frequency logging (Riana)
>>>>>
>>>>> Signed-off-by: Sk Anirban<sk.anirban@intel.com>
>>>>> Reviewed-by: Riana Tauro<riana.tauro@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>>>>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/ 
>>>>> drm/i915/gt/selftest_rps.c
>>>>> index c207a4fb03bf..e515d7eb628a 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>>> @@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps 
>>>>> *rps, int *freq)
>>>>>   {
>>>>>       *freq = rps_set_check(rps, *freq);
>>>>>       msleep(100);
>>>>> +    *freq = intel_gpu_freq(rps, *freq);
>>>> I am seeingrps_set_check will wait till act freq become desired 
>>>> freq, in case of timeout act freq could be different. I think it 
>>>> would be good to check freq returned by rps_set_check is expected 
>>>> freq if not then read freq again after msleep.
>>>
>>> Please ignore above comments, I got your code. You are applying freq 
>>> multiplier before passing to measure_power. While this approach 
>>> works fine, I recommend fixing measure_power() by using read_cagf() 
>>> instead of intel_rps_read_actual_frequency().
>>> Add Fixes: ac4e8560248f ("drm/i915/selftests: Add helper function 
>>> measure_power") in commit message.
>>>
>>> Regards,
>>> Badal
>>>
>> The measure_power() function is being used by slpc also, as slpc is 
>> not passing the raw frequency it may cause issue. So the plan is to 
>> create independent function to measure power for slpc, and for rps I 
>> will be using read_cagf() to calculate the avg.
>
> Are you planning to re-work this patch? In that case use read_cagf for 
> SLPC as well, wouldn't that work?
Yes, I'm modifying the patch to use read_cagf for rps and for slpc I am 
using an independent function to measure power using 
intel_rps_read_actual_frequency and that will internally call read_cagf.
>>
>> Regards,
>> Anirban
>>>
>>>> Regards, Badal
>>>>
>>>>>       return measure_power(rps, freq);
>>>>>   }
>>>>> @@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
>>>>>           pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>>>>>               engine->name,
>>>>> -            min.power, intel_gpu_freq(rps, min.freq),
>>>>> -            max.power, intel_gpu_freq(rps, max.freq));
>>>>> +            min.power, min.freq,
>>>>> +            max.power, max.freq);
>>>>>           if (10 * min.freq >= 9 * max.freq) {
>>>>> -            pr_notice("Could not control frequency, ran at [%d: 
>>>>> %uMHz, %d:%uMhz]\n",
>>>>> -                  min.freq, intel_gpu_freq(rps, min.freq),
>>>>> -                  max.freq, intel_gpu_freq(rps, max.freq));
>>>>> +            pr_notice("Could not control frequency, ran at 
>>>>> [%uMHz, %uMhz]\n",
>>>>> +                  min.freq,
>>>>> +                  max.freq);
>>>>>               continue;
>>>>>           }
>>
>

