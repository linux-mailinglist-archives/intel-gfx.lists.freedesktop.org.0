Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED518B58045
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 17:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C2B10E4EE;
	Mon, 15 Sep 2025 15:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LMbqfwZa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E270210E4EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 15:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757949668; x=1789485668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vY5SDkER1CS/HtMZU90SoS9ckEvyPWNM7K5wldog5ds=;
 b=LMbqfwZawM2YBHDzhIDHhuFKGobkc0MNnBk4QHxfsl/ZSU9adrti4/xj
 uMpAn+6+C6uXJWKFi2frCmgByuwT/W9azNHLQLS855lDRrZIgb0aaktUT
 x+6SCru3D+VlbpbGk0dROjc1TKW+4eP56Ix0t5j6LfU/mIzCHvRXuR4Ze
 pPyhnAsd6Jtpn4GVOZB5NcPIGSuysNZjUApwFTG5eAsE4RzMuxzjuY4+0
 1VX8LYSbzbzbgVdB9Hs9UkEDUi5N45Ig2Uzj5q+UhziB4hqTAPkpzYlGW
 qY6sOGIRZWMveu0FprM6ThidPAS8lmQZgWNmjF5/8JrOUD7O2nQ2ZCe2L A==;
X-CSE-ConnectionGUID: ZuG/FG5hRKunOhTaedPQgw==
X-CSE-MsgGUID: 34qtgMZcTSSCE4i5rzqlRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="71306339"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="71306339"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 08:21:08 -0700
X-CSE-ConnectionGUID: /O5I7Hb1RKKHh8hIKwBylQ==
X-CSE-MsgGUID: CkbVt88JRN6YKw3r18WsYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="179909778"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 08:21:07 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 08:21:06 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 08:21:06 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 08:21:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UjWWRJ6rsOJ6bSFFMd2mon8qM9m6YbODkP3Pqff49IClRaE0Sy1GvL+AG5cjjZMdvex8vTH5hIVKLLureyTmPjbWqSZ+KS5Ze59cpLb6L9nlXce8yEKN/4IF8SHwuO1/j5itqFquxn/FgLU367eB8RYtyhQ3MjnRCjqNO8pi1AFnEh9Owk7jWNMICODnieJ2m+9POBxjuZabQQxWE8lIKTlue+bXXnaIkuZZp/YHJRaq8m3fcP6qddg9kxp+abXdic4WBVSinMBTXrnYDTJ6Tfeb4jDaj7SMKphNCtbDD3TMrvhr8l9rZH/BUr5cq51vKV49m/HKVJPgq6NpcAA4lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCWRqJDPCGrzGQMv5DF+c7o17fpVicvak+TqhLQOimw=;
 b=fYn3e76FuWgxTDhfaXls1mGF0lZMus2S+Vok+FmQhHvMcLbuYOfsDQlnxla8NCwovXTLJzCxUNJ0TlAI+DhWiaOW2DxwKf4TStau+ayYa1jsmZmvlB5fhrORPYTn+3PVHlqN6BwaeaMCqRdkjbZOiL8pBIx+zRYPV/J/KXrfvizwsvwkKkrKp+/1OQW9nFPpkJh6p3wqKXoe3XLEQ0crlgisT1aKg0v0CjUv34I/mvDRARJTu65mU13Mab8QFrWoApqzyCLgLngs4zTOZgLXGHsGIZEs8tDpmJ9ZZHVjfvYBxv6e0DyQ5mtlxW3MxRvzF5wn+A1ssYSe/hcFMGT93A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS0PR11MB8084.namprd11.prod.outlook.com (2603:10b6:8:158::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 15:21:04 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 15:21:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Gupta, saurabhg"
 <saurabhg.gupta@intel.com>, "Zuo, Alex" <alex.zuo@intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Topic: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Index: AQHcIzJG+nLPCZG8XU+LA98NK/0P9bSPP6cAgABV0mCAABhpAIAEqwJggAAIRICAAADrYA==
Date: Mon, 15 Sep 2025 15:21:03 +0000
Message-ID: <CH0PR11MB54442CEC556F80FF85FDE19CE515A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
 <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
 <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMQ8iKlCbT5dlYQm@intel.com>
 <CH0PR11MB5444745443F2BBB579122BD1E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMgt6ZwVR2DcyO9u@intel.com>
In-Reply-To: <aMgt6ZwVR2DcyO9u@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS0PR11MB8084:EE_
x-ms-office365-filtering-correlation-id: cc882746-a767-457b-5325-08ddf46b7c26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?6XhMNWB9MqFK9mqERU76MSjIIP7bAmo8gk6yI6yGX/mToT5CSjiag00T4a?=
 =?iso-8859-1?Q?kb+MAyZMT4uYXqX6ai4x8SkXejI8a4kUYkRmOn1Yd+X3B81biGb/K/f9b3?=
 =?iso-8859-1?Q?DKzTfST9fMd33w6UfmnjH+rEPvak5tO+9KahMdQb2O3+Un8feDKo2yynLI?=
 =?iso-8859-1?Q?ibtbpOLRe1PhTWii4c/59xTp30BJYd3IsxAgLb/U7e7f+3d0c1d4hNE5VD?=
 =?iso-8859-1?Q?k3Cag2CKgn9So9iU9wSkSJbOrqPSFhwUR61eXeqyphqy1xF5XIjfNXFnny?=
 =?iso-8859-1?Q?jC49h5bUuOgvk5TgbAzEtPRBowcFDNv6v7gcRCh3+EMwBkhwRcdxdZoawn?=
 =?iso-8859-1?Q?ZuwIdqKsTWWhqrjiFjSkVOZYw1Ax9aLYsheuNlqAG1dcQpubr89ZDNJ8sH?=
 =?iso-8859-1?Q?ueG96jVhX8jGMxw9RuGijvQHg8G6ec/aSLxZDaRueVLyBBzSBOIEqpJONh?=
 =?iso-8859-1?Q?dfw8nJpGOcnCkV+aqeJqwVdj2G5W5wF7EHOy6gjjquV96rZn1OhH552qtS?=
 =?iso-8859-1?Q?g6lPyNmgFia9euOW8ndpEdTszsTIqg/+VR1fhg/AR9FOuWTitzVvgBhWcq?=
 =?iso-8859-1?Q?hhf5RYHXes2L65RFNnQ0b2JUOr725NNoHsbjrAKtK5RNCcEI4DcciJG/0G?=
 =?iso-8859-1?Q?EazXTFn2Gnr3lMvyknKuOj8yWghiWhyq1XX7boyND0g8b4X+6XFEvAaRGW?=
 =?iso-8859-1?Q?ZBeUv+bajwJD4/p16uyQB/K0v4DUMkIuIEBLWWtvsHt6BDpEArp+l8XK34?=
 =?iso-8859-1?Q?bLJ4+v3SXmiPvTgx59lTvzwVRZSrVdaAwKnyUt5FC0P3mgfkpCrFhXMqDR?=
 =?iso-8859-1?Q?3M2YvOTklNVCEZCxLGYoIJ5Qq3UBVasu5s72yfUSDrSueCCGjDZSCBP0Vs?=
 =?iso-8859-1?Q?Bk+ZqmQNJRG8VZHE7Ks+Nmg0116g8J4yS0kTTYqu1zLRxpaehqm3xc1Ex1?=
 =?iso-8859-1?Q?XPKc4z5U3J9b1kwR9aG3q8Qfo18dxNxiPK0BFyaj2xEWL9GI8Xkq6EC7aR?=
 =?iso-8859-1?Q?p0LYYKFPijnsmes4PH77jU5hUO1CFJl4hY4QzsH3urqE13lzMoansb2JQQ?=
 =?iso-8859-1?Q?DtUQ4VLwic+NlTCvrNje7Q9h7K/1/QjdVx9y0z2LSiM0DpSKzLunuIYSAm?=
 =?iso-8859-1?Q?b9KAm2WAD3fnvT4TZ8AOs+45rCsqvs5qHqDStMGr88dNQpl/FtJ6SbU1Tv?=
 =?iso-8859-1?Q?95k8wZu96dY7l3/D+PLTJHAG8qDbQ9kReBOiyH/etc7eAf8DypvHUqp46q?=
 =?iso-8859-1?Q?gELgT8wN2UX8ZZZSjrPXirem4WRFv/n5KR8Ep79paR+/RPy42uS+kY8s1W?=
 =?iso-8859-1?Q?TalJs9OG7zwZz77QML8yUncA8ywNS77KbkUVqxx2hOwbkmh4ll3+yuAMtM?=
 =?iso-8859-1?Q?gl+YNZW0M2em2pR4dEmdAeGVgLLkof6zxmljOhuBjoVDSWZTBi5JoTaeOs?=
 =?iso-8859-1?Q?n+Bbahi3ICaOfyhOWgjkNdEH6OY2eXFNE5iWJkrlk550Y/u8uvhFbWN7Kr?=
 =?iso-8859-1?Q?T6b/NIIL8Aus/2p4P0nKk6HE9bXb2BLVhw1w/ScrGN6GmMbn4Y0MiL4Jqq?=
 =?iso-8859-1?Q?rEW/Lpw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KxJXVBD5gFnFjEHdak4L20pGhXmwkeLJL0g/9m9kl0hgaSxweb6YhIcqBS?=
 =?iso-8859-1?Q?OvxkI34S7CAgykQ5amjuFaoU8gh8cZpa1JIvYLC7lnq3oE2UAwz86BrIEG?=
 =?iso-8859-1?Q?ED7PQe3WNNRSEgwDB/t0MVgChj7fx7QZEy59n8eG+Fnljhezdjvye/NaMP?=
 =?iso-8859-1?Q?bfefRjruxEOtr26T4Vcmaq7FFKZSESZ9jV4D9xqxhs+71rRu6FlPpVaQEq?=
 =?iso-8859-1?Q?zlrEwy/K06vAreyiwIi9vWrMEN6kxwdXWydk0UNpg6lp0cwG1oMWiuvbse?=
 =?iso-8859-1?Q?XzCIcH0DnuW0Ooq+lI4UlzB9ELBPrYMRS28UwvEvkD7j1jCMgK5DOC0jLA?=
 =?iso-8859-1?Q?F8LQOUHuon7C8Eggft+bN47KnBQMr9opSwZU1bL+vXXC+mBDz9uIlAPDEc?=
 =?iso-8859-1?Q?eV9AibISq/szLXCe4kK/fAFQUtYuQ9LqHctx6ed3T90NjJWO6DCOKTUQV7?=
 =?iso-8859-1?Q?FfbWG8fCtKr6YFDWuNE8g3e5LEeHJ5UcTF/vkJJ+7wemKH8ssdr38DxVus?=
 =?iso-8859-1?Q?EEcfBIue/ZxCP3KjKyri4Vtcc3CRGLf6P8AOZ9Nxev/6ZQmPEHNOpucXkW?=
 =?iso-8859-1?Q?u1nCiYK9ifcNXFbwgHGn8WkxP0coZObHCaI2tXi2KS2HRhdgNZcBD83rYy?=
 =?iso-8859-1?Q?HBnZAU3GBT3ZWbGlgXV3/kmJr+mC/O5Wfl/Gy2s+Uagzl4hGVjN0vf3mbu?=
 =?iso-8859-1?Q?Rt9qw6OEjaCyxndwZbVibBfpvhoocYEOMM1RcHimFZbf8GZZtSx9aeWDhP?=
 =?iso-8859-1?Q?eC87Bm6h5UGejKKbGorDjfDKL1W4/mKsb+3XnpG7O4fkpl32/IJv+7p1Vu?=
 =?iso-8859-1?Q?MHgCgoNjclIOc3BxKwo0AcvUdKaiDHyf3Mt5nZDKL5A3gyg6zskodLKOf8?=
 =?iso-8859-1?Q?v97oyOf07MIDxGVdWTmICmFw2wqEc4GEFzGENSN1VUNrdsQi3vuOksPWTi?=
 =?iso-8859-1?Q?Lg6cvM+FQsDkkGP8VetcOQkoMaIWhEOI575c/rm3Z4or1yi2gie/Cibdjj?=
 =?iso-8859-1?Q?B2FLo+3TRCREbtp2xiuuQCXFRdHWWktnV2imcizMU/WGVhPLD5i+NMXh2E?=
 =?iso-8859-1?Q?RjAMm7LmKexXcvW54qWDxhz1fmMfXoUFbuXI6kDCPSq+j2vQXPTB7/EwX5?=
 =?iso-8859-1?Q?5mvFmNZLTLQ+JSjlwAbqm7sENydT3lAMP3rh749M5qu2EgeJlNvYjrYcts?=
 =?iso-8859-1?Q?41Ext5adW+5WSPmVM2WFP0iLg+GiMwLtCZAiCb9+e2kJzvW7oPSRXK4Ch8?=
 =?iso-8859-1?Q?0H5Gie6+J+z6sz28VD3I3UeSrAT7JaQ3IB+eTXZ99kzQkEJ/K7ak3+ErYp?=
 =?iso-8859-1?Q?IxWZTH4bIV7mvSDFPepFq6PJwxY2AqG155ZJyb+2IucJuCINTqfNTmgTGu?=
 =?iso-8859-1?Q?QjnkYkJFRdv2Afh129Dm40Zit0wzHOUxe6nsiPzXIwTPgnQw6W3IbAoYpJ?=
 =?iso-8859-1?Q?ahk/Y3RIiVfmjApy5ZHTCpisNBjQkFocKVqHLcjHjg+m5J9D2M4gWEKadQ?=
 =?iso-8859-1?Q?XXNtLLlaOArfgrDKXIrTJUSxFD9G8+j5bHb/8Wym68ZWh4kTR9yxZ6qVee?=
 =?iso-8859-1?Q?fTPtQIhLoKj5lDKEpENSmawfrRddfwI24GDvaTvkte18HNwvKvglK/f7VS?=
 =?iso-8859-1?Q?Ltr9Sr8T+7zpD7qPG+i7DCMdUg4V5LzEeP6IFzlg9qTxLup9Ix3xkC19UB?=
 =?iso-8859-1?Q?pM0qA7ywp0O5i2SOFBH6SU9kzXHcGcpsKxer5Uz/?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc882746-a767-457b-5325-08ddf46b7c26
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 15:21:03.7578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v1jVt2NL4hIQGYQaMnQyoep0uXspayzICksfIql+b0OzT1QHXq92xDbRAb0aCqYpjH/a488dMw/v7LIR23JuCGc27Fx3avHuGJSCT7g0YDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8084
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

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Monday, September 15, 2025 8:17 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org; =
Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>;=
 Manna, Animesh <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vto=
tal
>=20
> On Mon, Sep 15, 2025 at 02:49:22PM +0000, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
> > Sent: Friday, September 12, 2025 8:30 AM
> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> > Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.o=
rg; Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Manna, Animesh <animesh.manna@intel.com>
> > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with=
 vtotal
> > >=20
> > > On Fri, Sep 12, 2025 at 02:29:17PM +0000, Cavitt, Jonathan wrote:
> > > > -----Original Message-----
> > > > From: Nikula, Jani <jani.nikula@intel.com>=20
> > > > Sent: Friday, September 12, 2025 1:56 AM
> > > > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.f=
reedesktop.org
> > > > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo=
@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; ville.syrjala@li=
nux.intel.com; Manna, Animesh <animesh.manna@intel.com>
> > > > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations =
with vtotal
> > > > >=20
> > > > > On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> =
wrote:
> > > > > > There are a couple of modulus operations in the i915 display co=
de with
> > > > > > vtotal as the divisor that add vtotal to the dividend.  In modu=
lar
> > > > > > arithmetic, adding the divisor to the dividend is equivalent to=
 adding
> > > > > > zero to the dividend, so this addition can be dropped.
> > > > >=20
> > > > > The result might become negative with this?
> > > > >=20
> > > > > BR,
> > > > > Jani.
> > > > >=20
> > > > > >
> > > > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Cc: Animesh Manna <animesh.manna@intel.com>
> > > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> > > > > >  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> > > > > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers=
/gpu/drm/i915/display/intel_dsb.c
> > > > > > index dee44d45b668..67315116839b 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_=
atomic_state *state,
> > > > > >  		intel_pre_commit_crtc_state(state, crtc);
> > > > > >  	int vtotal =3D dsb_vtotal(state, crtc);
> > > > > > =20
> > > > > > -	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_s=
tate)) % vtotal;
> > > > > > +	return (scanline - intel_crtc_scanline_offset(crtc_state)) % =
vtotal;
> > > >=20
> > > > intel_crtc_scanline_offset returns -1, 1, or 2.  So the result here=
 could only be negative if
