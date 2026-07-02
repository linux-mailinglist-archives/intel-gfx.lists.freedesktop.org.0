Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FQFRLGaORmoRYgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:14:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE666FA04C
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:14:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ms+Imtfe;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7961910F4B4;
	Thu,  2 Jul 2026 16:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B78710F4B4;
 Thu,  2 Jul 2026 16:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783008867; x=1814544867;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S1eOUNoGUPRzg4B9lIAbmqPnV4Vd6mP9svY3Jun2rjk=;
 b=ms+ImtfeAs6fHIvTjolyzgImS60Cr/WzJ//JxweSrga3E4WsSfUGYOJ1
 mIYR8DAsf+kGvpqA2c5tYidVK92xpTe/E97lG4KKR9Q3dtpa2GhztQ7iq
 U52CsFl6IEJNJ1o3G5Uz5+Gk+PeNn3eS1IwJrHlGQqBAJJCwiDmCkyS2f
 pGeKqdbsrqNVCBXrvLzjX6ZiwsDG578aQ1y6qIUmZZBoZj5yBWoNXajBt
 Dt+eMz+x/izUWJBs17FugsBZLZ/4Ofh119UGUvWSYrxMTLOvpiygHxnM4
 ki400jsGtwSBBvOtuA6P5Pem72QpJ8N8aENA55opD7CCJYIXWQBKaZ/UI w==;
X-CSE-ConnectionGUID: brfzogqjR66rHdvGFKTSWw==
X-CSE-MsgGUID: UhVI33o9SvSOfJ1FpWEkPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="94421016"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="94421016"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 09:14:27 -0700
X-CSE-ConnectionGUID: zl0DBSBYQ5Ss3NqQ/YMSsA==
X-CSE-MsgGUID: ye7wFa4XR3eZnSUZPiS7EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="248919712"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 09:14:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 09:14:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 09:14:26 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 09:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J+tJxkv2v2kZiqfj/vD9TNhCHkUXhRupCljM0tedtiSEhxMN1CuxPTwnKLyZNDPaIOCM0yWMWTfoc1U7F64Uh0a1kI8XJttU7jPXZPqdiq9qE5NxsHRrdp4u8VIjr/AwcXrx3kXrYXSSWCtzyIbUTVKD3xX+DzBmjXj3hs3yXOVjr1JLT12ZpndyrZDvNSe+yL5/xH6lvA6Tsi+iHhenjXz48RpnLABjteOwlELzDGHn+Kg3RNKV7UaTO+fP9PphDJVeWv/2b+iCaD5TJJrc6YP1l6D46Ej3vNuOx4DXMtEx7R9L5VtuiDkp/knyBsIJ8U42Vv+V/KDr1Ld5aHO3IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S1eOUNoGUPRzg4B9lIAbmqPnV4Vd6mP9svY3Jun2rjk=;
 b=lCof2Ag2GtI1VBMONUo4xUOMP+69Z59wfNGsJIf7+uLOTZgR3gB2zjQed1h8aqzGj15cPthKCZ5cnHm23zeFZ3ViylvMafbSz5ogOb/JJ1378zOBVVcetdzZry3pv2fjzrspJ89kGfdihvNQp2bTHol6aI4foJ7GkMnT23REYR0bBvqzrag4DgLZDinvhpVCs2EOZ4hbd7+rHw11Y0/lFDrqiAlvVoWuyt42JeTlyPOeVWnr+FblrIFDUdP0SUqhMW9sqJgCZZrDk2NJAziW7Xyvnyt0YPBKqh8ab/oi6GCbnpYZC+Bq/SCvwBSh6aR4+b9MtXs20LvV1XgfRgyWqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 2 Jul
 2026 16:14:23 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 16:14:22 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH RESEND v2] drm/i915/display: Program TRANS_VTOTAL from
 mode vtotal
Thread-Topic: [PATCH RESEND v2] drm/i915/display: Program TRANS_VTOTAL from
 mode vtotal
Thread-Index: AQHc/heN9711YFsTq0i18lopXGyyrLZadkaAgAAE9/A=
Date: Thu, 2 Jul 2026 16:14:22 +0000
Message-ID: <IA1PR11MB6348D8D9F53ECCFD47321C83B2F52@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260617045850.862100-1-mitulkumar.ajitkumar.golani@intel.com>
 <0b7919083586f3ba26159f909f87666ea9b41045@intel.com>
