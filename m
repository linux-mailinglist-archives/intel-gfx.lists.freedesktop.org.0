Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA2F8C11C3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 17:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4CDE10E401;
	Thu,  9 May 2024 15:13:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIG2n3aT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F95E10E2F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 15:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715267632; x=1746803632;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6BEx4LpQyy61/iZuHxnvBNxxoBOY/k0wNHfnej2zUn8=;
 b=jIG2n3aTxb3fZid92DFuIL3JEoxNhfPTT87gZuwRU3Tl5PdihVUHrTUS
 i+yfeL9bIZaC/ra+6rkXSseEGVmrDU/p+C2iU3mGeE2iQdgHMz+wyHtPI
 haJOBjj1neMXyWavyk68LDST7ZLkOrIjSAkiqYxDuJUz6umuekTx0jaFN
 KXEg3I5fkr+D3DFCD/c6a0B8OZ8AWCCsib/JTApMQAMYJiss4itCWJ5YY
 Bd/4znIkzcf7GqfEE3O1o4ifYxxwP9CT4KL7ggXk6fEWsjI4orkYGpnHP
 c+Ez0RiGcZgMMB1Qnh+L/9+QmSN/8CrA7+PKn5xuzABJo0Y0nnpFGt4h4 w==;
X-CSE-ConnectionGUID: fAdtyb6XSCisUYfmg/uRCQ==
X-CSE-MsgGUID: aNUj38qDQEqt2l63l7E90w==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11349901"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="11349901"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 08:13:51 -0700
X-CSE-ConnectionGUID: lGud6hF7SyenVc1Bh+VDNQ==
X-CSE-MsgGUID: c2w8onL1Tqqb7o8TmEVXGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="29328441"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 08:13:50 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 08:13:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 08:13:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 08:13:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iuu+PjspoLJKUH7JZhURp4Ri3p0UzYxHtxcDihRT958vE0PBViFemfElLINBmvzpEl1OHpPfRYg4AGBGiRrIBfOQw5nIJ7b3XW4V+uXsFeiW10dAschKe0AlNw9TOfUQBOP4fDg5zSLmBKr5uMdDH+VqLTXlJcS/TpbQhBjYGJhp5tz42FGIANmf+MDascLPrGODkPmJd+GuhiNsLidDyfgZlyG9N5xISXBcdffn6Ngg5UVwbtxvtChZqrxvxwAyzeZ9RoOKSKGxaOWWMBA5YlFoOjYeAjODzG61ESqAMJrCWcWZmIWGfH3j1ptLpySD4/NxeE24cvctWasF1ANwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6BEx4LpQyy61/iZuHxnvBNxxoBOY/k0wNHfnej2zUn8=;
 b=OrGNXhM2DZeXVbV2CiSp7KzNfOSUy0E9f5M//4/b/xwtbKD+OP2bWO2faDBFt5Dixl1WgmrAUHUHH1UAoazM+fC5QknI595EPEmnwlwC67U8/9zVwx2gIStZ2N6WiO13tKxQlZgFbVw/yU9jSxkhGmkF7MnAmUZktsnFoHbrLAroOW+fmWWjRIoIBb9pUlI6gzVqByNmsVKohXiFokqP6uIZc8rkPN04IKr3mapap0wAt2Z+6MQ/pG+fjO392LHkUrZ1tjS25lKmdC41giJjanz2Zjr6Lyntq+pGTzxEZj0jJM38EKF9mo9A1HKoDaV2A7ehMiDjGL9lV1xngn8/eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.48; Thu, 9 May
 2024 15:13:47 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%6]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 15:13:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to
 track it's status