> > > > the value of scanline is less than 2.
> > > >=20
> > > > > >  }
> > > > > > =20
> > > > > >  /*
> > > > > > @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atom=
ic_state *state,
> > > > > >  	 * Waiting for the entire frame doesn't make sense,
> > > > > >  	 * (IN=3D=3Ddon't wait, OUT=3Dwait forever).
> > > > > >  	 */
> > > > > > -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal =3D=
=3D vtotal - 1,
> > > > > > +	drm_WARN(crtc->base.dev, (end - start) % vtotal =3D=3D vtotal=
 - 1,
> > > >=20
> > > > This can only be negative if start is less than end, which doesn't =
seem possible.
> > > >=20
> > > > > >  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=3D=
%d)\n",
> > > > > >  		 crtc->base.base.id, crtc->base.name, dsb->id,
> > > > > >  		 start, end, vtotal);
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/driv=
ers/gpu/drm/i915/display/intel_vblank.c
> > > > > > index c15234c1d96e..bcfca2fcef3c 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct=
 intel_crtc *crtc)
> > > > > >  	 * See update_scanline_offset() for the details on the
> > > > > >  	 * scanline_offset adjustment.
> > > > > >  	 */
> > > > > > -	return (position + vtotal + crtc->scanline_offset) % vtotal;
> > > > > > +	return (position + crtc->scanline_offset) % vtotal;
> > > >=20
> > > > crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_state).
> > > > And position =3D intel_de_read_fw(display, PIPEDSL(display, pipe)) =
& PIPEDSL_LINE_MASK.
> > > > Finally, #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
> > > > So, unless position =3D 0 on display versions 1 or 2 (where intel_c=
rtc_scanline_offset returns -1), this cannot be negative.
> > >=20
> > > Scanlines can be anything from 0 to vtotal-1.
> > > So nak on this patch.
> > >=20
> > > >=20
> > > > ...
> > > > Wait, if crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_=
state), then why are we recalculating
> > > > it in dsb_scanline_to_hw?  That should also probably be fixed, but =
not in this patch.
> > >=20
> > > Not sure what you think needs fixing. dsb_scanline_to_hw() is the
> > > inverse of most other uses of scanline_offset.
> >=20
> > Well, yes, we subtract it instead of adding it.
> >=20
> > But like, in dsb_scanline_to_hw:
> >=20
> > """
> > return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % v=
total;
> > """
> >=20
> > Can this not be simplified to:
> >=20
> > """
> > return (scanline + vtotal - crtc->scanline_offset) % vtotal;
> > """
> >=20
> > ?
>=20
> No. crtc->scanline_offset may not be correct at that point in time.

Is it guaranteed to be accurate in __intel_get_crtc_scanline()?

Because that's the only place crtc->scanline_offset is read.
-Jonathan Cavitt

>=20
> --=20
> Ville Syrj=E4l=E4
> Intel
>=20
