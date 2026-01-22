Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCOPKxCucWlmLQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 05:56:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06A761D02
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 05:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9361910E8E8;
	Thu, 22 Jan 2026 04:56:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fPPpw8uG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B6B10E08A;
 Thu, 22 Jan 2026 04:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769057804; x=1800593804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5xMipjF6sX6Wg7bCsrod6ShNvzlt3J4y2OFgE/jsuTg=;
 b=fPPpw8uG6bk5KGHoVTzLtvbXerUqScNWi2uB2WNVsJVZUZ1hWYpbHmai
 jsdmj+Wt5/4yGvEVTI4f8QQTXS3e9h/dGQ8l5IIyaVYxCSgy0TmLgI53r
 ar+Dt9peJJp4sOIoKuGDcTKFeV4UiL2Suu1ImVeC6etal/oxStFIU5dVq
 ydbQXLT0c7qVd+3P7FP/lmzohIltUIk/jbrdfov3byO4xZkMrFFoj98Ur
 Lx+dXSbovAyayFKa9+BXr6NorOrvBoreGkPX4yYUVCYZ54h/j6Qvha4T6
 mTBBOr8O9F/Xx+7OPzWIMAiZ+1cWDrAo7XBOJqxblkB4HJQV8jjVckR5k g==;
X-CSE-ConnectionGUID: S0O+orBxRqqbtl9FOlFvVA==
X-CSE-MsgGUID: 2ampxfC+SIGubSw5S/T1UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="87870870"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="87870870"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 20:56:43 -0800
X-CSE-ConnectionGUID: ihtHG8OmQKWAEs12xdOEbA==
X-CSE-MsgGUID: LJIPFs03R9yFZR/UM/FHuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="206965028"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 20:56:43 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 20:56:41 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 20:56:41 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 20:56:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gky6OoBqSIanfxhUFTEN+GpVgczpC0PDO0GI0gW2B9Z4nl1hJXOi8gSgoL4IADSr75RCBY8EqDZo8c/TO/XI9PgAyaRGoSKwuvG9Gf/D6QkU5A531zpm5koBvYXzTHm28Z5yaAktb12Adtt8CzjNdy9DnoBAKoZX1HcXj38ZYvYD7bU+tXqg/kofersa2E6Anj0qzk3U8M8buebbIQr5P//ivSvoIoLJqn1ZtbVd0EGmcCrZ+qDOR/rzJseq7c1PMyeTVqKYsDTb6BejgIZlNyoXv//y/A2kLs1plxwuuV4O1t9Huv58VnEX/2KD3Iv/OS31DMHWJYziCy/RqUgiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tBsgDHypsCzL3L1gIGPbiFkE3o0YrX8pS8dXoTkvR7M=;
 b=r6KCvsRNNyNvwX8TbhXoTE29xhy1KD1FFBKnyTpyML+Ibk1QsEz+WbGbzfvneu7Po2hH4aR8vnltQ54xnzgv7Ip2ksHFHN2yh2SXzkg/HRQL4WqptVK6mjSqnbEr87nWsVZEPdXYeEigcDeIYeayLDvunoJ7dAgKvikEAHzFi9wkeWW1uWCTKP/wzTyLohk0FzFwu6Uy3jCN5xlhy3kd9SrBPslO4BonaC6RnBGWhFgYR8q+5TDQjw+Bv+tF2489yYapBPyl+bystapnlu8y8G145nQM5K1voHFWk9uw+Jf+x+dBMgPLEGtHrZAVhKYAvJn7e0KmnjKRgPjVnmIiog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.7; Thu, 22 Jan
 2026 04:56:34 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%6]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 04:56:34 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHci1awVQaWoFEQOE26VaI9OA5cKrVdn9Sw
