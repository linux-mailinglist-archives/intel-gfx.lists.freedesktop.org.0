Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB905AD4513
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 23:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5510210E341;
	Tue, 10 Jun 2025 21:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pse1BWyl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA57A10E341;
 Tue, 10 Jun 2025 21:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749592441; x=1781128441;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uPGYyCj+aPMXDE1OqJEZBZWcmjb0f3zbM9c+rVGySps=;
 b=Pse1BWylJTwU21dUg235Fi77ow7lexVgXpQG4qVrmUNjlVq4pJDCyIqU
 5lKtUHiwavFXVZY8R78fqpvcBwmJCTw/uW3YGE1B3DbNTA3C+3o7J5irT
 GKzI+xrYOzKgJORVwz4CbxHhPCUS2E5JKQFTPwzs19nmo8bDwAUCnMa9q
 B7IaJQsM67WSz64U9c+50j1SnQ5uYUMoGNTMmw/uNyCNIy2F6iOY3K/HS
 sxe+QkiquvAWw4rXxCHzudkPoh7/CCSoeFH9BNWEfhQfAMUtpMZj56aFi
 8jlw3mk7cCmk4/jYQ8qQyLgP+tsBP40WpMBpVsSkwBx8SjPJQfexfF/KQ g==;
X-CSE-ConnectionGUID: 2PjCIIFsTw2kMY+YENmRKQ==
X-CSE-MsgGUID: 94ngn9FUQOi9SWW4H6jrYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51808883"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51808883"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:54:01 -0700
X-CSE-ConnectionGUID: 95ptXr7xQ22x3v0TaNu0yw==
X-CSE-MsgGUID: buszH26BS3unrphZ94hhzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="146864616"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:54:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:54:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:54:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.76)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iVwb7T4WJ5f/vgI34c5/9uFAXPmbbfG49lEXxWPR6SHPFOWfG6uEgTjdTH3DEfAi7tT8sd+GKhA7CrXngmkmCbtdxt7EM4YoUmeYjOyewpJdgeSFXamKpsLU8SrZ9qhsJE3x2gFNg+QgjADU87CufC+QteY/Uy/5ToKMx3RWofeyploZe8E1h569sXI2VDrrQdVc/FJh7cYXlulZ3+ViB8yokJt/UH2BtGt97KMTJBQs/IyOH/MfWYksO+v3qJXh73K5x5aA28TTCO0Cf0AGQlgUfs9j26JWECs3wMjK0N2ktQNRZNOc9hVttOhLXY1rzKmU1seIX2QJimM5/CrLQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPGYyCj+aPMXDE1OqJEZBZWcmjb0f3zbM9c+rVGySps=;
 b=obUiqbUJgHAGxW5WgDuT/MTqeZik/HHprQAEsLOM2LyvFi5zE60kB7/J7qaJiig77b9S4rxUB8rbrw/To6OCxQP1GDt070y4Cy8XhnqGFLmWpBRDDadYCxLCaZ/2dtnfSP5Abe41+mn46FfrybrlvrZswkx6wEqTMsdWjIbHTnflxayPNGLsfb99ZFW8RON4J0B+MqPEYpzTku/PwJwYKHFZKIEYUDS2ZRU6w2QUu9QTXrT5ojdsfvakAl6JGknmdMJKVtafJWERxEiavvpuJtJvT37nNCTPNsqXTxuzYxS77p1qrsjK8FHjZHrfmM/PUVF2OJwZuWJWMATTbBT0UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8813.29; Tue, 10 Jun 2025 21:53:44 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 21:53:44 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 06/21] drm/i915/dsb: Disable the GOSUB interrupt
