Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 629AE974EF9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 11:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A8010E98B;
	Wed, 11 Sep 2024 09:46:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TDbuUyXf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 782DB10E98B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 09:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726047972; x=1757583972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8YX3un5sIrJiA5Sd1OLeScz8i5cxbD8SBcs1klJyysc=;
 b=TDbuUyXfviCCUaJLOA98X70winYPfwhlvf9E8KruQHmqBacCG9cRK2YK
 kVLWouKCg9Mp9lbOXgIZsPDurRXxyBvuE5KXffUtifAj5CLMIn/C9J3vi
 83GTOcyNUhx86HD7NOIAsr3R4Aj59EbWCu1FLX1m/YrjG//YSavygrWp7
 9uGoO36ZIklhD7pk1jx0zzsDkqLH5r90z86woAT9NOROuYgCxBh9AD6Zh
 Bs6bgw4SCPBI26zKCama+yTbZmOKJ2fzl+poi9Po75rOC2tn88nSEBApK
 +k/gOHUfHIXxZQqP75wdUMAUKikMIlyfeeo0BdUOLPLcFuxYW6OfxOEPx Q==;
X-CSE-ConnectionGUID: BJSMPqj0TgSPg9Y4zyukZw==
X-CSE-MsgGUID: KgY9UJZYQtKA3G7n47RDBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="27759647"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="27759647"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 02:46:11 -0700
X-CSE-ConnectionGUID: 0Zxebcq6RU2IpygvJbU6Sg==
X-CSE-MsgGUID: n8ltxd5nScOJiyiLzmSVxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67361192"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 02:46:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 02:46:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 02:46:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 02:46:09 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 02:46:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P948C/G+N8NM9oJnYe/XuwvwBNhfQzN7D/6+WLTuk/0AR2Pkl5Et9QymTcEOLUXYbJgbGSUnT5ewp+GZwVVJWLIGA5/jja5H8Jsm9Rj2rRR/GkiPkXiFF+wZhUf473aX+3PSWSDUy2qDVQUUMRmNODOIiYsdQftdVqeDZRk+uXGt6SR+8w44I8mXj2suMRVIKELkNAuZKypMlaRsT9kwtmSm0vmjX4dx0SvQjexc490TMXoSxbHYwHs2yVkbapNlJs3Yd9KZanGr9VW5LUq37QWwGP4NEM7PYakIs9YHkCvnKJow8iXlGVxA8/LzHwvqCvpQlNW6B59k5yp4qOjhNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ut10VEbJgEib84G4eV0MMgHUDkWJ++KPjHl/rzRTDSI=;
 b=mp6iuuwB+N0rE5x/D8r1EMGbwO0fNkhppGDG6xhEwUM8gIRjhIV5sVrI0j8kQmCK8IPH+M3HyK+SQaC08bInHp4Uox+isernMq27xfoogkH1BrxWNdpcN7mI1MGqC3gwvFziBiYdq9jYpQ8mrKhbIeXefbFJ399UQapn1scqquyMRFe+elPyGPYKVRZVIX1yG582FdTiobdFGauprQ+ZIdTpHUYPHW50AUFX75qQBkZAoAY/NK3aX0SAnDOZDybVcGRjUIM4UCsusRdOvTIjm5df5Bi4GpOeYiJrmuqth6TpCe7+Q6XPikzqtpUgs1UsL6HLIADrvtSDcTKVhuw3dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by LV2PR11MB6021.namprd11.prod.outlook.com (2603:10b6:408:17e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Wed, 11 Sep
 2024 09:46:01 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 09:46:01 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsMAPgdxw2i3bUKRYoFbsJCGZrJSdAjAgAA8/xCAAA2RYA==
Date: Wed, 11 Sep 2024 09:46:01 +0000
Message-ID: <SJ0PR11MB67899B9001872BB0AFEF18928D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
 <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <SJ0PR11MB6789255E3DAECD9AADD9A9398D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789255E3DAECD9AADD9A9398D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|LV2PR11MB6021:EE_
x-ms-office365-filtering-correlation-id: 71020693-cebe-47a8-eec7-08dcd2468bde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jIRefs6iY7zr1oiO/+Xk9Ldbye6Etgs7AkQ/mDSOY1FRfFF6yQJJPdlGiG77?=
 =?us-ascii?Q?tfu3wZd1HYmTw3p1Kkm9EpMskK9OLkgMXw/qOic7h9IzD905PSfzUDnXJ6V8?=
 =?us-ascii?Q?it8U0ghccgVli4omkBupKKVyYf/E6B0fLlyUrSNW4uhyGOZqWwdxRJaMERS/?=
 =?us-ascii?Q?6A2MpubtOTKEFbfHF9jR1AnRDCXZsuvbzFi14Txwp9YHTbHMtnN0ZWjdiljX?=
 =?us-ascii?Q?2ieb/tiOpFiosMfgW6rFqemf315K8EUVPOSN1mznXgCx1bKJtuBcg99atM1H?=
 =?us-ascii?Q?E5uC/1g5WxFf797OYOfFhLT25fdK9MQZy5JGf1ENp0AESnxs/EBpQPC+XUgA?=
 =?us-ascii?Q?aa+IBTv8wZacsngtbEgMGLMbeaWmFA0OxesAUBnYguiGlck2MMDhhDtxoCSY?=
 =?us-ascii?Q?OrWXF9a1prM/0UeXsp5yXXO4K4Iyi9LoFaAsJF7Ny6aDvpULrbabG3DRgFTu?=
 =?us-ascii?Q?r0Vmb9R0cud7WfoJlgO7vILd23aRPTXrYNJ3ey9Gw6fCyA5nzez8+OMK2hLv?=
 =?us-ascii?Q?qZ0JocfAN7aEnlh11YoTAkMLVldIBHFErQcnOD2Dmq8b82ibSQCdooACSTlP?=
 =?us-ascii?Q?Cm0gEfT3ECORWGCPootypcj4fF0H1mhlKX0nrCGKFO02CGkQ6n6BbF2aK2/Z?=
 =?us-ascii?Q?jxhYSI9DdXvSWysQfx8MTZ/uccwNoC9hdXdtevqJcB8phxA9QA7AynUmjWs2?=
 =?us-ascii?Q?8Wt4CxFSOPZV6AzNF/IhJMlbPj9QimHJMxjZVkvEEjYYfvZKe4EAfx1FH8NZ?=
 =?us-ascii?Q?2FjXEbNHtprOzpm4qwRh00Rj1YaYxPwjUXfU+8xhhcvd4HnnGo/nNawE9O4l?=
 =?us-ascii?Q?bkaj8nbmDV6pWylO7+r9yHMrG1BACh1OLRVH7EZj7pi9amIFUy9hBxD5uU+6?=
 =?us-ascii?Q?2GXOUsOA0mTCJ9OBOIKRXwrKg59xpucmBbcpZWFNpXnQOzNi+CGo2yw1HGxD?=
 =?us-ascii?Q?8tHeq6mrnaRwPWSVripbLRWb3AEZtxnJW7NodAbvXLBedDomBB42XyamlqX+?=
 =?us-ascii?Q?mlUQoeZxY34/p4bFDpm8y0LKQ/LclSxc9WIUynlHlqDKpy587QiyNzmBN4gw?=
 =?us-ascii?Q?f4mNO5KcVouW7nS22UxX9ZcUT8ouaPMGq+pQyPSItwiFUMC2Tsr7jxeZhuhq?=
 =?us-ascii?Q?HTpL+h05i4ns5Qi8XN4YqasmA8sUhtS+Kfoueyik84VDKwL9XeY6y6vCMIgo?=
 =?us-ascii?Q?1hEvVENnESTK5S8EkjXcJygD54VyRkrqbdWj4EQ758mr6NiPXi7A1wG6WogI?=
 =?us-ascii?Q?KAvdSa3r6Ayppq70bhfC2bi/vhN9HED+D63fbmYnTjQl9NOzMfRaJDtlVTD5?=
 =?us-ascii?Q?nUeLz5iospeNXqGEuwTa0F7X3wCT0Q6FKsI9nZbdYNQnSENiQFa/p8nL2O3s?=
 =?us-ascii?Q?MuZ9PIehcysrsGDTy4i/ACHghgInUBeEqEyOUKoOMNNKtgCMnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f85dZhOfe4e7G1TIIcoA68uNt/gGIaEDPG9zwgQG9908OXLr7LGa9YxbbIjO?=
 =?us-ascii?Q?rcaV7PEJXNyVq1AGB87MI2JR77P4HjFoMYVA1mgJFboeK4DwrS11Pw75J9PS?=
 =?us-ascii?Q?rrFCGi+GyVjcpwTX38VSUHfzgZ7ZwHEJunsiO8M/ZJ8SkHsH959h/5yXkx1U?=
 =?us-ascii?Q?HvlmSMhDepABRxZrXjp8Jmpd64FVvaq3OE+6NFXc3kxyvsTY+K0MDA5ADz+S?=
 =?us-ascii?Q?3dfc9kPXynPmQ4HQlgUxhktkuINCcpom1zesi+BGmlfdL7VoAaFlLcyn2k70?=
 =?us-ascii?Q?FlV9hANnQuvoSzfHazDdzWuNIzFXiFHFtAUwx3aFHpORNK7/H09LVm1PPhi4?=
 =?us-ascii?Q?JA4bW2FVfqPT+d17ou+BAySa0QaDydIAt99pxIr3qUfL3wLtZDwton0IQ36F?=
 =?us-ascii?Q?ca3UYjhP9tLBFu5mNZvWJz7pSCN4YQkb9du7F6If26h4XHXMSEAbMWYUhp4K?=
 =?us-ascii?Q?qbb5YodmjPp481mAjPMPdfYTtfiZ9yVw7P7kzykFkzr2ObUi9Br5OPYyiHun?=
 =?us-ascii?Q?AnNo4X5uDK7PKzE0xS1E8qRnaLGnjw2DDptd4C0/ID/ky0pRWkAvCD1PWJoe?=
 =?us-ascii?Q?YcZc/1STSX2dT/JMru9VrzdP+y0tJehfdU/7ra48mr1jeG5gVKliySa+w1B0?=
 =?us-ascii?Q?rCkkZglMGTSJXb59OCBNgGzj2k2EWvVKvgZhJyNGa4FHcg4X0VdDsX690WUi?=
 =?us-ascii?Q?7oqQis9xNwWyuSxUhq2gK+ALc3CBPMVm913mEzZAlMpQqxLcUg0phsrjd+Ju?=
 =?us-ascii?Q?+8J9XYCIB1luZq1iNKU1yUs13W1q2G+SNjBDHlQgpn4dnE2OsYD6qOlvfyDM?=
 =?us-ascii?Q?2aF49XD/bLvVsK2RBcl/zACjVO3hrcngUXAQ9EXMgkE7rfUP/zd59d+OCWEr?=
 =?us-ascii?Q?muIKxeW/5nokXtg7g/t5sBXR5RpcWtXikP2FsaaZRzC23ZgdUpqDMEu0E/+Q?=
 =?us-ascii?Q?KRGn8cFhJVCgBfl3zp+9WrTOdmnh7ZXoHKgW+JNdEaKrFmmFLqpJ7S3Vpj3E?=
 =?us-ascii?Q?APCjW7mv5XLArMALeZoS6lfD/crdIwC9+ebRZB3H+jWRt/CtXsiwU0igBUxV?=
 =?us-ascii?Q?6HZ6lP5m6p/VurlwB6V7laOZ0QBAWU6gPhpymW+ofzmb5k1It78Z/4s47zMm?=
 =?us-ascii?Q?gs9REQnBHHTBxEsayuQJFDAtUpNxSCRa32tcLucF4QmCcdhnTqBYfOh8iPZx?=
 =?us-ascii?Q?pjPSBJ1+AbZ9qdQL+OtYLRe9hfCuuqRZLDHONzu2VuvKz8LJoxRbsIyG7KG/?=
 =?us-ascii?Q?J34UHGCPDL8tzCh3kE/w972W/EOiX39tuv8rBayYp6pKHUlbuHsJt31j/wSN?=
 =?us-ascii?Q?Wf4928MaXuefj6o1tMOoVa9PtkGhnkTMmcs//rBBAbBCFY9XxskeYUxlIkvW?=
 =?us-ascii?Q?OUb0gRv7Fe4JK4tVuvb27BhTKl0wp7FGzpbdRKeop+vfc4hdpqBkr/FzPV3o?=
 =?us-ascii?Q?1/ZsX1dZKIhWZSzkuHbpZYNiMXRtYMjvre0fgJizNh3/o2IEmi2XVpXPwhtW?=
 =?us-ascii?Q?DWWUCtSBYmsOnMkijHF8hPFWB1++5TUL668tS7DtlrYaof9kH8XrTfnTbK66?=
 =?us-ascii?Q?cDfwDs5REnyZ54vHoL3sRVksS2k1j/JT7xDNK08uiR2P9kUnsyP+wpqaepf3?=
 =?us-ascii?Q?jQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71020693-cebe-47a8-eec7-08dcd2468bde
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 09:46:01.5326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dqtCckUmODshlAHF1+wOQ0h1LN73diOgQ3cWN2JSofwFt3DuPl1ejHmb9gKgx8OVV+a3iWGJofB5p6t8LA6fVkncxOphEeG7LEC8T2F6rNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6021
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

> -----Original Message-----
> From: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Sent: Wednesday, September 11, 2024 2:20 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Kulkarni, Vandita
> > Sent: Wednesday, September 11, 2024 10:46 AM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Arun R Murthy
> > > Sent: Friday, July 5, 2024 3:26 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Subject: [PATCH 3/5] Add crtc properties for global histogram
> > >
> > > CRTC properties have been added for enable/disable histogram,
> > > reading the histogram data and writing the IET data.
> > > "HISTOGRAM_EN" is the crtc property to enable/disable the global
> > > histogram and takes a value 0/1 accordingly.
> > > "Histogram" is a crtc property to read the binary histogram data.
> > > "Global IET" is a crtc property to write the IET binary LUT data.
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
> > >  drivers/gpu/drm/i915/display/intel_crtc.c     | 202 ++++++++++++++++=
+-
> > >  drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
> > >  .../drm/i915/display/intel_display_types.h    |  17 ++
> > >  .../gpu/drm/i915/display/intel_histogram.c    |   1 +
> > >  6 files changed, 242 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index 76aa10b6f647..693a22089937 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -246,6 +246,8 @@ intel_crtc_duplicate_state(struct drm_crtc
> > > *crtc)
> > >
> > >  	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state- uapi);
> > >
> > > +	if (crtc_state->global_iet)
> > > +		drm_property_blob_get(crtc_state->global_iet);
> > >  	/* copy color blobs */
> > >  	if (crtc_state->hw.degamma_lut)
> > >  		drm_property_blob_get(crtc_state->hw.degamma_lut);
> > > @@ -277,6 +279,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
> > >  	crtc_state->fb_bits =3D 0;
> > >  	crtc_state->update_planes =3D 0;
> > >  	crtc_state->dsb =3D NULL;
> > > +	crtc_state->histogram_en_changed =3D false;
> > >
> > >  	return &crtc_state->uapi;
> > >  }
> > > @@ -312,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
> > >
> > >  	drm_WARN_ON(crtc->dev, crtc_state->dsb);
> > >
> > > +	if (crtc_state->global_iet)
> > > +		drm_property_blob_put(crtc_state->global_iet);
> > >  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
> > >  	intel_crtc_free_hw_state(crtc_state);
> > >  	if (crtc_state->dp_tunnel_ref.tunnel)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > index 1b578cad2813..24f160359422 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -10,6 +10,7 @@
> > >  #include <drm/drm_fourcc.h>
> > >  #include <drm/drm_plane.h>
> > >  #include <drm/drm_vblank_work.h>
> > > +#include <drm/drm_atomic_uapi.h>
> > >
> > >  #include "i915_vgpu.h"
> > >  #include "i9xx_plane.h"
> > > @@ -26,6 +27,7 @@
> > >  #include "intel_drrs.h"
> > >  #include "intel_dsi.h"
> > >  #include "intel_fifo_underrun.h"
> > > +#include "intel_histogram.h"
> > >  #include "intel_pipe_crc.h"
> > >  #include "intel_psr.h"
> > >  #include "intel_sprite.h"
> > > @@ -201,6 +203,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
> > > static void intel_crtc_free(struct intel_crtc *crtc)  {
> > >  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> > > +	intel_histogram_deinit(crtc);
> > >  	kfree(crtc);
> > >  }
> > >
> > > @@ -220,6 +223,100 @@ static int intel_crtc_late_register(struct
> > > drm_crtc
> > > *crtc)
> > >  	return 0;
> > >  }
> > >
> > > +static int intel_crtc_get_property(struct drm_crtc *crtc,
> > > +				   const struct drm_crtc_state *state,
> > > +				   struct drm_property *property,
> > > +				   uint64_t *val)
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> > > +	const struct intel_crtc_state *intel_crtc_state =3D
> > > +		to_intel_crtc_state(state);
> > > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > > +
> > > +	if (property =3D=3D intel_crtc->histogram_en_property) {
> > > +		*val =3D intel_crtc_state->histogram_en;
> > > +	} else if (property =3D=3D intel_crtc->global_iet_property) {
> > > +		*val =3D (intel_crtc_state->global_iet) ?
> > > +			intel_crtc_state->global_iet->base.id : 0;
> > > +	} else if (property =3D=3D intel_crtc->histogram_property) {
> > > +		*val =3D (intel_crtc_state->histogram) ?
> > > +			intel_crtc_state->histogram->base.id : 0;
> > > +	} else {
> > > +		drm_err(&i915->drm,
> > > +			"Unknown property [PROP:%d:%s]\n",
> > > +			property->base.id, property->name);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> Also to me the below function looks like
> drm_property_replace_blob_from_id, why are we not using that, am I
> missing something here..
>=20
> Thanks,
> Vandita
> > > +static int
> > > +intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
> > > +					   struct drm_property_blob **blob,
> > > +					   u64 blob_id,
> > > +					   ssize_t expected_size,
> > > +					   ssize_t expected_elem_size,
> > > +					   bool *replaced)
> > > +{
> > > +	struct drm_property_blob *new_blob =3D NULL;
> > > +
> > > +	if (blob_id !=3D 0) {
> > > +		new_blob =3D drm_property_lookup_blob(dev, blob_id);
> > > +		if (!new_blob)
> > > +			return -EINVAL;
> > > +
> > > +		if (expected_size > 0 &&
> > > +		    new_blob->length !=3D expected_size) {
> > > +			drm_property_blob_put(new_blob);
> > > +			return -EINVAL;
> > > +		}
> > > +		if (expected_elem_size > 0 &&
> > > +		    new_blob->length % expected_elem_size !=3D 0) {
> > > +			drm_property_blob_put(new_blob);
> > > +			return -EINVAL;
> > > +		}
> > > +	}
> > > +
> > > +	*replaced |=3D drm_property_replace_blob(blob, new_blob);
> > > +	drm_property_blob_put(new_blob);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int intel_crtc_set_property(struct drm_crtc *crtc,
> > > +				   struct drm_crtc_state *state,
> > > +				   struct drm_property *property,
> > > +				   u64 val)
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> > > +	struct intel_crtc_state *intel_crtc_state =3D
> > > +		to_intel_crtc_state(state);
> > > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > > +	bool replaced =3D false;
> > > +
> > > +	if (property =3D=3D intel_crtc->histogram_en_property) {
> > > +		intel_crtc_state->histogram_en =3D val;

Should this not be set only if the value changes, rather than setting it to=
 true always?
> > > +		intel_crtc_state->histogram_en_changed =3D true;
> > > +		return 0;
> > > +	}
> > > +
> > > +	if (property =3D=3D intel_crtc->global_iet_property) {
> > > +		intel_atomic_replace_property_blob_from_id(crtc->dev,
> > > +							   &intel_crtc_state-
> > > >global_iet,
> > > +							   val,
> > > +							   sizeof(uint32_t) *
> > > HISTOGRAM_IET_LENGTH,
> > > +							   -1, &replaced);
> > > +		if (replaced)
> > > +			intel_crtc_state->global_iet_changed =3D true;
> > > +		return 0;
> > > +	}
> > > +
> > > +	drm_dbg_atomic(&i915->drm, "Unknown property
> > > [PROP:%d:%s]\n",
> > > +		       property->base.id, property->name);
> > > +	return -EINVAL;
> > > +}
> > > +
> > >  #define INTEL_CRTC_FUNCS \
> > >  	.set_config =3D drm_atomic_helper_set_config, \
> > >  	.destroy =3D intel_crtc_destroy, \
> > > @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct
> > > drm_crtc
> > > *crtc)
> > >  	.set_crc_source =3D intel_crtc_set_crc_source, \
> > >  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
> > >  	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> > > -	.late_register =3D intel_crtc_late_register
> > > +	.late_register =3D intel_crtc_late_register, \
> > > +	.atomic_set_property =3D intel_crtc_set_property, \
> > > +	.atomic_get_property =3D intel_crtc_get_property
> > >
> > >  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
> > >  	INTEL_CRTC_FUNCS,
> > > @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private
> > > *dev_priv, enum pipe pipe)
> > >  	intel_color_crtc_init(crtc);
> > >  	intel_drrs_crtc_init(crtc);
> > >  	intel_crtc_crc_init(crtc);
> > > +	intel_histogram_init(crtc);
> > > +
> > > +	/* Initialize crtc properties */
> > > +	intel_crtc_add_property(crtc);
> > >
> > >  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos,
> > > PM_QOS_DEFAULT_VALUE);
> > >
> > > @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct
> > > intel_atomic_state *state,
> > >  out:
> > >  	intel_psr_unlock(new_crtc_state);
> > >  }
> > > +
> > > +static const struct drm_prop_enum_list histogram_en_names[] =3D {
> > > +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> > > +	{ INTEL_HISTOGRAM_ENABLE, "Enable" }, };
> > > +
> > > +/**
> > > + * intel_attach_histogram_en_property() - add property to
> > > +enable/disable histogram
> > > + * @intel_crtc: pointer to the struct intel_crtc on which the
> > > +global histogram
> > > is to
> > > + *		be enabled/disabled
> > > + *
> > > + * "HISTOGRAM_EN" is the crtc propety to enable/disable global
> > > +histogram  */ void intel_attach_histogram_en_property(struct
> > > +intel_crtc
> > > +*intel_crtc) {
> > > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > > +	struct drm_device *dev =3D crtc->dev;
> > > +	struct drm_property *prop;
> > > +
> > > +	prop =3D intel_crtc->histogram_en_property;
> > > +	if (!prop) {
> > > +		prop =3D drm_property_create_enum(dev, 0,
> > > +						"HISTOGRAM_EN",
> > > +						histogram_en_names,
> > > +
> > > 	ARRAY_SIZE(histogram_en_names));
> > > +		if (!prop)
> > > +			return;
> > > +
> > > +		intel_crtc->histogram_en_property =3D prop;
> > > +	}
> > > +
> > > +	drm_object_attach_property(&crtc->base, prop, 0); }
> > > +
> > > +/**
> > > + * intel_attach_global_iet_property() - add property to write Image
> > > +Enhancement data
> > > + * @intel_crtc: pointer to the struct intel_crtc on which global
> > > +histogram is enabled
> > > + *
> > > + * "Global IET" is the crtc property to write the Image Enhancement
> > > +LUT binary data  */ void intel_attach_global_iet_property(struct
> > > +intel_crtc
> > > +*intel_crtc) {
> > > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > > +	struct drm_device *dev =3D crtc->dev;
> > > +	struct drm_property *prop;
> > > +
> > > +	prop =3D intel_crtc->global_iet_property;
> > > +	if (!prop) {
> > > +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> > > | DRM_MODE_PROP_ATOMIC,
> > > +					   "Global IET", 0);
> > > +		if (!prop)
> > > +			return;
> > > +
> > > +		intel_crtc->global_iet_property =3D prop;
> > > +	}
> > > +
> > > +	drm_object_attach_property(&crtc->base, prop, 0); }
> > > +
> > > +/**
> > > + * intel_attach_histogram_property() - crtc property to read the
> > histogram.
> > > + * @intel_crtc: pointer to the struct intel_crtc on which the
> > > + global
> > histogram
> > > + *		was enabled.
> > > + * "Global Histogram" is the crtc property to read the binary
> > > + histogram
> > data.
> > > + */
> > > +void intel_attach_histogram_property(struct intel_crtc *intel_crtc) =
{
> > > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > > +	struct drm_device *dev =3D crtc->dev;
> > > +	struct drm_property *prop;
> > > +	struct drm_property_blob *blob;
> > > +
> > > +	prop =3D intel_crtc->histogram_property;
> > > +	if (!prop) {
> > > +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> > > |
> > > +					   DRM_MODE_PROP_ATOMIC |
> > > +					   DRM_MODE_PROP_IMMUTABLE,
> > > +					   "Global Histogram", 0);
> > > +		if (!prop)
> > > +			return;
> > > +
> > > +		intel_crtc->histogram_property =3D prop;
> > > +	}
> > > +	blob =3D drm_property_create_blob(dev, sizeof(uint32_t) *
> > > HISTOGRAM_BIN_COUNT, NULL);
> > > +	intel_crtc->config->histogram =3D blob;
> > > +
> > > +	drm_object_attach_property(&crtc->base, prop, blob->base.id); }
> > > +
> > > +int intel_crtc_add_property(struct intel_crtc *intel_crtc) {
> > > +	intel_attach_histogram_en_property(intel_crtc);
> > > +	intel_attach_histogram_property(intel_crtc);
> > > +	intel_attach_global_iet_property(intel_crtc);
> > > +
> > > +	return 0;
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h
> > > b/drivers/gpu/drm/i915/display/intel_crtc.h
> > > index b615b7ab5ccd..56c6b7c6037e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> > > @@ -7,6 +7,7 @@
> > >  #define _INTEL_CRTC_H_
> > >
> > >  #include <linux/types.h>
> > > +#include <drm/drm_crtc.h>
> > >
> > >  enum i9xx_plane_id;
> > >  enum pipe;
> > > @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct
> > > drm_i915_private *i915,
> > >  				     enum pipe pipe);
> > >  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
> > >
> > > +int intel_crtc_add_property(struct intel_crtc *intel_crtc); void
> > > +intel_attach_histogram_en_property(struct intel_crtc *intel_crtc);
> > > +void intel_attach_global_iet_property(struct intel_crtc
> > > +*intel_crtc); void intel_attach_histogram_property(struct
> > > +intel_crtc *intel_crtc);
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index c2c388212e2e..94e9f7a71a90 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -93,6 +93,7 @@
> > >  #include "intel_fifo_underrun.h"
> > >  #include "intel_frontbuffer.h"
> > >  #include "intel_hdmi.h"
> > > +#include "intel_histogram.h"
> > >  #include "intel_hotplug.h"
> > >  #include "intel_link_bw.h"
> > >  #include "intel_lvds.h"
> > > @@ -4324,6 +4325,10 @@ static int intel_crtc_atomic_check(struct
> > > intel_atomic_state *state,
> > >  	if (ret)
> > >  		return ret;
> > >

I see that you may have kept it for future use, but I cannot see any practi=
cal use for this in this series.
And what could be the future use is not mentioned either.

> > > +	/* HISTOGRAM changed */
> > > +	if (crtc_state->histogram_en_changed)
> > > +		return intel_histogram_can_enable(crtc);
> > > +
> > >  	return 0;
> > >  }
> > >
> > > @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> > > intel_atomic_state *state)
> > >  		 * FIXME get rid of this funny new->old swapping
> > >  		 */
> > >  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> > > >dsb);
> > > +
> >