Date: Thu, 22 Jan 2026 04:56:33 +0000
Message-ID: <IA1PR11MB64670DE6A3C9632AE0C24BE1E397A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260122041133.757072-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260122041133.757072-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260122041133.757072-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: e6446c30-4f76-489d-1e7c-08de59729dba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?2T/TFgp7/a2gRKGC4y8dAqJ1eHDKobPHXAKGWh5hn4e8i9Cmje8F/FLKFV+A?=
 =?us-ascii?Q?qj1qmDNVIZngTGMmMiglAJhY3DYFHTy+jTTCGBEb/NsZ4P1Zr6IIwiWQwmFT?=
 =?us-ascii?Q?Yy0mm1AmS2ncGuX2mUIC/fdHOej0jIeXvXVDVfu8Sgo6HNV1npGzH4SJkKMf?=
 =?us-ascii?Q?DpzsLV/IvjflUuNXwnkXJsUWEwFUcmmjO4tdHD/toCdTUBuk1qVA8PWWyzUS?=
 =?us-ascii?Q?fxijya73894V9vg/4CVg2GpF+PvHRRTU4+xW3phInlbMAvHy1x04MsOdQsqO?=
 =?us-ascii?Q?ORUH0ish6zAfa4YuHertQ7C4Lc1MnuUhDVTGK80j+VRcR7pbDKqEW/Ea2nxa?=
 =?us-ascii?Q?ZIPDkyWOnAnYtp+Exk2jolf0Bvj8/bQ0ScfLbAcZu6Hh/G0H3iJxnv+TB/H4?=
 =?us-ascii?Q?R0iGAR+23iL6a3EnLfoQRiYFH6FKCN+Wzdbry+oHy7VI67z5PMaK0AwiR8CK?=
 =?us-ascii?Q?NsfMIjteMiZLF0tKlDd+W689Qxj1CCixHdVzZi+D1oP/nFgFWAX2Hr6FHoe3?=
 =?us-ascii?Q?xBXXkVEj/j98wf1XBzMmT9c61VZaYVhXpgweSNg7Pl2PvzxDmn9c/A3bar5s?=
 =?us-ascii?Q?6L2uBxSfcmvPEavdYoV4mYoI3nrny5F3rMmVY5Y1lPcxN93kIo/P/3aXvckA?=
 =?us-ascii?Q?71XBYD9Oc7QXr2EEENSuSUxUyy0d4nfM5q8Hw3U8o9ad9EwSwgfoMc/oapD6?=
 =?us-ascii?Q?fem/4dBcdZYYdDUnZRru1rKHMW+SyiEOQSog8pHU1HALht03SS5SaZ44iQKr?=
 =?us-ascii?Q?Wr7Tbm7mj7Lg/cAL8I4E/sAaLXZrGWUZgNhS/J2f5fCQX2g4I8LUaG22zhC/?=
 =?us-ascii?Q?6Sn+wiv00C6xVGow5c1Xc6RamanU0lllurH+vz/0/NJlfaurVa2T8q4xyfii?=
 =?us-ascii?Q?+IETe8fe824nVpIhJXfikC+tpTgLZSBBnxO9TapajI7tERkDj4zWMcIgK8Rt?=
 =?us-ascii?Q?Y+wgk0npApQC08w1gj+IPnerhbGzQYR8cvYu/UTtlsn7fMRzyrew4zT/8AVf?=
 =?us-ascii?Q?RRmijEU/9MyndNXzp35vfD5JwRv66VUbh+e7yJlTpq8ZVoucVg+Nv+qrrAH5?=
 =?us-ascii?Q?UXZElHcBZXBXdnldjz8aAS5imXLc4OQhu3BfFruBcl7fpqrVtOr2GHE/gH5s?=
 =?us-ascii?Q?91epjF3FPXVW3/tb89X3YhZJei+t51nF1sBH+h7KeAvxN5j3kFFsOnn0pc47?=
 =?us-ascii?Q?DdaKEtnSUvuIdGoD4vV2wjA5uEiAfen8jbKXPf7yThGTbCY/+rF/XaUldWob?=
 =?us-ascii?Q?/fhBup28E3q7fhXlUR55oOO1Q29JNtOUZkRX1vbanq2DDfsGIhIdNNQci8h7?=
 =?us-ascii?Q?bqaCgCRf0bp1+FLSJ3yQR9HH8ZSUnxgVNWrYTpwujkrESs77HANLgCXytRVb?=
 =?us-ascii?Q?LnXU9aOww4x1+pBX6lXlFwe9QOlQsHk5so+B7egb+ZWe9z/GbaIY4FNWDlVS?=
 =?us-ascii?Q?CAVF8PnxFTs5+cqvL6J+lr9VlqaT5/sVJ6zfPvSnuL5Wjmt7KsinQDfaniNq?=
 =?us-ascii?Q?aTpVfPAR8aPWh2Eim+IVlZJsObv1DwrK0ePHoro6BvrgaYySrxSSh0P6z9DL?=
 =?us-ascii?Q?swxdp5AIJIjYtElA2ZPU4RfleyoZK9kEZxaoAP3gTjPkhbHpq+oz28ig9Kaj?=
 =?us-ascii?Q?wfERpeb4ctbnCLAlX+MHdD0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vpJ50QmN/wzjWwxTvrVlBTRGQ+Ct7T8UOtW2lV81inVGRDlY6l67ShVC7vVP?=
 =?us-ascii?Q?zyXf1MKFDfwQuJg///CMioKxCozXZviTIIOsDwHEHwWCoeHTfZxZGw3D80dP?=
 =?us-ascii?Q?yEBE3kj6j6C3t2cp0amdcsUgAl2IkQMeSEeSFcUuyszNZCtKPJPuc3hbgs8w?=
 =?us-ascii?Q?Wh8cORcZ8RcPTRUrrCtZKBAHIMTSoT3Y93X2wo+a0MI8DeFvaeIoM6qkuoS6?=
 =?us-ascii?Q?bKrBVP1ue4NxiL4nKmon0DQtbMlN4sefgbUxoN8Rt5GSyR33QnrW95Zz7CSN?=
 =?us-ascii?Q?JH6KOP8OwZ8UeuneeKmuqA3LNanA2Q4hKIagztrfh8l+bEIFBFfAmhyyVNTU?=
 =?us-ascii?Q?EYDLCW+nWxulE+Gf+CbXJJ7TOeex1VLiKSSr8whyRIwM8QioxsWRCPlsqMlF?=
 =?us-ascii?Q?ytTfWHF7nDZ1vVnrR0EquTjfSTKhiVxMvPs79LfPgGeXD0dSGlyIK+HevcAn?=
 =?us-ascii?Q?x7yj+BQU0fN0r3a4+3JaKfsAR1Fm/Et1+rdu5/20GgP8gSCw7vVLpPByyGjy?=
 =?us-ascii?Q?RYO+j/OdSjcQ6TAoWmPiI8+aW/pDy3L1n3mfS9AZY3OSnvj+qRwYPuo6kHBO?=
 =?us-ascii?Q?xAFR8UZEVixSZWSSJTI4jZlLk8B6l39w+ynG2Z2jkDePEiDx++LPJZ5TZqR8?=
 =?us-ascii?Q?kQuUyFD3nAXN53+2ZH5tmdAI5BBXaM/5NWKYylFqOyusOfpO1DW/ir9I46Mr?=
 =?us-ascii?Q?MtnTSIhlDu1fVQCmBtnZ7SIW6cBeu4kmbIC5yu5PUfH91brSzjnriACLsHG9?=
 =?us-ascii?Q?xXBxqAIu9PK4SaLSlz1N+qRt32V7QfNfyLvgC0RTHuk/tEvC1+VBYO6DhNOS?=
 =?us-ascii?Q?Kjyz5qG40AyffGnAGv+Df2dyP8ZN7oeIW9Qru4zG1UXVabMr4lLggPo+cH5H?=
 =?us-ascii?Q?P7reI+GQWAwHcPjT8LRP1krSYRlcHqGTdj+F1R5OWSHfZiy0D3eJFbnNWf3b?=
 =?us-ascii?Q?Q1rweoNFBGnV5EF38YWupwVMtk9jKSZWooOpmNSppzRejb1QK0l1aYtjqWBA?=
 =?us-ascii?Q?FPdOMeTTNUqbQpQAhpmUiaud+agumyXZXYMbEtGs/oDLYt1f6SX8J9awnYFl?=
 =?us-ascii?Q?t+7CTDSrVoBP84MTOi0QP36jJWKYaYH0hWP3YoIqV4n3EBI+uwjv2Ic595y3?=
 =?us-ascii?Q?SC8R6s3QJkyaxoz8K4bcQxrZT8tlly3jYzfoSIk4XnBrkTaaJOsuL+jmbv4T?=
 =?us-ascii?Q?pDbAxEIGmX5gvGn3yVP2xYyIIreqcZEgQNLmNTmMr4AoBuQd6wdrbfTFzk5Q?=
 =?us-ascii?Q?JkErbTCNtnww5CpMQgmQnoACCsMHwAs3Zam6gXDP8RejnHT0bDPq+xDfL02s?=
 =?us-ascii?Q?cp9Zu1K05UbqskEp3Z2ZLVRVPmtfXv1m2l7u6FcKY6Zr16RHeEvYD5Sa2b6z?=
 =?us-ascii?Q?esiDKUNSBJj4BOIZiaMkmpDVnDBphQ6j9C4cCydn8q08lqSEyALQvtq3B+bO?=
 =?us-ascii?Q?OI1VYopuHDm73UFDAVlSOckc129ic1/m/eIyO/KkCR72jae7VPrWmAGLwh+v?=
 =?us-ascii?Q?v2nbRf91rNZNASRzTrNsuAqa45iU6GgCNUjfEXbDk8ye6xL3Baa1dhNeNagb?=
 =?us-ascii?Q?/k5AxrH3FYhP4j4fhZcxs8fRuG803A0SwZzYCdSz45UGy+YkZdqAoy3wfo9F?=
 =?us-ascii?Q?kaxJuo+OuhqqhFuLc0QMEp6zf2AS+uxQyXpysyHCW//m8OrlFiC/QreEe75q?=
 =?us-ascii?Q?BtrZBzqAfHR1sum3g1G6WS+hdA6zUGeWcKlokplX8+H6EOWYm7cYyTWS4G4j?=
 =?us-ascii?Q?O1QMtR/2+A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6446c30-4f76-489d-1e7c-08de59729dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 04:56:33.9682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbh8Q1kzoS+8opAc3L5xAn/yt+PGP8xLhGZYsxzdYF3iDvI639tRA7ZphHX9Fn7tiHm0Ps1hHcW08x627vBEXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A06A761D02
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, January 22, 2026 9:42 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
>=20
> Reject PTL+ platforms in intel_ddi_port_sync_transcoders, As port sync
> feature is deprecated from PTL onwards.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..be774c6d24e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> intel_crtc_state *ref_crtc_state,
>  	/*
>  	 * We don't enable port sync on BDW due to missing w/as and
>  	 * due to not having adjusted the modeset sequence appropriately.
> +	 *
> +	 * Wa_16024710867
> +	 * "Deprecate port sync support for PTL+"
>  	 */
> -	if (DISPLAY_VER(display) < 9)
> +	if (DISPLAY_VER(display) < 9 || DISPLAY_VER(display) >=3D 30)
>  		return 0;
>=20
I think all display WAs are moving into intel_display_wa.c.

So instead of the DISPLAY_VER(display) >=3D 30 check here, this=20
should use: intel_display_needs_wa_16024710867 ()

Regards,

Nemesa
>  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> --
> 2.48.1

