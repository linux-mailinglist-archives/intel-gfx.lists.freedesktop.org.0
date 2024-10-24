Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043DD9ADBBF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 08:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F37D10E8A8;
	Thu, 24 Oct 2024 06:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bxn4SF8/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0950810E8A7;
 Thu, 24 Oct 2024 06:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729750131; x=1761286131;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iHisLA0BQUDBPh6sWlq/E/RuQGzbHoRj++a3qzFKRnM=;
 b=bxn4SF8/hTYznSfswAquziIu0rHEw9Y2oyDCME41Mxnbi6/ca87j5P6c
 wwBKhQb5qeCCLl+jllXpkFy6HZyr6DyAiHppijSUi5/fSTeY763Aw92Ub
 ADLDsUAE/nAc0YlvBPAeLsyibtGuYoKzPxcmae0zRdUvg7jYxyXNyIYWu
 RVUzJyMs9Jx/WhzRJIb/Tp9RQdmK9ov55Vvl4linEjnARELklNArrNsD8
 GQCXHkhrToxj/KdwCRI9kKPHqkS0+hPphq9EySuecsPdY8oLjImZMxjww
 aMaQlt7upi8M6xzSTKneiPZtywOBYpOO3agZMM7NQDy40QlrB94G6VwWd A==;
X-CSE-ConnectionGUID: XV4SlUywQtKYfPg6wW4Sjg==
X-CSE-MsgGUID: puzXoGnzSdeNd8KGkDbEmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="40755848"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="40755848"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 23:08:50 -0700
X-CSE-ConnectionGUID: 43R3QgznQ7ayTRVztLQv3w==
X-CSE-MsgGUID: vo9L1D6tRB+8SdwPoQ0j3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85275666"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 23:08:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 23:08:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 23:08:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 23:08:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkmFsccHgwSvg3tbMFc4lXry04olmWYY8aOTLNL60kGwS6iRasYsL6BheP1GuNlNV+RFjyqer1bcvdJq6v+lKTgV4uTwIPnVrP/C9SOW91iYu24VHy/wXd5z5ExUrRkN7V6wnwzik8ZyWGsw5BfZFsK2PD+tCW7aW6SWS56PtuDQa9gjNYQJJWUU6RhlFNQu/XK9fIyROsoW5bIOIyOpm6+Tc/1JtBEmLj7nykYHW82rPpYx8hl/Ii42d4/Rr1sHMXQcRK5dF3wCE3KxL6NfYgQcu5ZBsST1SkLHdAOtsduasMOXDEL4fULuYFzpEVZ0APCty9wJoE1IqmxAtNe9bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHisLA0BQUDBPh6sWlq/E/RuQGzbHoRj++a3qzFKRnM=;
 b=CRjnyGb4qnSUVhYLf5bUdtqxAsFfXH7p7gSJWbevOkYQRHTA9uU9HcU+otCQCHqDI3B7Ldef3O4ruMinUHh9m3/QnoI+SzKhDg6t/mIZgZSiwsdJcGDucu+a7EPMIbe28fGO9uYkx+YLbp6i7IDySzqWtVm+750xeRYIFy/j3oK1los8iLT001x899R+GbEHTlmroLIuYwOe6Ykmr786PYKz5oSz1U09u+UymVcWSd1wfae3YFH17Kz2oskQ0VAN8XIjysbMSCNrK1XN6K+GEtZnOxeiSqdAb/W6AiwemPe3ERKP+yA+NKz2FHl0I4WbRWzU0sS5Z4fSdsMOo7Hc+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6489.namprd11.prod.outlook.com (2603:10b6:208:3a7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 06:08:47 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 06:08:46 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Thread-Topic: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Thread-Index: AQHbJZUpr4GIMr+JO0WmPbiVEPW11bKVapnA
Date: Thu, 24 Oct 2024 06:08:46 +0000
Message-ID: <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
In-Reply-To: <20241023214701.963830-8-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6489:EE_
x-ms-office365-filtering-correlation-id: 14d2b40b-d608-4c3d-f90f-08dcf3f25203
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WXhlMnFkeXFZMXEvRUkxc0QxODJVaDY1S1RicFFTNEdhOGxTcUFPaXkvRFZa?=
 =?utf-8?B?SE9SYXJCaWE5djJ2cXV3cWROOXBBNWxFcnlvZU5UWHlvdnRxdFdPYWNHN1hu?=
 =?utf-8?B?emxabTVucTV3OEEybUQ1Q1VLMFIvYUF6S0N6N1FYOHh6UE5RZFRNWDIxdE5G?=
 =?utf-8?B?b1BHbndRcFd0SHZ5NWhrRGN3ZWw0RjhvVnIrNFpLZ0JlcnU4WWNGZVBOcU1m?=
 =?utf-8?B?SzloTW43L2pEdUZ5Z2FjRnpXekZxNHVySWJZTHo0ZVFuRzVuVXd0Tkd2blBY?=
 =?utf-8?B?QlRybklYc3NCUU9SSThkSTNMODE1amtlQk94MkwrSE5neFVtUXZvcEVYbHN2?=
 =?utf-8?B?YTNLeEV4SkVhYVhtM3VRUEkxNUsydlVIcXczL2lDOEJObmxlZUpiQXQrdE5u?=
 =?utf-8?B?Tll5NjlsYmxOSXQrQzFQWnlGT1Q4U0xGS0RpOWlDMHlVb3Y2UHRYTU8yWnQ5?=
 =?utf-8?B?cWZIZlFncHNIaDJXUnROS3BYeUhjSUczemIrL1V6UVRzUEZ3UW9OZEpzTjEv?=
 =?utf-8?B?cUx3LzYyT3JqcC9ybHlVaTNVZlQyUS9qb251N3FMbVd4TTNWL0pZNWNyT3ho?=
 =?utf-8?B?ek9peXVDY1VnS0xHVWVBWlh6MGZuSm94YVhiRzUweGEvUG1OWG1Fb3BBN1Ex?=
 =?utf-8?B?aXV6T2ZydFJLRGxCQ2VkQVFmOERuM0VTR1I5RWxEL2JwY1IzZ0lMd0ZLTDU2?=
 =?utf-8?B?OS9zQnhDWEl5VWR2UWdzT1R1NVFZY2QrdEVIU1JZRFVXMk5aUTVyOVp3N3ho?=
 =?utf-8?B?Ynk4SkRrZFBLbEVHOGpBMXNlZHgweGxubjdjR3UwK2JybEpHa0JkMDY0REV4?=
 =?utf-8?B?MHRQRWxaa1ZVTFJackdGUVYzNUhOZ2dkM3VFNHlkQmtwcGRxN0F2T3JLcHZ2?=
 =?utf-8?B?b3BOb0RsSlQ2WllNeDd5cW9zOTBXYVNwM00reGttZFhaMjhnUmkwK2NNci9n?=
 =?utf-8?B?Zjk5eFo5d0JNWWxydmtlbzNmaDNFY0ZsZ3ZudVNwMS9KS2hReVVXZEh1T1NH?=
 =?utf-8?B?RlFRNGNpaWQwVndjc3owT3JTa0pHUUM2d2piempDUGlIQmJNUU5KM1V0aWtj?=
 =?utf-8?B?YUJlTHlSdWVvak9TMWlhMFQ1ekVtL25QemlEaGp1eHdLdnBsMW5xcGw2d1pr?=
 =?utf-8?B?TE5vL2dOWTZvZkVQTUZFV216d1FlbStQNEFsa1pIT2l3UFV3L2d4SjgwbHV3?=
 =?utf-8?B?ZHJaUHhQWHFrY3F0eGNaMTU2c2o1SUpZdllzUVF4NXZ6SVJuTGJpU3dadGtv?=
 =?utf-8?B?OW01NFhTVHdOVDVYK1hhNllOOHdjRDdlK3FlamE5Z01FYk1EL3o5R2wxVi9W?=
 =?utf-8?B?bDhJdE9YckFnVjlTTm84ZTZyeDFVQ201d1RDWDFLWlc3akc2eVFNaVQ4eUIv?=
 =?utf-8?B?bEZJczVOVXY5R3Y4eUFaY2xzSk9CdzdiZlZRaWhpWXRWR3BjcFo1Vmd2SFhF?=
 =?utf-8?B?d3RnWElzaEZOUEdJSVNRRzJwQnBUZ2VTbXdDdWNLRElkK3JjN3dkTjExVkVG?=
 =?utf-8?B?SUFUdjI5MklUQ25sOGgxYTI2TnNNOFhya3c2dE9EdDdVNXF2V1dNZ0p2ckVz?=
 =?utf-8?B?UEc5RUwxU05YTmFqbTlrQlUvazdnUFVmWVRzZ2JBcGFzdm1OTTdORXlPSVNz?=
 =?utf-8?B?OXJHMktxT25XSTRaUTlTajRWYldiS29PRFp0RVZnTmhicWIxaE9tOGQ3anBW?=
 =?utf-8?B?UE5qU25LOXhnd08xSEg3bFZES3lzeUc5M0ppR0xGNVREZ1lYRGlWWnoyS0F2?=
 =?utf-8?B?UmZLenBmVExGVmNxaXVvZEJZakFQN1ZkcGVPalkwNEdYSXR2bkNSc3hZRHVj?=
 =?utf-8?Q?DEgQP4mMcl5ZuPR2ryok9H3eWLW7V1reoo9HE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHVnYm5mVFl4eGYxM3hCdUNMUW5VTXV3djhkUDVYTE5Xd1FONS8xQ285S25U?=
 =?utf-8?B?TE1MNi9YQUVhNTlERTd6c0dCZ0U2aVFzcm5tOFBsZVBhR29JZkVFbVdZUEFv?=
 =?utf-8?B?ODdxQlViNVArY2wweExBU1ZsZHR5VTFsWVZxU2lJOG4rSU1ENTVTeDV1UUNr?=
 =?utf-8?B?YmZNR0N1Z29waEZnUGZCSHNLQk1BSnlrZTZ5eVp0SzRNYlR3Z0NWbVdoNmtH?=
 =?utf-8?B?NitwakRXQVFUSFgzWThMeDhscVlVRDAvZlNCcHcvNlpLTi9kWDFSTm01aS9a?=
 =?utf-8?B?YUJmT0pVeGtDL1M2YmhRSWJ5MWdFcXN5VjRRYzNFOGhLOGFyVm14a2ZPcnAy?=
 =?utf-8?B?Y0oxNGM0ODlqL3BMdk05Vm9iQ0JmUFJFbzBwYW5kZmM2cW52TjkwbHJtYUpk?=
 =?utf-8?B?WHZHZjhyOXZLVWNXV2I3N2QzVlJXb0FENm5vYmFFeVEvWTBubElna25jdmp3?=
 =?utf-8?B?cmM2a1NzeVNGd3gyQVpBU3lYbXZnaFpraUUrbmNmdXNWNnFZa3QzQU9UbDNw?=
 =?utf-8?B?Y2VHQlRUeUhxTjhzMStDR2N1OHRLeVhCNHNWaU1VVmovL0R3NDQzQVppN0pL?=
 =?utf-8?B?YkxiTVBjV3pOd3pELzhhWmtpY01PU1hXemkxNVFQeEVlWnVrSVZtZi9yKzRG?=
 =?utf-8?B?VUJhZFhLczV3MkhxN2tKYVBzYTdFbnFyODY5V2wxbjkrQ2RMUGVNTDgrWmNo?=
 =?utf-8?B?Vmdpd0VyaU9ValFOcDdJQ08zY3cwb2lISEVWKzA5cTZhVWJmWWErS1poeGV0?=
 =?utf-8?B?eTEvbmRRM3YvalBCMEw1VjVTYzFRM2xPRkJUZFNMVEtkRUMzMkxnTmVFTXRm?=
 =?utf-8?B?bnJlVmhRK0hqSGExajMzM3hPcFl1N0VkQ3Y2Vk1TaFpJUG9TSTZZT3Z2Nmlm?=
 =?utf-8?B?Ujg1OS9RUWlVbi9OT2FaSllzZjYyRnJlL091b29LSkJKNG9hM2ZWSjIvQW9P?=
 =?utf-8?B?c1o3RDVacjdGb2pNczlwSEJjekJLK0tKUTRaWXFOUmRwa2RTcWxTYXZzbUhZ?=
 =?utf-8?B?SEV6S2JZWGJNSXBvUEhDMUwzNnRPWU1VOCtmNEh6N3BUZlFEVmlWRC96Mmlx?=
 =?utf-8?B?N1l0NGtSQWJnSVcrYnhuODFydFhQaE1XaElvbUN2Z281RWpxTFpyZDVXcXRh?=
 =?utf-8?B?MkFYT0owSFQzUnJJTUVybGx4cW9IY0NocU40aThwMDlFMTVjNzlVWlFZSW8x?=
 =?utf-8?B?MW00Y1JyR1poVzRhWmtvbWZKcWcvZjdveGMzUnA5UDJTSnpsck5tK0lrbk9i?=
 =?utf-8?B?RnB4STljdWhsN2ZmVk1qeTY0SE10eWxkV2xDY3Z6TXFJaGNPVEwzTnFPZURE?=
 =?utf-8?B?L095QWNTdE5LVU5qQy9xcmFqaUw1cjlGcHNzWXBQY0EvekE3VnF5TlFJOVBr?=
 =?utf-8?B?aG5Ua2t6OFJDSnlWRkw0dS9YQ2puZHdlVG9Zd2hmYk5KT1FuRHhxazVHc2dZ?=
 =?utf-8?B?UHJyb2c2OEpMYnpUNDdDT3RXcjFJYTN1TWRJT2pMdGV0VkNDQjdtOW9qR3U3?=
 =?utf-8?B?NzdBS1p4SU1Lc2psRnJ4TXpUakRDRHo3R3NiOENwdHNSa0N4bWpid1A2cnVN?=
 =?utf-8?B?WmJVWnVVQkdSeTNpdkx5d293ZWtCbHpkMTRGMWtoM1ppckpGYXhoTy8vTGo0?=
 =?utf-8?B?YUNHSysxOWgyTHNnL3UwNjF4dGh0aVZ2SDhrbHZSVVlMSHpSSzFhOVEwWmJv?=
 =?utf-8?B?SGlNRm5EYU1sa01IOERWRkxBL0srdlA0M3RmTkdEa0NySkgwaThDWUxBQUF5?=
 =?utf-8?B?cUtydmdDQ00wLy9xZ0NjSzNzY1JZVmM0UEJFN1FLNGV0aTU0YmFGS2xuNlpM?=
 =?utf-8?B?OHdWTEwwem5zTzFidTMwa1F0MG44QThlRlBUaEkwVENWTnZLYk1zRU5ldU9o?=
 =?utf-8?B?cnlRdWkxeDduMTcrNFM1aXJ0MmsyRTlqeFpwZTk2WTlyZkprSjQ0S1hrRzcz?=
 =?utf-8?B?dllZOG42M0dyaGF4aHlDM3VJU3ZCQVdTMU1yYkJSdCtKZXNWYXYvd2dtcVdP?=
 =?utf-8?B?Vm5XYVYxMWFqZEZaeG5wQkluRzA0QzFjc2JuNFRBZ2JkYkV0WVhwKzFmSlZP?=
 =?utf-8?B?QSs3eFk5TG92R0FHUC9BdkhFT0Yrc1h6V3RWWnI2Q2Q5Z2F3R1JIZXRSVGJ1?=
 =?utf-8?Q?CzkHt7213wRULLrwiCgfByBnq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d2b40b-d608-4c3d-f90f-08dcf3f25203
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 06:08:46.3211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VCEQENy5sJgd+ESQ1Hba2/u9xM9JjB+DdkJJiqezPGM9EnVbpTgnu8laZmvlth2f8UO5yF1yxKGNYrQphj6WaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6489
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIENsaW50DQo+IFRh
eWxvcg0KPiBTZW50OiBUaHVyc2RheSwgMjQgT2N0b2JlciAyMDI0IDAuNDcNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDcvMTJdIGRybS9pOTE1L2N4MDogUmVtb3ZlIGJ1cyBy
ZXNldCBhZnRlciBldmVyeSBjMTANCj4gdHJhbnNhY3Rpb24NCj4gDQo+IEMxMCBwaHkgdGltZW91
dHMgb2NjdXIgb24geGUzbHBkIGlmIHRoZSBjMTAgYnVzIGlzIHJlc2V0IGV2ZXJ5IHRyYW5zYWN0
aW9uLg0KPiBTdGFydGluZyB3aXRoIHhlM2xwZCB0aGlzIGlzIGJ1cyByZXNldCBub3QgbmVjZXNz
YXJ5DQo+IA0KDQpUaGlzIEMxMC9DMjAgYnVzIHJlc2V0IHdhcyBvcmlnaW5hbGx5IHBsYWNlZCBh
cyBhIHdvcmthcm91bmQgdG8gcHJldmVudCBidXMgdGltZW91dHMuIFRoZXNlIHRpbWVvdXRzIHdl
cmUgZml4ZWQgZWxzZXdoZXJlIGFuZCB0aGVyZWZvcmUgdGhlc2UgYXJlIHVubmVjZXNzYXJ5IGxp
bmVzLg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jIHwgNiArKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiBpbmRleCBjMTM1N2JkYjhhM2IuLmE4OTY2YTdhOTkyNyAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTIy
NCw3ICsyMjQsOCBAQCBzdGF0aWMgaW50IF9faW50ZWxfY3gwX3JlYWRfb25jZShzdHJ1Y3QgaW50
ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkgKiBkb3duIGFuZCBsZXQgdGhlIG1lc3NhZ2Ug
YnVzIHRvIGVuZCB1cA0KPiAgCSAqIGluIGEga25vd24gc3RhdGUNCj4gIAkgKi8NCj4gLQlpbnRl
bF9jeDBfYnVzX3Jlc2V0KGVuY29kZXIsIGxhbmUpOw0KPiArCWlmICgoRElTUExBWV9WRVIoaTkx
NSkgPj0gMzApKQ0KPiArCQlpbnRlbF9jeDBfYnVzX3Jlc2V0KGVuY29kZXIsIGxhbmUpOw0KPiAN
Cj4gIAlyZXR1cm4gUkVHX0ZJRUxEX0dFVChYRUxQRFBfUE9SVF9QMk1fREFUQV9NQVNLLCB2YWwp
OyAgfSBAQCAtDQo+IDMxMyw3ICszMTQsOCBAQCBzdGF0aWMgaW50IF9faW50ZWxfY3gwX3dyaXRl
X29uY2Uoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJICogZG93biBhbmQg
bGV0IHRoZSBtZXNzYWdlIGJ1cyB0byBlbmQgdXANCj4gIAkgKiBpbiBhIGtub3duIHN0YXRlDQo+
ICAJICovDQo+IC0JaW50ZWxfY3gwX2J1c19yZXNldChlbmNvZGVyLCBsYW5lKTsNCj4gKwlpZiAo
KERJU1BMQVlfVkVSKGk5MTUpID49IDMwKSkNCj4gKwkJaW50ZWxfY3gwX2J1c19yZXNldChlbmNv
ZGVyLCBsYW5lKTsNCj4gDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IC0tDQo+IDIuMjUuMQ0KDQo=