In-Reply-To: <0b7919083586f3ba26159f909f87666ea9b41045@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: fa2ccfcb-2648-47ff-a871-08ded854fa85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|23010399003|376014|1800799024|366016|18002099003|38070700021|56012099006|3023799007|11063799006|4143699003|22082099003;
x-microsoft-antispam-message-info: x/3btRHlsrjIxnaHYkykE2eXnKKBik25micqL7tzUK3WnR5Mm0RaW0E5lG9eE3lmM/c1XVHcwIAZkigbsA5qNd2rQasphwhGb572l8zRChRymOjf7mdlmsSykNUUI/ZaOOIJieNEDRUh1oY4msHjciqmAicTdJjOU/du+Kccb1Fpf79VS7YLaLv+Q5xGmAzfo6jTXkLv+J3gBTf0gdkI3VxTslkZgrWxBSdySrI9SwNs+eur9iLbSyoRwO8hGr0VHaKqc8gCLkdKPaylch2zEz6o7+t+bfLggjKPTfxfmJUrqMofTncaS5tUJ9tr4smDJSFBVZewfT4q0p+pWG8cTYry4VBNpYCQaV13Gn+htyMiQMfFf5c2GeyjfAsk9FYHvHIqtEi2g5Xv+Y9c+hhDFfZwn+5Pf9UT7ysYwOolXdtOknp0CkPBM4mUzZ/HDmuxa92JPtNYzluMszoYVY/3pt5qMk38+0mnklijFCy3F6tEFJ91IelYD4zyrxrSrnJ44WIs2TuLtGM2t8keMMbhcrhCVZWovLCkgCXJDu6kty5IAIL344BYmYd8B8or3/FDKBrKGQRrcXBt4sksm90ptiKTx7OBBvYm64u4OAUHBgIBO6P7KJxyZI936AAbLjDe0hhbV1w6DfKXaT9hADNsbnok/Wjqz2zccX7/vzcW9qqlhYYPobBHm+DZ2fcjAEGnm4DRi5De+uqnGqcEYq79LQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(23010399003)(376014)(1800799024)(366016)(18002099003)(38070700021)(56012099006)(3023799007)(11063799006)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDVmMlphVDlDOEtMYnVUMmtkTng3a0VwTkxJMWhYbGtlVnhLVGFmRmp6K2wz?=
 =?utf-8?B?OGRLOWVCckNKS1IrYk5UNm5pN1BlZnNjVFo2WFlZS2YxTVU1Z29TSGxIVStZ?=
 =?utf-8?B?Z25pdzJwTlNXem45TmsxWWRxQ0t2WFhTak9GTFlqdWZqdXQva2lMU1IyNWI4?=
 =?utf-8?B?ejVuRjRpajdXY2NvVW1Kc2RjclBYcVJpeWJoQkhhNTh2VGZsZ2trd01OSEk1?=
 =?utf-8?B?STl0VnExUGRvZjB2Wm90UDY2MnVOd0I3bWFNaTUvM25OZ0Zyam1HZnZYWXNh?=
 =?utf-8?B?MlVNOUh2UHZIZHh0NURtN3pEL2xwNXF6WUt2c3RUUmZkOVdodGhsVTVvT3Zw?=
 =?utf-8?B?SzRiWUxtczhDSzF5eU1FWkcwT0ZaZXZ6dWpiNFFkKzBOSzJ6aTVKMlBiVXJD?=
 =?utf-8?B?V0xQbkJSK0EzbEtkczZQVTVtR0RLcFE2U3J1L29KQ0U5VVRVUTRVU09hMUpw?=
 =?utf-8?B?blZSemFUdUMwUTI0cXRsVVlDcWpwRXFFbTJMSEpZMGkwT3pUY210OFJWMlVm?=
 =?utf-8?B?MUxlVURrN3ZxZjRFRTNxTENMOVZHaFd2U2ZobTZWeHRDcGVYN3pzaDVCSUVL?=
 =?utf-8?B?Z0RSZjdLamZpTVcrZkl0UmJwTGwvc2QySXNPbkhlTE9BeWcvdE9XdnkvcVht?=
 =?utf-8?B?ay9adFUydmhnT2R6QVg4Rld6TlpIb0VqRnlFMmpTZkZ0T2VBV1AxQXNsUkZW?=
 =?utf-8?B?Y2hBR0lOTDg5OWZYUm51KzcvcnNUci8ydGVkVmtyelg1TnRqNFVzNVdRdkxI?=
 =?utf-8?B?NHE4UGdNejdjdllsOFI5aWdjSVRkS1FvQnZDcDMvVlg5VWU1d1B3MGtNc212?=
 =?utf-8?B?SjE2bXFMM3I3MTV5WGd5M3o0N1JQR0ZqT0JiMmFuVFFLaVNkRW1DbjlYbW5h?=
 =?utf-8?B?S3Jxdk40MWFqTXMyR2ZPSDFkMHlHR3dVY2svc2c0Zm9qOTY5T3RxZG41UnBw?=
 =?utf-8?B?R244YW55UFlacmhhWEtuc2VkL2s0cnZJc0ZIVlloVS9Xb2doc3oxTS93dGxE?=
 =?utf-8?B?OVlsSmtHemlNTGhsNHJubU03NXlTWkpBY0VXcklrblZoU2ZEMTYyQTJBNEdP?=
 =?utf-8?B?eDB4c1RTc3VDVXFoUmpDM3FGbG83OWJTSGNLaGFKeTJCSlo3dE5HRWxaMVps?=
 =?utf-8?B?bmhYNUQyaWRDTm1yb21GWEJaTzlZT1p0U1EvR3FoQUwwRml4VEQ2MTRrVHVK?=
 =?utf-8?B?ZWFYakZLQVJUTE9UMnA2Y0dtajc1c05obS9yZEVCcngzalYvbnZhanA5bW5V?=
 =?utf-8?B?dmRlS0Z3ajhHM0E1SThuSjJJMitWOWc0SUZvWVRMTVlsQmkzaDN4cXlHTmQv?=
 =?utf-8?B?M1pRSkpmcEg5QnJNWEMvN1J0VjBPVXlnam9hK0x5UitMekNkTUZmNVJ5bnRM?=
 =?utf-8?B?L1dPdm92dGRwRnptNFVPekRXbkRWSmJ2RENla3lnaVBBcFE0Uy9HMVc3Wmd5?=
 =?utf-8?B?eW0vZHdQYWlkNjRwM2lQZjdMeThKTFNheUpCTE5OVlYwMEh6ZUp3RjRySlpx?=
 =?utf-8?B?czZNOVZRMFlrenlwY0ZyTXREOG1XUmRPUnBSRnJqM0hRcGNLUTFPVzA2NElV?=
 =?utf-8?B?c2t0N3ZOb1pQS3NIM0ltNE5EL2VBSzNjRUlwblNqQkwweGN1VU0xdEZTWUJt?=
 =?utf-8?B?d1ZzMFo3RnpyVDN1ZWVVTlVEdjRNQWxMNGMxQ3JPOGNYZUU0MkJHaTNvblly?=
 =?utf-8?B?RjV1RnphK0N2NVlBdDFwZ1Z3dCtZUjFiT04ybk13T0xDc050b3BYMmFPVkQw?=
 =?utf-8?B?blcxbVVzUys3c1FXQlIxMTRBZEpxRUVESEVoazZtSmUyZE9QWGNlRnM1MUU4?=
 =?utf-8?B?WlhFOUxiWDExdERONTVBcm1FbzN6aHY5eExpVDVNSEhqN0NVOU05d211YTJR?=
 =?utf-8?B?TGxJYzVIdFJvS2t2aWtTSXlpbUdnQzZTYllxRzFWMFU1Ymo3V2NZc054R1Q3?=
 =?utf-8?B?cUhwd25UcysrRXhCeFBtSTNWL2VMUVhFakxWOHlyVERCYnZFNm9LNE83cU92?=
 =?utf-8?B?L3Y4Y0x3dGF4WUtVY1FMZExYYVVvWTM0WVhlaVZhWkt0alhyM1ZxSjE0dHZQ?=
 =?utf-8?B?a3hoTWF6YUs2bEhCZ0dWbnJhbzc1R3ZwSHdjSzdsYXduWCtuWDdxelhuV29h?=
 =?utf-8?B?cnVsZURHU3RsYURiWE13MW91QmptS1hiWVRrWGViRXFBTitrYzRhSkJGTHI1?=
 =?utf-8?B?YjVVY05YcDh5dVJCMXdlM1Q4MTI1VWNOaWFMZmU3dVY5V3pOMU1md3dqbm9D?=
 =?utf-8?B?TVhRVkhCcjNpbldCeHRBZGdsamlQTld6bHFBbkpZeFhWTXJXeTg4RWdRVklt?=
 =?utf-8?B?TGVQNDRGSE44dm1mL28zOHhkZ1RMNnQvVEE4WU91M09uWUxaSDFiOEU4dkdj?=
 =?utf-8?Q?1NBLV0kpAYGCSSKpHr+DBQR3fuGslltjpI0ubfj/kkbMy?=