Thread-Topic: [PATCH v4 06/21] drm/i915/dsb: Disable the GOSUB interrupt
Thread-Index: AQHb2UhlLz9+l/3fzkuu7yeW9/CBOLP88ZCg
Date: Tue, 10 Jun 2025 21:53:44 +0000
Message-ID: <DM4PR11MB6360A7D73990C3CC491041DFF46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7874:EE_
x-ms-office365-filtering-correlation-id: f9897f9c-77a7-4886-5140-08dda8694544
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eFpjRUVKYVVVY2h3MWExRzZlRE52RHJZQ1pHUFM1Z3VsWk1HWmllZTJiRmNZ?=
 =?utf-8?B?LzJEV1BYZXp4L3lXaXNlSXdLRjV3bmx1MVR4alRDQzU0MzI2dlZFTUs2S1gv?=
 =?utf-8?B?NjVBSlpjNzgrNFZsREtHVTBoUVRia3JqdjNPOWRaNk5XUS9wTDVuaU5XZTlM?=
 =?utf-8?B?N1dCQ1lIYkw5cWM1bWR3YzBTVSttOE5sRXVLMytONGhCcGliSW9QTFEwODIx?=
 =?utf-8?B?UUVmeTBzcXU2WmRMZGhkZUhsTElsL1NQcWhDT1MyaVFOSmMzbnlDTVprRXdI?=
 =?utf-8?B?SXB5ejNYaHRvMnVzdlVXblhhUkhjVWFDeVhvenpFZW9jcks2aG9xM21ZVXN4?=
 =?utf-8?B?NjJYTlVtUWFsdWFVbFBEYmVCbXhCcFJnTHNINW1PY1p5amZSeVJhWU1ackN0?=
 =?utf-8?B?L0pKMGttTUdqMTJocG9PSkkrZHU4czQxMXJDZ2VqNDB5ek80NXVkMzFaZ3hz?=
 =?utf-8?B?V1ZWWGExTzE5VVI1KzBPMC9hZERZUFJNK2thcW52bWQ1YkttaEYvRi96bnBw?=
 =?utf-8?B?TGtOTHRRSEVYWTBIV0d0ZDZZKzhUdWNucTc2UE4wM2lSNnhOZjlTNERoSC9o?=
 =?utf-8?B?M1dZelE1MFdRa2p0V1R4bnMvdk1tUXdVekNPR29hQm81bkxZZ2ZzbVJVVEJw?=
 =?utf-8?B?aFhFbUJjNHZLTng5MGQ0OEs1YTBYZTVkYkI2VFA3c0w1dWtxNEhTZDJLcHIy?=
 =?utf-8?B?d0gzc0lYN2FtcENEaGo0bXhPSmVkT0Jza0NpbllJaHBhc2dRV3hSVHZsaFU5?=
 =?utf-8?B?RzZRNm5LUytiL1JkeUsvVSsveC90MTRrRStjeGROVXZSQUt3dG9KOG5xV0pj?=
 =?utf-8?B?RitqTlRFVFdrOStuNEFjQjNKYU8wbURHbXA3MERzd1JZeWZLYjVURSsvRytC?=
 =?utf-8?B?VDhlS2M5Mm5aSW9KbUh6OHoxSkdvaUJJSTlSRStlUVdBVFZxckVCQ1Vtam5a?=
 =?utf-8?B?OU5rb0VPc3FvQWVaSEdQUnVFYzVrbWdaa213eXZja21yTGNpVjgyYkRRYUhw?=
 =?utf-8?B?L1Q2dE1LZnBvWURlVlJwbzRYelhvVytZcGcwNDI0YUwyQ0VQcDVuRlhMSnhF?=
 =?utf-8?B?VE5pbjZnRndMOXgwK1QwdFgyV3lZTGMrVVIrWjJhbjgrOVExU1BLcWlFejZr?=
 =?utf-8?B?aWRKVS9DbFhOZXFIR2d0L2hxL3YvUWRMUEVkeEl4NmY2VXphNWpsT3RiSm9P?=
 =?utf-8?B?OGx3c2gyR1RtbFlaM1JCaTNaL3VrMnBhc0haTWhqRElvUkJBK1VnaFFpMlBV?=
 =?utf-8?B?Q1VUdlRLazdIMTVYY2lnYkVnNnVFcU95VGhRSjRna2pCalRMV2ZtYXhSWlVk?=
 =?utf-8?B?cGpVRFFwR2hMZS9vakxpc0dVYlhFSmUzdjBvNWtJcmJ6V05DajVVcy8xMVY3?=
 =?utf-8?B?Vk03ZjVSRzNScmUzSVNMalF6cEo1YzFKZDhuQ3IzWUc5ZE5EdEFEaFZnOGZD?=
 =?utf-8?B?TElUOFI5YTBtVFVMa283WDVITUdkMmtjOUwrbjYwbTNVTnlhbzNJNzlrZWNr?=
 =?utf-8?B?a2Y3NC9VVklnMVFnVXM3ZnlNb3F6S1pVSDRENWFoK01pUEpjTkcvK0pIbk1T?=
 =?utf-8?B?dlNTSEJKcmxtOUtvSytObEhyWVdkc2wwR0FpQitKcitSVkZtWk9ybG5YNlM0?=
 =?utf-8?B?T2NDbnFwQ1I2RTFQRlM3MklQM3hIemsvUzJUSUVPVGZWcWIwU1pvRGZKVG85?=
 =?utf-8?B?TWdLQ3Yvb2ZtWFp4WkxocGI1S0dBNjgybERMQnphNTJZUzlTaFNSQWZGVEkr?=
 =?utf-8?B?eGtPTWNJWlA5VzAvZmpCcysxY3h0ek1QNlFLaUkyN0VCSUhGeGowaHNxMGxn?=
 =?utf-8?B?Sk4zanZZQUJiQlQya3lWNU9LUWhXRSs1K2NVWVlvVk9Ka2o2cmdiVTdNVVND?=
 =?utf-8?B?UXdmYVREamRFcVNFbnFob3F0MGV3cW5Ra3JsZDB2TGF4VzVxZWFWOFNSQ2hn?=
 =?utf-8?B?ZDJDVkc3TmtKOVBZU3RXL1hvd2NhSGd1UU9GQXExOW9hV0wrYjFEdVVRMFRv?=
 =?utf-8?B?SVJOTlJXQll3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RElLWE55RWo4bFk0OTdBcjYwSG5zQU00UmxOTzh1MHZhVkJZbkJDSitWaVhT?=
 =?utf-8?B?OWZaaUpRekNReGt5SmMrT2RxTngzc1NSM2E5YU9ZSDM2TTE3bXhCZjNieExG?=
 =?utf-8?B?VTB1VjlJV3k1cDNhcWNaWFhEbUJhbEV5enpaOUVON0lvWEtmZVFseFhyWllV?=
 =?utf-8?B?czdWMXpkOXBzUDd6N0RLeXBxbzE5emJoczFkYktqaVF0UHBCNjkxT20xSUt0?=
 =?utf-8?B?dCtYb0k0TVZzUU1hNGVpUk1oMDF0bk9XRVhvai9PTWdXaGlSMnRkM0NlZFJq?=
 =?utf-8?B?REFwRk5pYVJWUjhrZE5OaXp3NXlBZ3piY045VVhoRnBPdkUyRnAzNDVVbFdo?=
 =?utf-8?B?UEZ0TXMyQU4yWWowM3pnTW9QaGNSM3kyQitWY2ErTVZVN1FINGlhS1JZRCtV?=
 =?utf-8?B?THB4d09aSFBzWXQxYjhMdTE5dTY0WXVNeXJsbExhSVVuZk0zSnp1bEpFQXkw?=
 =?utf-8?B?ODFSQjc1c3QrWjI0Z0NqclhBN0Irb0ZhWHZqeXhzUnNPZkNVc1FXQUQ2ZENI?=
 =?utf-8?B?RmpHd1NtT0hDVlhHYnNWLzduUWowNmxTRW5MRm5jc1JYZ0s4Y243T3JUWkJD?=
 =?utf-8?B?aVk1NytyMzU5QTZWbzNQYzJrRTNTdTRSbHZhbnBpV3AyN0RLeGVrK3M5cVBW?=
 =?utf-8?B?Z1BSZ2QxVllIOWxHWFcrOWVFMmVQYTQ2WVcvVGRSR2h3OVgxWlpzbzV0L1FJ?=
 =?utf-8?B?MW92aThzUklyMkxPZmtGZmhMMEZyY3ZkWDZHNk1nWWp0SUlKbmFVNXpVSWZY?=
 =?utf-8?B?TFZzZVU0bVRhUkNjSVNlMlhtZzZuTUgyRWpwV3RGNkZydWJEQVNlUDlXS09r?=
 =?utf-8?B?NzJCNVk3U1NjTEt0bFN1K2s5TnpzMUVTQkQ0ZUVRMWIyU29WQzFGTWZJV1h0?=
 =?utf-8?B?bThmKzl3U3BuMis2bzBmWXZqdUN2TmZCQ2dWdXdQaWZvSlIrcEYyKzJoa3Np?=
 =?utf-8?B?VHkzNm5TeEljUU1xdjMybG9jLytRTzZvVDRtT0NBbDVFMUtUVGlmb1psVkxt?=
 =?utf-8?B?NWRBTUpKZUFnc3Ira2lVQlhmbUhRVWxBUHhkSUtGQ0tsUS9keDMwQXp1QUFr?=
 =?utf-8?B?eHkyUmVzMHEvaVo2SzdxR3hXSDlEUW1FdmdHOUc0blQybWZyVTl3RzBmc2Rq?=
 =?utf-8?B?cjROWGlLTmRvMzlUeTdlcTZaby9URmFieWFLQzh0MloyQ1RxK1NYcVlYckQy?=
 =?utf-8?B?SWxnV0Z3TjhVZExQaVRzWGFId1dNSXFjL0Y3dFhMeW9wRUdyRmsrS2djZ0lW?=
 =?utf-8?B?eEMwR3B2Z2JERDF0cW8wVGJwN0xjUEcveU1yQVdsRTdVTnYvTnVOeWlVb0hw?=
 =?utf-8?B?UXcrVlA5d0lIZlozeUNTRUY4dTkyZGpiazBDYTZieEdnZWkvWFp3WkJtRWt4?=
 =?utf-8?B?cE1NM01wVkNGY2JKRE54K3FoTVpybFBFS2lnK29ScmlmZG5zSzh1b2kvYVlD?=
 =?utf-8?B?VWp5WW5hTS9OVjF1VmlqRVBZR0NlSEhrTlIzcXkzTGd5S2VuSE5VSEYxeVpt?=
 =?utf-8?B?REE5YThIc3lDMjVNbm9FQVg3WGNSUnVJbW9NYjJmamkwN3laZnVSTTgwWEpz?=
 =?utf-8?B?bGdLdWVYZ04rMmNpbG1jSnhKaWhVQVk2SGgzbk90MFFNZDd6TkN1bXNWTlF4?=
 =?utf-8?B?bmpiNXVuQ3g1a05YRUNweDNURkxiSnZrUVZMM3d6U1kwblMzL081YmtjbzNo?=
 =?utf-8?B?U3RON2VuL2w1QnZMSk9JNlVlRXIzblRUTXJiZzlxOXFLMlVXSVlhcUtwWURt?=
 =?utf-8?B?akZFOFVRaktvU1FoRkdya3hobFZoTGRQSjBheXNIU1Rnd29lMmpkUUJUcnB4?=
 =?utf-8?B?emZLWXNvWWFqWW95emJuSW94YWVQaXFXdEVFNXhSSFFGakNIMkRDWVVLV3Ir?=
 =?utf-8?B?eTE2SlQ0cFkvTkNwaUlJdnRKRzZJOG80am9OTndxOW5PQjBhYmpwUzB6MTNa?=
 =?utf-8?B?QzJqUSsrRTRBdFM1cnliRUxEQmEyU29nVWRyY3ZUektuV2t6R2RHOHNBWGhE?=
 =?utf-8?B?S1MwRU9ZYTNrd0xncDRBVUQ4c0x2NFBPVTVMalRqSlR3dHFRT2s3NHcreHdX?=
 =?utf-8?B?WCtEMmR0Mlc1WnB0c1A0YzN3ZHQ4U2IySjN5T2J5djNQcWRpd3FDZnRqbDBI?=
 =?utf-8?Q?6mV5ncXJKNkHdmsMPAMB57HDi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9897f9c-77a7-4886-5140-08dda8694544
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:53:44.3330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A+jOtpqKijWbPoOYxl23xm6nGSPDS10SrVkMiU5vi39t8SX+4by/6IfPM0N8lKA+EANO3AQr6WUbGY4fh8sbyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIEp1bmUgOSwgMjAyNSA3OjQxIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY0IDA2LzIxXSBkcm0vaTkxNS9kc2I6IERpc2Fi
bGUgdGhlIEdPU1VCIGludGVycnVwdA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEN1cnJlbnQgRFNCIGhhcmR3YXJlIGlz
IGFwcGFyZW50bHkgYSBiaXQgYm9ya2VkIGFuZCBsaWtlcyB0byBzaWduYWwgc3B1cmlvdXMNCj4g
R09TVUIgZXJyb3JzLiBXZSBhbHJlYWR5IGhhdmUgbW9zdCBmb3IgdGhlIHdvcmthcm91bmRzIGZv
ciB0aGlzIGluIHBsYWNlLCBidXQNCj4gdGhlIGxhc3QgcGFydCBpcyBzaW1wbHkgbm90IGVuYWJs
aW5nIHRoZSBjb3JyZXNwb25kaW5nIGludGVycnVwdC4NCj4gDQo+IFdoaWxlIGF0IGl0IHBvbGlz
aCB1cCB0aGUgdy9hIGNvbW1lbnRzIHdpdGggdGhlIHcvYSBudW1iZXIsIGFuZCBjb25zaXN0ZW50
bHkgdGFrZQ0KPiB0aGUgc2hvcnQgYmx1cnAgZnJvbSB0aGUgdy9hIHBhZ2UuDQoNCkxvb2tzIEdv
b2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCAxNCArKysrKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiBpbmRleCA2ZmRkMzI0NjE1ZTIuLmY2MGE2Njk4NDE5YyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC01NTUs
OCArNTU1LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZHNiX2dvc3ViX2FsaWduKHN0cnVjdCBpbnRl
bF9kc2IgKmRzYikNCj4gIAlhbGlnbmVkX3RhaWwgPSBBTElHTih0YWlsLCBDQUNIRUxJTkVfQllU
RVMpOw0KPiANCj4gIAkvKg0KPiAtCSAqICJUaGUgR09TVUIgaW5zdHJ1Y3Rpb24gY2Fubm90IGJl
IHBsYWNlZCBpbg0KPiAtCSAqICBjYWNoZWxpbmUgUVcgc2xvdCA2IG9yIDcgKG51bWJlcmVkIDAt
NykiDQo+ICsJICogV2FfMTYwMjQ5MTcxMjgNCj4gKwkgKiAiRW5zdXJlIEdPU1VCIGlzIG5vdCBw
bGFjZWQgaW4gY2FjaGVsaW5lIFFXIHNsb3QgNiBvciA3IChudW1iZXJlZCAwLQ0KPiA3KSINCj4g
IAkgKi8NCj4gIAlpZiAoYWxpZ25lZF90YWlsIC0gdGFpbCA8PSAyICogOCkNCj4gIAkJaW50ZWxf
ZHNiX2J1ZmZlcl9tZW1zZXQoJmRzYi0+ZHNiX2J1ZiwgZHNiLT5mcmVlX3BvcywgMCwgQEANCj4g
LTYxOSw4ICs2MTksOCBAQCB2b2lkIGludGVsX2RzYl9nb3N1Yl9maW5pc2goc3RydWN0IGludGVs
X2RzYiAqZHNiKQ0KPiAgCWludGVsX2RzYl9hbGlnbl90YWlsKGRzYik7DQo+IA0KPiAgCS8qDQo+
IC0JICogIkFsbCBzdWJyb3V0aW5lcyBjYWxsZWQgYnkgdGhlIEdPU1VCIGluc3RydWN0aW9uDQo+
IC0JICogIG11c3QgZW5kIHdpdGggYSBjYWNoZWxpbmUgb2YgTk9QcyINCj4gKwkgKiBXYV8xNjAy
NDkxNzEyOA0KPiArCSAqICJFbnN1cmUgdGhhdCBhbGwgc3Vicm91dGluZXMgY2FsbGVkIGJ5IEdP
U1VCIGVuZCB3aXRoIGEgY2FjaGVsaW5lIG9mDQo+IE5PUHMiDQo+ICAJICovDQo+ICAJaW50ZWxf
ZHNiX25vb3AoZHNiLCA4KTsNCj4gDQo+IEBAIC02NjgsNyArNjY4LDExIEBAIHN0YXRpYyB1MzIg
ZHNiX2Vycm9yX2ludF9lbihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAlpZiAo
RElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ICAJCWVycm9ycyB8PSBEU0JfQVRTX0ZBVUxU
X0lOVF9FTjsNCj4gDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwKQ0KPiArCS8q
DQo+ICsJICogV2FfMTYwMjQ5MTcxMjgNCj4gKwkgKiAiRGlzYWJsZSBuZXN0ZWQgR09TVUIgaW50
ZXJydXB0IChEU0JfSU5URVJSVVBUIGJpdCAyMSkiDQo+ICsJICovDQo+ICsJaWYgKDAgJiYgRElT
UExBWV9WRVIoZGlzcGxheSkgPj0gMzApDQo+ICAJCWVycm9ycyB8PSBEU0JfR09TVUJfSU5UX0VO
Ow0KPiANCj4gIAlyZXR1cm4gZXJyb3JzOw0KPiAtLQ0KPiAyLjQ5LjANCg0K
