Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC49A273C3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 15:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA3D10E63D;
	Tue,  4 Feb 2025 14:02:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1z2if6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CEE110E63D;
 Tue,  4 Feb 2025 14:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677634; x=1770213634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WiZWrxfp6ljn4ldSlM2gSYraBiO5piJGYpx0BMQpGSI=;
 b=O1z2if6af8VbyaB9hN5Ddi6eQPiXeVwKm/IH++AqjaEkOKRiwzJSzUpH
 LoQmUkCndByMfvEdEQDFUfpfx9a5SfUDvcBHl3e7VVQQ0Gm0ghK00lKNY
 vj0amhTui5Ngsr/fsSs9ZFtnQ9wW7g2DvCHaVATprUp+F9oy9xUZyfvrQ
 p8fugyuDhWeWmeAkouI0kf8RWiLdjjRYdQGP/GxjsDg2IlrUxVyBbsrI7
 TO1Bp2evhhJaqt5GmZmkaHZAawvupO4VpI+SU5g5eQaHQqYS/7hneRqFK
 6G74d6Xwem1yJdEPP1QSjzVBrf5bQEmBFGpcVF5CsmnOf05WxjfgLdu5B w==;
X-CSE-ConnectionGUID: Z+7j8ZkEQXCwJPPGl58M7w==
X-CSE-MsgGUID: HC3aEhfDRaWpSElJh5umSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49819036"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49819036"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 06:00:34 -0800
X-CSE-ConnectionGUID: yu1SXjD+S3iwDDpXlrlvhQ==
X-CSE-MsgGUID: kVUMy3sgSlK/g/4PLxY4uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114662563"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 06:00:33 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 06:00:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 06:00:32 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 06:00:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=muAMTpnfMfLopfOn8xwuUS3URKdXvN50+gb+oceyCkkh/FszfiQ03X44nvXG+lPWXxW2FM6jw3M7Yk40bSPHf4JvEYwwM/+fHigh3m+zvXFjgsn69CtosHh1GauGJpyicv1EbEYFPrIEDb0ibeCS/A7FsBwV1ItlvKgsMQDZl7GhE+B5ZdIt674PMyfKX+fk/GtuLsQBelevkEWhG+ccWOPDFEe10UxGbKswDbZ53AFnaeS3N1VVHcxmygBgyOZnLoEmyiUyumlbLnx55Oaw+LYZUPZ1kF5f22dNs1uuED3zGugRfxg5Qx10O6LTZ9WAowJjer0MifEt3jIKAEaGrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WiZWrxfp6ljn4ldSlM2gSYraBiO5piJGYpx0BMQpGSI=;
 b=NEA0yQ+C6h9QZxKnlPOnTkn54FcAg6Uqu1z5FkwMhhby5NYTIvA7wkRYKG9Y9Q/zs/kozepQ/q3K5YcQXe8j41kxCCsbATTLYuJClIjlcPY4svqbyYnIFA3mgwBjd5upQq83BBC8xHr9T87PPO63XaMGDsUbckItwJfg3j3ISuQt/6MGqD7xb1k9wMnxmNil77ar8hq7/0ZuUlFrwqrBiK1AHitr4haOyZ66y7cYQkNfP9V6cJ9rA5WGAfuLUBpoSuWe2wLon1/d4OdO0Lzt7ZiX1SpsJWnCeGnIFFkfK9u58rGjAoaVPbVbMHei7pkLZNZqq52EchEahOnbcOU0bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL3PR11MB6313.namprd11.prod.outlook.com (2603:10b6:208:3b0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Tue, 4 Feb
 2025 14:00:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 14:00:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Golani, 
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 0/2] Compute as_sdp when vrr is enabled
Thread-Topic: [PATCH v2 0/2] Compute as_sdp when vrr is enabled
Thread-Index: AQHbdwYQwiQ0o4vYEkWPiIrIgqiEVbM3LD4A
Date: Tue, 4 Feb 2025 14:00:29 +0000
Message-ID: <d4343fa9d57fab7e869a6b5dd4afca61a6811833.camel@intel.com>
References: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL3PR11MB6313:EE_
x-ms-office365-filtering-correlation-id: 217d93c5-9816-4493-a29f-08dd4524489c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OS9jME8yaFZJdEFROGpvN1lod1dXbFJmMUZoOG50b3ZXSy9oY0lyWWtMYWU5?=
 =?utf-8?B?RDFJd2kzVzhoZlJaaTVmSXZUdHlaU0lOWnhKUFBnOWlubk5SVkVoZWNuZDdW?=
 =?utf-8?B?eTZvQktjZVQraDFUMG56elU4Sm9EYkJPbm5tZ2RONEdGWDIzSVIvNHBYWUd4?=
 =?utf-8?B?cytUT0J2QlF3T21KNG9FQU1HZzU0MzRTejczZWxHdUxjLzRERlJQRnVNOE40?=
 =?utf-8?B?c1JvRlJBM1hnQVB0UDlqZDNzR012aTNIRVVhOE0yUXRVaXAwQWNhdHZEcnRt?=
 =?utf-8?B?VkpmZHpvRjFFWnBCNlpaOXg3WWNwZHd0MkZCOXhUaFFVZ2tqZ0lXcnlMVDN5?=
 =?utf-8?B?Z1JHU3VMU1NkaHJvbXF5THJtQlVLY29TcVNLYTZvQU1ia0taRk14alZTbFhk?=
 =?utf-8?B?UDh5U1hJelRWcEZ6cDA4bFYwYTN4d1I3VHNLZUFFR3JnSjlYWE5uRjN5T1px?=
 =?utf-8?B?Z2ltTG94NHZFYlp0VTRTb3IwYlhxUVJNQnR0R0RpQTNlY1pBNWlqMmtyUnpD?=
 =?utf-8?B?Rk02Mis0MzBSSE5SZWc1b0xyVFoxQjR1bTN2WVdpdU4yRWZjL21QMkNNTXRH?=
 =?utf-8?B?ckZST2RNazFrMzAzK2xQQnROL2VITURzUjVabndXcDUzbEtJTkJwOHMzVFd2?=
 =?utf-8?B?SzhLUHVCaFh0clRVV2ZlWERqNW9LVWk1eUIwL2dqQTJHU1pRSjRsY25ISUpp?=
 =?utf-8?B?M01wM0Z0WGt1L0EyTldDd3J3cmFLcGFWbk5MQkovc0dYK29vSGVLdldBdENI?=
 =?utf-8?B?UHZsc0VhVG5UMDY4bUNUbFNvZ3NqVFowMWZ6bVg4Rzdqdm84U0FlTWlzQ1Iz?=
 =?utf-8?B?aXpud3RSbVV2Y0hyeFl3Mmova3dyNjlSL3FOaHpKYmN6T2Z2clUwVnp0ODdo?=
 =?utf-8?B?NGc1UUxoNFhvYnRxT2Z5UXJuMGVnbFJneXdXZlFtSys1dDlERE80dElJRjBz?=
 =?utf-8?B?MkZFZE91a0dPdGg2NG54R2d3RXFtSHhyYkEzVEVTUmx1czlQeDdZbWhHdkFN?=
 =?utf-8?B?M2EwNEFpSG1mb1NadHQrbHJhTE9xUG5VOVdQTlYxYXlLYW1OMElId3Q4K2Iw?=
 =?utf-8?B?dE1qeFVNYkh4UDI0NnhCNndKUUZTcC9TOGZReG5lQ2JET0RWbXlhSzFiVSs3?=
 =?utf-8?B?VjFFQ0lnbytkUlYySUFoU0xxUHlXUTkxWlhzdTRrN0pTRisxYldhWEU5N2xV?=
 =?utf-8?B?UDc3NE5LT1ZFSzV2U0RLZjdSTnRjSDhwQVVSQWdnRWsrK2RlalpiUjZ6Rlg3?=
 =?utf-8?B?N2RIYiszYm9qVW1VaEMxZkRaVDBEaTN0eTdScERqSUViVXZpQUNIV0x5VHBl?=
 =?utf-8?B?aHNpSHM4WU1XRnVXYVdWTGhSMVlFcDJ6cS90ZktNVWNIRk5oYnBkWHl5Y0hj?=
 =?utf-8?B?aGdJdDg4L3c1RlNHd3Vtb09xRmxtd2doaWR2Q1c4U2xaa3lEYklqTG1DVHVR?=
 =?utf-8?B?dHdhdnJFVVkvN2gvb0hUY0RxNTA3WDJBejZCMzNaWmF1U29icGllUnIrdSsr?=
 =?utf-8?B?cGI0amZBS1VuM1NrSWw0Q1R4WGVaakVVd3k0Z2NLZ1doN2lDK3VuVXZHUkVM?=
 =?utf-8?B?ekFWOTVSOW9tYkZvbHZ6b3JNWllGUVhaUDZrYnUwY2lWS3lTUmZERWY2YThk?=
 =?utf-8?B?STlreDVyOGNWdloyTVVsTVlTSi9WaW01WXFNSW0zUzROTmd4SWRiSkwzcjJp?=
 =?utf-8?B?a3l6eFdrYlh5eGtRa0JPK2xoWUxzNUNrd1ZHczc5QnZLWUhzbyt0ajNjV3pH?=
 =?utf-8?B?SU1uc2ZJQnJtZm95eUltbjBQdTRBM1R0ZG1HMWNyQURFYmt1Ylo4VlhWVGNM?=
 =?utf-8?B?TmtyaE9TbDRTQmQ4VjNHa2ZjOEpQTTdxM2lQTC83RXVBZ0ZKWWpEQTVEK2cy?=
 =?utf-8?B?OUNZYnRwWEpac1IvR3FodTdHM0FLUk1PancrSWp1T29kc290WEo3cFFtQWNX?=
 =?utf-8?Q?auHZdn+1Xaw7jsmHSm6DT29rJYPcn6ds?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHZvVUExQ2JranVoZ2lwNG1YbkZlK2RuRXM1Mk1YSDRlc2FrUTNrNHhPRnB0?=
 =?utf-8?B?Y3kvNmQ4Tk5CbUUyQm9Ic1BrYlYxaXZkY2trV3VVSHNYU3cySzdkZ2o5bS80?=
 =?utf-8?B?d3p6cjMya2oySWp6N2M4QzVJWjMwdDRTcEQyMmlyV0haeFpJdlYrQVlYK3VW?=
 =?utf-8?B?bGJibzFXZW1meW4zOFBLTU9YbElHcnR1YWhTaFhCRnhNV0o0TW9LTHhIT1NV?=
 =?utf-8?B?WUI1RGFNRzJuU2M2RjdVejVjbXkxeGM1UnVwaHZpSEZuY2pKUzdPc1lIL3FO?=
 =?utf-8?B?OUQxNkw2dmpPNURVVlpDZ2FjanYrdnh4SG5hTGhGVE4xdkNWNWd2ZkNZY0Mr?=
 =?utf-8?B?T25Lb0w3RHY5NDVDOHRiRXlmdmkwRUhsL0xmYWM3R2pINUJmZXI0YWN0RkpF?=
 =?utf-8?B?RU96RGxUbFVYRFRidkRwSlNONEF4YWZHNVpEVy9MTmxpeHBjYWxpSWFobVd6?=
 =?utf-8?B?enBibGE1dGJ6TXI4UDVHR2dZVUN1WVBDbm9QRTJaV25tMGE2clJ5VjlDREhI?=
 =?utf-8?B?OGJRK1RBODJiWUxRNG1PT3Z5bXJVWERia2w1Wm11MmFjaTgzWEZkaXRIUWFu?=
 =?utf-8?B?ZmRINWk0a3hyaXpEWmJPdnMwekhFdGdySEYzbFJheHcvUU1pVmJzeGJXSnhI?=
 =?utf-8?B?NEdzem1rdlpmUHhPdDVaZXBub3AyZTVwS2FlM081aXpkejJYS1Jlc3pISm16?=
 =?utf-8?B?dzkxTTB1QzY5dlFGOGxCdnQxUG4xNEtYZ2dzb2V4b2pKdDUrOXpRcnRPVDBk?=
 =?utf-8?B?dklzZHlzK1FrWE1aTzQ0L3FVYXZGdnBGK3JOUUZ2TkRGZUYrVjFlczBIRXZn?=
 =?utf-8?B?Y2ZpYVY1Zy9jMzBtYW9jaGxzTHp0YUk3N0F1RW9jK3dRQ0UyMlZxMXFESUFP?=
 =?utf-8?B?Y1BDUEVxclFpbWdOblBodndPQUV6V3R6NEkzc3N3enN4RnJKckRTcGpibGJa?=
 =?utf-8?B?c1ZQTEtmTVFmaUpqK2p1S0FWSHZ1S09tanMrVURITzZESmpBd0NKL1A2MjJD?=
 =?utf-8?B?dXo2MXJ1WWVxdzNuaGljb3F6T0VEa1FoU0xtYXBpZlBMM0JsR2MwczIycmxi?=
 =?utf-8?B?S2cxdWY5Wkc4T1IreDE2bGUySFkwRVNORmdBTjdRcHF3bmZmRlQ2M0h5Y3BX?=
 =?utf-8?B?MmNwRXNOMjREZW1VKy9OL2ZwVVk1U0xYaFhzMGFEdXA0STZzY25wKzUvZE91?=
 =?utf-8?B?RGIvVHdhTkxJUEpod3g1UU1EOCtSMDVGWUVmaE40VlN5WEptcUlOZHpNalpv?=
 =?utf-8?B?VU4yL0JZMDBDQml5Rk9kdVBSTTRlRmk3bFduUjhmNlROSDRCZ3I1RjI3Vzg4?=
 =?utf-8?B?VmYxZTNOWTR5TmtBUmR2di9PZ0M2RnZzbzVMV2h6Yll4YjAyWGZSeFR3Uk5U?=
 =?utf-8?B?UmEzb0dpKzZnS1k2VWdTSXNML3lGWEVoQzBLMFFUTkQrMW1TZE05YXlCZEZL?=
 =?utf-8?B?RzFBVHJ6aWcvRmQ0WmVSQTZQYVkrNTZ6R2V1My9QZzBPRUNDODM1OWpCenZw?=
 =?utf-8?B?bnlhUVg2bVprZVJRZUpOT0p4MkUzck81Tm41c0h0QnZ5Ty9UVjdTVlhUU3k1?=
 =?utf-8?B?Tk1PTHRWZWV1ZkozcFRHUHdFN3FGWHA3NnRZMXJyY1o2NGV6UDhIVm5MUFh5?=
 =?utf-8?B?YnZEWjA2d1N3Nm50eXgzdG92SWZGVVh4NTJQb0F4cE45YTkrYWRTWm1KQ005?=
 =?utf-8?B?UE4vTTRzTjhjQmgxb2JPdGx0MmNESWRydVRMUUM4MUsyNVBJbmdLWldWWTgw?=
 =?utf-8?B?bUlOYUgrVzZla1Brb0U4a2lSdWZtRnc0TXMySzkwdnRvcmEvVVBmUGNnY0ZM?=
 =?utf-8?B?eW00MG5uT2ZMK3JQRjI1TFp5V2p0QWx1bDJtT0tXUGt2L2oyTENYYjlxQTJK?=
 =?utf-8?B?UTBSUlF1ajdKcDk1ZzNqUmhlNGJpYzZJTGNOTmUxTTg0bnNsNHlLMTB2czNI?=
 =?utf-8?B?S1ZhOXZuRG9XcXdOa29FK3JFWldRY09DdDdtZHdOTy8rR1NoTjRCNWYxdGdM?=
 =?utf-8?B?emQ0QndWVEVLVm5WU2syaXRrVXNabVNsYVIwUjNnbmtKS0ZFd1lCc2VYdndC?=
 =?utf-8?B?MU5PWnh0R0NIZHh6SHhnbnlSTThtOWZ0bnVEaGpGZnR0b1VrQkI2VEJwOEY5?=
 =?utf-8?B?ODUxbEFhdzdEVGpDcjRWY1AwbTMwRjdpQlZLSSt4TkNQWSs2UkhxUEd4aUI4?=
 =?utf-8?B?dmYrVVFOS3hjdURCeDVNa3BIRW9rTjFYcmNzZlVmRmg5MmVpeUhHTDM2RHZs?=
 =?utf-8?B?dXgzZjcwN0pYYnN1WkdIVTFjemFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <805A5528953A3A47B8D21EAF924CF744@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 217d93c5-9816-4493-a29f-08dd4524489c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2025 14:00:29.5498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVdZTfsF2uOxCPxbuUhgAaqyjge1tLrkRaYpGBxuAk9gj3ZZ++nhdEYcPWtPtdH3GgfwbXW7IdJJtAVBja+xrGItjtaqSCzP0dLDCvfHdXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6313
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

T24gVHVlLCAyMDI1LTAyLTA0IGF0IDE4OjM2ICswNTMwLCBNaXR1bCBHb2xhbmkgd3JvdGU6DQo+
IENvbXB1dGUgYXMgc2RwIHdoZW4gdnJyLmVuYWJsZSBpcyBzZXQsIGFsc28gU2tpcA0KPiBpbmZv
ZnJhbWUuZW5hYmxlIGNoZWNrIHRvIGF2b2lkIGZ1bGwgbW9kZXNldCBkdXJpbmcNCj4gYXNfc2Rw
IHRvZ2dsZS4NCg0KRm9yIHRoZSB3aG9sZSBzZXQ6DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gTWl0dWwgR29sYW5pICgy
KToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogU2tpcCBzdGF0ZSBjaGVja2VyIGZvciBBUyBTRFAg
aW5mb2ZyYW1lIGVuYWJsZQ0KPiDCoCBSZXZlcnQgImRybS9pOTE1L2RwOiBDb21wdXRlIGFzX3Nk
cCBiYXNlZCBvbiBpZiB2cnIgcG9zc2libGUiDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrKystLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqAgfMKgIDIgKy0NCj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQoNCg==