x-ms-exchange-antispam-messagedata-1: LYdQZ2SKyxtE3/T0TD6gR5ggu+IQcEhuxw4IbrsRPxcOHJlbGFHypH3+
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Py7oKNr+9tGd6+c6kg+7JYVk2nplp5YGnv0PpBA7U/eBc4Uusf95Q2YlTOAI3T4uci82mfLcDrHTqAH/sVTu8NMUQDTjlBPPOVuo824oKQKEnxX6vmGJCwGa7waEHY6pcoiMgkiGw7a54uO+PYnhesytClx92ScGXJdOFB7Bb3g9yw3CafULA8Y463t93XzQ+lzQUDl3ptgDy/ExjT50ibc7RC5S0Dq7gm1vD4AElID3APIG+ZuR5athpJd1MOsCze5+wwt5ShJ/Got/JWFzpzYwL6oHwszgNOVb5dP0DQWRozUur4SChMyVKXj5JQNdJKZ0OyeozDuSLMBKHY3bQg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2ccfcb-2648-47ff-a871-08ded854fa85
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 16:14:22.4352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YYtR+xL4G+YlWYCyy+EiQ64YEZLhH/V+pEnXt7AY5qI+DIemh+TQv0emZss3y7T7L3fafJ0QEjQvYw1ASRBKfEIea+Ya68L9YYthes4jZiztvZT2aQXbqkPhPvjYeiRr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,IA1PR11MB6348.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFE666FA04C

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogMDIgSnVseSAyMDI2IDIxOjExDQo+
IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5n
b2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOYXV0aXlhbCwgQW5raXQgSw0KPiA8
YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bTsgS2FuZHBhbCwgU3VyYWoNCj4gPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSZTogW1BBVENIIFJFU0VORCB2Ml0gZHJtL2k5MTUvZGlzcGxheTogUHJvZ3JhbSBUUkFOU19W
VE9UQUwNCj4gZnJvbSBtb2RlIHZ0b3RhbA0KPiANCj4gT24gV2VkLCAxNyBKdW4gMjAyNiwgTWl0
dWwgR29sYW5pIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiB3cm90
ZToNCj4gPiBUaGVyZSBhcmUgbW9uaXRvcnMgYmVpbmcgc2Vuc2l0aXZlIHRvIE1TQSBhbmQgZW5k
IHVwIGJsYW5raW5nIG91dCB3aGVuDQo+ID4gd2Ugb3ZlcnJpZGUgVnRvdGFsLCBEUCB0cmFuc2Nv
ZGVyIHVzZXMgVFJBTlNfVlRPVEFMIHRvIGRlcml2ZSBNU0ENCj4gPiBWVG90YWwuIEF2b2lkIG92
ZXJyaWRpbmcgY3J0Y192dG90YWwgdG8gMSBvbiBwbGF0Zm9ybSB3aGljaCBzdXBwb3J0cw0KPiA+
IFZSUiBUaW1pbmcgZ2VuZXJhdG9yIGFuZCBhbHdheXMgcHJvZ3JhbSBWVE9UQUwgZnJvbSBtb2Rl
IHRpbWluZyBpbg0KPiA+IHRyYW5zY29kZXIgdGltaW5nIHBhdGhzLg0KPiANCj4gU2hvdWxkIHRo
aXMgaGF2ZSBoYWQgRml4ZXM6IHRhZz8gRG9lcyBpdCByZXF1aXJlIGEgYmFja3BvcnQ/DQo+IA0K
PiBCUiwNCj4gSmFuaS4NCg0KSGkgSmFuaSwNCg0KTm8uIFRoaXMgY2hhbmdlIHdhcyBtYWRlIHRv
IGFsaWduIHRoZSBkcml2ZXIgd2l0aCB0aGUgdXBkYXRlZCBWVE9UQUwgcHJvZ3JhbW1pbmcgcmVx
dWlyZW1lbnRzIHJhdGhlciB0aGFuIHRvIGZpeCBhIHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBieSBh
IHNwZWNpZmljIHVwc3RyZWFtIGNvbW1pdC4NCg0KVGhlIHJlZ3Jlc3Npb24gd2UndmUgcmVjZW50
bHkgb2JzZXJ2ZWQgZHVyaW5nIHRoZSBHT1AtdG8tZHJpdmVyIGhhbmRvZmYgYXBwZWFycyB0byBi
ZSBhIHNlcGFyYXRlIGlzc3VlIGludHJvZHVjZWQgYnkgdGhpcyBjaGFuZ2UgYW5kIHdpbGwgbmVl
ZCB0byBiZSBhZGRyZXNzZWQgd2l0aCBhIGZvbGxvdy11cCBmaXguDQoNClJlZ2FyZHMsDQpNaXR1
bCANCj4gDQo+ID4NCj4gPiAtLXYyOg0KPiA+IC0gUmVtb3ZlIHdyaXRlIHRvIGNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGUuY3J0Y192dG90YWwNCj4gPiBkdXJpbmcgaW50ZWxfdnJyX2dldF9j
b25maWcuIChBbmtpdCkNCj4gPiAtIEZpeCBtZXJnZSBjb25mbGljdHMuDQo+ID4NCj4gPiBCc3Bl
YzogNzAwMDENCj4gPiBDYzogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwu
Y29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiA+IENjOiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3VtYXIuYWppdGt1bWFyLmdvbGFu
aUBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRw
YWxAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDE3IC0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICAgIHwgMTAgLS0tLS0tLS0tLQ0KPiA+ICAy
IGZpbGVzIGNoYW5nZWQsIDI3IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IGU3NmFhNmM4
ZGFiNi4uNDJlYjRjNWJjOWI2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtMjczNywxNSArMjczNyw2IEBAIHZvaWQg
aW50ZWxfc2V0X3RyYW5zY29kZXJfdGltaW5ncyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkgICAgICAgSFNZTkNfU1RBUlQoYWRqdXN0ZWRfbW9k
ZS0+Y3J0Y19oc3luY19zdGFydCAtIDEpIHwNCj4gPiAgCQkgICAgICAgSFNZTkNfRU5EKGFkanVz
dGVkX21vZGUtPmNydGNfaHN5bmNfZW5kIC0gMSkpOw0KPiA+DQo+ID4gLQkvKg0KPiA+IC0JICog
Rm9yIHBsYXRmb3JtcyB0aGF0IGFsd2F5cyB1c2UgVlJSIFRpbWluZyBHZW5lcmF0b3IsIHRoZQ0K
PiBWVE9UQUwuVnRvdGFsDQo+ID4gLQkgKiBiaXRzIGFyZSBub3QgcmVxdWlyZWQuIFNpbmNlIHRo
ZSBzdXBwb3J0IGZvciB0aGVzZSBiaXRzIGlzIGdvaW5nIHRvDQo+ID4gLQkgKiBiZSBkZXByZWNh
dGVkIGluIHVwY29taW5nIHBsYXRmb3JtcywgYXZvaWQgd3JpdGluZyB0aGVzZSBiaXRzIGZvcg0K
PiB0aGUNCj4gPiAtCSAqIHBsYXRmb3JtcyB0aGF0IGRvIG5vdCB1c2UgbGVnYWN5IFRpbWluZyBH
ZW5lcmF0b3IuDQo+ID4gLQkgKi8NCj4gPiAtCWlmIChpbnRlbF92cnJfYWx3YXlzX3VzZV92cnJf
dGcoZGlzcGxheSkpDQo+ID4gLQkJY3J0Y192dG90YWwgPSAxOw0KPiA+IC0NCj4gPiAgCWludGVs
X2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX1ZUT1RBTChkaXNwbGF5LCB0cmFuc2NvZGVyKSwNCj4g
PiAgCQkgICAgICAgVkFDVElWRShjcnRjX3ZkaXNwbGF5IC0gMSkgfA0KPiA+ICAJCSAgICAgICBW
VE9UQUwoY3J0Y192dG90YWwgLSAxKSk7DQo+ID4gQEAgLTI4MzQsMTQgKzI4MjUsNiBAQCB2b2lk
IGludGVsX3NldF90cmFuc2NvZGVyX3RpbWluZ3NfbHJyKGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgVFJB
TlNfVlNZTkMoZGlzcGxheSwgdHJhbnNjb2RlciksDQo+ID4gIAkJICAgICAgIFZTWU5DX1NUQVJU
KGFkanVzdGVkX21vZGUtPmNydGNfdnN5bmNfc3RhcnQgLSAxKSB8DQo+ID4gIAkJICAgICAgIFZT
WU5DX0VORChhZGp1c3RlZF9tb2RlLT5jcnRjX3ZzeW5jX2VuZCAtIDEpKTsNCj4gPiAtCS8qDQo+
ID4gLQkgKiBGb3IgcGxhdGZvcm1zIHRoYXQgYWx3YXlzIHVzZSBWUlIgVGltaW5nIEdlbmVyYXRv
ciwgdGhlDQo+IFZUT1RBTC5WdG90YWwNCj4gPiAtCSAqIGJpdHMgYXJlIG5vdCByZXF1aXJlZC4g
U2luY2UgdGhlIHN1cHBvcnQgZm9yIHRoZXNlIGJpdHMgaXMgZ29pbmcgdG8NCj4gPiAtCSAqIGJl
IGRlcHJlY2F0ZWQgaW4gdXBjb21pbmcgcGxhdGZvcm1zLCBhdm9pZCB3cml0aW5nIHRoZXNlIGJp
dHMgZm9yDQo+IHRoZQ0KPiA+IC0JICogcGxhdGZvcm1zIHRoYXQgZG8gbm90IHVzZSBsZWdhY3kg
VGltaW5nIEdlbmVyYXRvci4NCj4gPiAtCSAqLw0KPiA+IC0JaWYgKGludGVsX3Zycl9hbHdheXNf
dXNlX3Zycl90ZyhkaXNwbGF5KSkNCj4gPiAtCQljcnRjX3Z0b3RhbCA9IDE7DQo+ID4NCj4gPiAg
CS8qDQo+ID4gIAkgKiBUaGUgZG91YmxlIGJ1ZmZlciBsYXRjaCBwb2ludCBmb3IgVFJBTlNfVlRP
VEFMIGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dnJyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4g
PiBpbmRleCBjZDM4MGZlOGZkMDEuLjVkOWIxMTE4NTI5NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+IEBAIC0xMTAyLDE2ICsxMTAyLDYg
QEAgdm9pZCBpbnRlbF92cnJfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAq
Y3J0Y19zdGF0ZSkNCj4gPiAgCQkJY3J0Y19zdGF0ZS0+dnJyLnZtaW4gKz0NCj4gaW50ZWxfdnJy
X3ZtaW5fZmxpcGxpbmVfb2Zmc2V0KGRpc3BsYXkpOw0KPiA+ICAJCX0NCj4gPg0KPiA+IC0JCS8q
DQo+ID4gLQkJICogRm9yIHBsYXRmb3JtcyB0aGF0IGFsd2F5cyB1c2UgVlJSIFRpbWluZyBHZW5l
cmF0b3IsIHRoZQ0KPiBWVE9UQUwuVnRvdGFsDQo+ID4gLQkJICogYml0cyBhcmUgbm90IGZpbGxl
ZC4gU2luY2UgZm9yIHRoZXNlIHBsYXRmb3JtcyBUUkFOX1ZNSU4gaXMNCj4gYWx3YXlzDQo+ID4g
LQkJICogZmlsbGVkIHdpdGggY3J0Y192dG90YWwsIHVzZSBUUkFOX1ZSUl9WTUlOIHRvIGdldCB0
aGUNCj4gdnRvdGFsIGZvcg0KPiA+IC0JCSAqIGFkanVzdGVkX21vZGUuDQo+ID4gLQkJICovDQo+
ID4gLQkJaWYgKGludGVsX3Zycl9hbHdheXNfdXNlX3Zycl90ZyhkaXNwbGF5KSkNCj4gPiAtCQkJ
Y3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbCA9DQo+ID4gLQkJCQlpbnRl
bF92cnJfdm1pbl92dG90YWwoY3J0Y19zdGF0ZSk7DQo+ID4gLQ0KPiA+ICAJCWlmIChIQVNfQVNf
U0RQKGRpc3BsYXkpKSB7DQo+ID4gIAkJCXRyYW5zX3Zycl92c3luYyA9DQo+ID4gIAkJCQlpbnRl
bF9kZV9yZWFkKGRpc3BsYXksDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