> > Since there is a wait_for_vblank in this for older platforms only,
> > what is the expected user space behaviour here for enabling histogram
> > and updating the iets.
I have couple of more comments here, since you setting  histogram_en_change=
d to true always, the disable code inside histogram_update will get execute=
d always until someone resets this flag.

> > > +		/* Re-Visit: HISTOGRAM related stuff */
> > > +		if (new_crtc_state->histogram_en_changed)
> > > +			intel_histogram_update(crtc,
> > > +					       new_crtc_state->histogram_en);


> > Is there any particular reason that this code is not part of pre plane =
update?
Had missed couple of comments in the previous reply. Have added it here. So=
rry for multiple emails.
Thanks
Vandita

> > > +		if (new_crtc_state->global_iet_changed)
> > > +			intel_histogram_set_iet_lut(crtc,
> > > +						    (u32 *)new_crtc_state-
> > > >global_iet->data);
> > >  	}
> > >
> > >  	/* Underruns don't always raise interrupts, so check manually */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index e0a9c6d8c9b2..e7c33eb76a7e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
> > >  	INTEL_BROADCAST_RGB_LIMITED,
> > >  };
> > >
> > > +/* HISTOGRAM property */
> > > +enum intel_histogram_en_prop {
> > > +	INTEL_HISTOGRAM_PROP_DISABLE,
> > > +	INTEL_HISTOGRAM_PROP_ENABLE,
> > > +};
> > > +
> > >  struct intel_fb_view {
> > >  	/*
> > >  	 * The remap information used in the remapped and rotated views to
> > > @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
> > >
> > >  	/* LOBF flag */
> > >  	bool has_lobf;
> > > +
> > > +	/* HISTOGRAM data */
> > > +	int histogram_en;
> > > +	struct drm_property_blob *global_iet;
> > > +	struct drm_property_blob *histogram;
> > > +	bool global_iet_changed;
> > > +	bool histogram_en_changed;
> > >  };
> > >
> > >  enum intel_pipe_crc_source {
> > > @@ -1539,6 +1552,10 @@ struct intel_crtc {
> > >
> > >  	/* histogram data */
> > >  	struct intel_histogram *histogram;
> > > +	/* HISTOGRAM properties */
> > > +	struct drm_property *histogram_en_property;
> > > +	struct drm_property *global_iet_property;
> > > +	struct drm_property *histogram_property;
> > >
> > >  #ifdef CONFIG_DEBUG_FS
> > >  	struct intel_pipe_crc pipe_crc;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > > index 8fa3bc74e52b..740019fdf0df 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > > @@ -183,6 +183,7 @@ static void intel_histogram_disable(struct
> > > intel_crtc
> > > *intel_crtc)
> > >
> > >  	cancel_delayed_work(&histogram->handle_histogram_int_work);
> > >  	histogram->enable =3D false;
> > > +	intel_crtc->config->histogram_en =3D false;
> > >  }
> > >
> > >  int intel_histogram_update(struct intel_crtc *intel_crtc, bool
> > > enable)
> > > --
> > > 2.25.1