Thread-Topic: [PATCH v9 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to
 track it's status
Thread-Index: AQHanSP8EEnkzmKzpUKkreBrxe3QfbGPCpuQ
Date: Thu, 9 May 2024 15:13:47 +0000
Message-ID: <BL1PR11MB5979EFFB7C5CD5CE34832255F9E62@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-9-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH8PR11MB7118:EE_
x-ms-office365-filtering-correlation-id: b708dff3-8357-410b-06e6-08dc703a9ff4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?TUt0SG9IZ2lOb1JtTTB5WU1hb1FFKzhheFh5L1BkdzBYRDZtZ2dCY0RIYU1z?=
 =?utf-8?B?ZG93b2NNTTljbGFYK211OE4wTzZ4QStkTHFRR1NEVEgxcWo5alo4NEdBWHlD?=
 =?utf-8?B?aGJ0WlZKalZPdDI1SlhBQlEyT3RaU0lIQ29XR1prODhqQkgwM21wV1ViaEpV?=
 =?utf-8?B?Z21NVnJ3ekxXelZ1T2IyRi9vZUR1K05SRVdDeU9QVzhtMndzMkhyL3Vlc05k?=
 =?utf-8?B?YnlkVWhRSnVoNFpUZWMyZmVtc0dIZzhGbXBLSDZqdmYraUtiMEtlb2NTV1N2?=
 =?utf-8?B?M0RYK2Ewb2JUSmNTdkpRTUI5WE0zd0RQdXRsR2Y0eWVFRDBjR1NMU2pvcFJw?=
 =?utf-8?B?VXN1dzkrWTJrRXlEcHl5ZWpPaGkxRTJ4T1dkSWlxb1IyVmxoOC9jN2RDWnlI?=
 =?utf-8?B?ZU5oSXVFbWhzYnRDME5ock5QbVBRMnV3bXduTmxjSUtBeHltcVpyeVJmZHIv?=
 =?utf-8?B?VTdiTVdXUzFwUlBnQ1g2OGdqZW56N3ZrMEEyZS9HVHU1K1F3bUMyRGJNUXpH?=
 =?utf-8?B?NHM1azBXRjBwS1VIc2YwMHdrd0VjT1NrSVdCV214UTRNb1FGZm9uS1A2RHRH?=
 =?utf-8?B?QkY2K1pvakJUQ2tVekJLM0NTU2FnWWVlSkFTMTBVUlh3MFcrUGpXaTJuRDgw?=
 =?utf-8?B?blVES0FXYnlUTjFJWkQ0UzM1YnhLMXFiOXhkMFRUcElDT2laeFNCajRMQzg1?=
 =?utf-8?B?YkE5NG4xSVlnNHdVMG1KZzU0QnJqMi9UeGNNR2x0RmxaWm5YL3Q4NVlRSGsy?=
 =?utf-8?B?bGRjVlZxcFI5NitYYXB6WlEvZDdNbkdRN243YkVrZG44bldqeHhhVFpmMFE3?=
 =?utf-8?B?M1pSTW5FSXoxTTdZSUxxSzJrQ2RVU05SUUZhV01wcFhIcDhyT3BtWkNMT2R0?=
 =?utf-8?B?TnpvVmhoUUlaam5oUHlWQzVlS2NLMXRWVTJZNWxQWnZ2QkFuend5c0V4MlEv?=
 =?utf-8?B?YmRCRnh1V2N3bGM4ZWR5NnIyRzI4enMwc3djRFlGUCtKM1dCUG8rUzJjSnlQ?=
 =?utf-8?B?WEFuK0llOGhka2FtQThJNDdaakd6bFQzODZzOGRxZ2hUeG1pUnJPK0VwZ1Ev?=
 =?utf-8?B?TkFzd0ZZM2Y0eW56K0hmaGF6Y1FzckNIdUVKV3c1VUdpck1hNnV4ZWI2dGdn?=
 =?utf-8?B?NlZIN3dRY3E4WmhoN0NQTTVNaHhHZ0UwRXV1REZycnBrSWZPS24vY1pCZjJR?=
 =?utf-8?B?ZURvYTU4NHJkMm9TTjVEWmlaV1A2blQyMGh6OUJUbUVtNGdWQlpicTU3aGNo?=
 =?utf-8?B?dU0xdTBMOEtTaGErV3hlc0F2cGJNcjFkeUpIQ1l4ckhSRlBDdk04RzNqUjdD?=
 =?utf-8?B?T0dwZHlwNTQrNytwQnAxUEJyZUkwVFdRWVN5dkh0Q2pkdFUvNGs1UVZGbTF1?=
 =?utf-8?B?bG1mVll6U0hncERTQVp1U29FR255TXZzVFhQNFliSU1pU3JBUUR0UmxSOFQ5?=
 =?utf-8?B?SDltYkhJUHRTandhNHprQzFoZy9iNEQva3ZUN2RrWkYwU3JrMEdteitoVE1P?=
 =?utf-8?B?dDVBRUE3NmgrdHJHM25QbFQ0dTJNVmwwLzIwZ3ZtTjZkZjkvTUZzdFErd3Rx?=
 =?utf-8?B?aEhqK05lWTl0b21nZUxhbHIrUGZjdlovVGVzd2Q2MmJ5NE9qRXZDcWswNE5h?=
 =?utf-8?B?THBiTG81ajZ0QkZqSXA0SjFMZXNiV2ttb3dNQVJBa0srTS85RDM4QTdMNG1G?=
 =?utf-8?B?eXN0UWtlR3RHYmQ3eW15L3NudWhKbUUrb0VPWTdmSjNzV0hYcGpFMThZYSt6?=
 =?utf-8?B?dlBsalN3NGJSS25wQWlnNkFzdHhpV0o5eDZsTlRoR3FMMzdRZ0VYMHFnMUdy?=
 =?utf-8?B?Z2hFbk5tRTFvSnpkRGVnUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1V3cEJDK1p4VkliY3Vnd1V0ektJWGdrMldPTVVEY3YrM2NzMjdIM3IwOXRa?=
 =?utf-8?B?MEdUbWJNK1J5REVacTNweFkrc21CdllUMi95NU1wb2krMHBLZTZ0WmFCNCt2?=
 =?utf-8?B?L3lwRy83Sldsb1YydUJjdjhoN29hallRVk1SY1pIYWo2eHY4QTF6K05tVnRq?=
 =?utf-8?B?dmplWnBTTmlucGJQUXF6RXJkVmwzckI2cnpIVHhxaUtvc0FkV2lOcVZoc1Y0?=
 =?utf-8?B?Y2lzL0VpbmprVEdXZ0N1ZkFDblJib1lOc0N4amlGTkRFOGNDVCtlSWFRMzdU?=
 =?utf-8?B?Q3NzNWlvZnd3VG5SYzl1RGtuTlBuanJLejJRdFdjQ05UQkNaOXJwV1FYWC9j?=
 =?utf-8?B?YVBoSHRkY0pnR1BiVW1MSmlHKzl1OFVaY3NHaU1KZ3VyRm1nbDh6cmZKN1RI?=
 =?utf-8?B?MnVMdU1hMVBEOC9tUmxoa1o3RDZsN3YwYVNFeWFDTDVtOXdQWkpRc3UvTzZD?=
 =?utf-8?B?dEN6SThVSFFvQ1NPMUgyUE0xMkdDTWdCNTNhOE5CL2RvQytnR1hwVEFVc243?=
 =?utf-8?B?dnBkWG1aNWZ2QWFFd0N0Y1hpSzBIZk8xdXY5WS9WTXBIZXFVQ2gyUUNUUjF4?=
 =?utf-8?B?NW4wOVZxcGpweTZWQy9lRkxvVGRoLzdoQUd2K1pOQVpSK1BsOWNqaStjWDE2?=
 =?utf-8?B?SGxveGwrT2lobVdtaFhVSTRkcXRyOFVaemF0VzJWYWpDRk9vM3FRQ2pMbi9t?=
 =?utf-8?B?TXdMMW1Ma0t5c0Qwc09qYTBrVXJEWitkbnloSXR5OEVud2t6QkFLZ3NSeThY?=
 =?utf-8?B?eVFQbmMydmtiNjllV0N1SCszR0FBMEtQN0ppMzFsandIYVFQMjA2cFViWXQx?=
 =?utf-8?B?eGx0eWM2OXNhWDR4UXlmT2ZWNXJpKzYrcHFzQ003RzBPSkxiL1QzZXhKZ0xX?=
 =?utf-8?B?WngxZGEvU2REd3E3WW9KMzNySW84QjJvY3ZCSERrbUdlRW0xb3hLOVRWaG40?=
 =?utf-8?B?YzlOVDZKRFZ6SUpiNWtGN1hDYUF4cUNPenlQNzJKOVJtdzhlYkxrUXlBdHAx?=
 =?utf-8?B?U0l6L1pZdEUwVE5KUGpROWhmQW9yMHdhbTd5TVZxTGI4YXp1M2NSenQycmVH?=
 =?utf-8?B?RlZhdmFvRlNUL0hEd1E4c3pPMWVEc0szRngwSC9LUU9hS1orQmJCc2JvTHpH?=
 =?utf-8?B?SE9maEpGZ29oSVRHOUd6dFJEb3haYjNxTVpKLzUxK2pWSnpEeFJib2FSNkZX?=
 =?utf-8?B?cStBdUpYWFhSRlkxRk1WMGtqUlNxODVNVFFCMU5TVTd5VlE1cUhReExtMS9Y?=
 =?utf-8?B?NTgySEZlMEtLWHpBN0lwL1JabXFnMGtabklsMDZScUFZL1hOMndsL0RGN2JU?=
 =?utf-8?B?Q1NzN1dvOStyY2NhYlRHWGVacXNDUUE5Tm13NjFBNWFqWjluYzJyRnRubUd4?=
 =?utf-8?B?cXdwTFNycTFoQ2pvSUs0Mkl3RnRFZG5Qa0dBOGtpS2x6cDdjQWV0alBhdmpn?=
 =?utf-8?B?QVlzRVpra1o2Yit1S2VOWWl3Yjg4MWQ5U2xRSkNSTHhNN2lkRzRzdURhTE8y?=
 =?utf-8?B?aTc3S1dDYnVCaE9JWFpYaDdvVmRzTXJDaVpmTktweXVVeW94RktwNDVtWUo4?=
 =?utf-8?B?TThDdUhHcmpuUTB5YWVnREJodVlIb2Q2QU1ON1ozOTV5NGxYQ0dVMEhhVENX?=
 =?utf-8?B?Q3ZrV2ZkUlU2bWtSeG4vUlB5enZ4SVdHVEcza2kycGtoeko1WFptOHdTdTdJ?=
 =?utf-8?B?SyttZ1EwdWFlQjZ1V1g0aURhdlhLd2VBTndIZEtlU0cxYUMyYjVSa3dORTBs?=
 =?utf-8?B?b3ZTYUpwc2RjZFJENkdVYzBNMWxHcHI2YWhiVjRuTGRFaWYrWEJWNkkxNm50?=
 =?utf-8?B?TFEwRlpzU0lkcDlhYTYyN3JpK2JqZXdRQ0QrblNzL0NwRUEvdmpVWThETTY0?=
 =?utf-8?B?WHBwN0N5U0hXdi93cktIL2phWklQWGhOVCtKQm95Y1N3WGZ3eXBlclBQZTdN?=
 =?utf-8?B?S3F1cmVqTmhCSFl4OFVUdVlCSmpwZlloL0Y5WFBQVVkwV1pIQUFlUktnaXpi?=
 =?utf-8?B?YUNDcnlLbHJqK0lJSzFML0llSmRDbkhvekJOeGZpSzA3YVc4MGwyTXp5SWEy?=
 =?utf-8?B?TGJhcDd4TFc1OTREbzhaV3AvU3dCenFkVHgxWTBrTFhaVmQxa2h6NHlHZjJW?=
 =?utf-8?Q?fnX6AYSXVAxkqkC84juCAi7ia?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b708dff3-8357-410b-06e6-08dc703a9ff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 15:13:47.3713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9Ksv1A3U2AaYkcDf/sAiFP8ci1fiEX4sNUd2oaBRNdBXyVeZut+32hciNKntB+DDBTzEnQgTWoKArgETRdjgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDgvMTJd
IGRybS9pOTE1L3BzcjogUGFuZWwgcmVwbGF5IHVzZXMgU1JEX1NUQVRVUyB0bw0KPiB0cmFjayBp
dCdzIHN0YXR1cw0KPiANCj4gRFAgUGFuZWwgcmVwbGF5IHVzZXMgU1JEX1NUQVRVUyB0byB0cmFj
ayBpdCdzIHN0YXR1cyBkZXNwaXRlIHNlbGVjdGl2ZSB1cGRhdGUNCj4gbW9kZS4NCj4gDQo+IEJz
cGVjOiA1MzM3MCwgNjg5MjANCj4gDQo+IHYzOg0KPiAgIC0gZG8gbm90IHVzZSBQU1IyX1NUQVRV
UyBmb3IgUFNSMQ0KPiB2MjoNCj4gICAtIHVzZSBpbnRlbF9kcF9pc19lZHAgdG8gZGlmZmVyZW50
aWF0ZQ0KPiAgIC0gbW9kaWZ5IGRlYnVnZnMgc3RhdHVzIGFzIHdlbGwNCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA4ICsrKysrLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDVl
NWVmNDMyYjkzMS4uOGYyM2RmNWNkNWE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTI4NjAsNyArMjg2MCw4IEBAIHZvaWQgaW50ZWxfcHNy
X3dhaXRfZm9yX2lkbGVfbG9ja2VkKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpu
ZXdfY3J0Y19zdGF0DQo+ICAJCWlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiAgCQkJY29u
dGludWU7DQo+IA0KPiAtCQlpZiAoaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpDQo+
ICsJCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmDQo+ICsJCSAgICBpbnRlbF9kcC0+
cHNyLnNlbF91cGRhdGVfZW5hYmxlZCkNCg0KV2h5IG5vdCB1c2luZyBwYW5lbF9yZXBsYXlfZW5h
YmxlZCBjaGVjayBoZXJlPyBGb3IgZWRwIHBhbmVsIHJlcGxheSBzZWxlY3RpdmUgdXBkYXRlIHRo
ZSBhYm92ZSBjb25kaXRpb24gd2lsbCBiZSB0cnVlLCBydD8NCg0KPiAgCQkJcmV0ID0NCj4gX3Bz
cjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+ICAJCWVsc2UNCj4g
IAkJCXJldCA9DQo+IF9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoaW50ZWxfZHAp
Ow0KPiBAQCAtMjg4MSw3ICsyODgyLDggQEAgc3RhdGljIGJvb2wgX19wc3Jfd2FpdF9mb3JfaWRs
ZV9sb2NrZWQoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoIWludGVsX2Rw
LT5wc3IuZW5hYmxlZCkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiANCj4gLQlpZiAoaW50ZWxfZHAt
PnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpIHsNCj4gKwlpZiAoIWludGVsX2RwLT5wc3IucGFuZWxf
cmVwbGF5X2VuYWJsZWQgJiYNCj4gKwkgICAgaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJs
ZWQpIHsNCj4gIAkJcmVnID0gRURQX1BTUjJfU1RBVFVTKGNwdV90cmFuc2NvZGVyKTsNCj4gIAkJ
bWFzayA9IEVEUF9QU1IyX1NUQVRVU19TVEFURV9NQVNLOw0KPiAgCX0gZWxzZSB7DQo+IEBAIC0z
NTAwLDcgKzM1MDIsNyBAQCBwc3Jfc291cmNlX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLCBzdHJ1Y3QNCj4gc2VxX2ZpbGUgKm0pDQo+ICAJY29uc3QgY2hhciAqc3RhdHVzID0gInVu
a25vd24iOw0KPiAgCXUzMiB2YWwsIHN0YXR1c192YWw7DQo+IA0KPiAtCWlmIChpbnRlbF9kcC0+
cHNyLnNlbF91cGRhdGVfZW5hYmxlZCkgew0KPiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxf
ZHApICYmIGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7DQoNClNhbWUgYXMgYWJv
dmUuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gIAkJc3RhdGljIGNvbnN0IGNoYXIgKiBjb25z
dCBsaXZlX3N0YXR1c1tdID0gew0KPiAgCQkJIklETEUiLA0KPiAgCQkJIkNBUFRVUkUiLA0KPiAt
LQ0KPiAyLjM0LjENCg0K
