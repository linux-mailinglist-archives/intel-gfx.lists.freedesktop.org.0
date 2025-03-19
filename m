Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB106A68C9C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 13:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21B010E307;
	Wed, 19 Mar 2025 12:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KWJxBtrv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E6010E307;
 Wed, 19 Mar 2025 12:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742386743; x=1773922743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d+haaaswxfJOEqBPSeTGbbG1Ok2C85Ico3vq9BhmKBk=;
 b=KWJxBtrvd1faL15SCVVGYGWDsrpwM95MMWxh7yVZ+OO2+YV1APP449MY
 vKRbdJnkAEKON9eXIp9Z+ioCJ9DHhBk4FZFcSaLZnYOJb2ES6e7kLD7VX
 WKqQ/Ej0Ys+t72bWNhVQbrIOAURnNCX1wOwBSndm5h0tHkSJn1UCH1Vge
 JMIWQn2MwbGBagruPEjSy0TgDhH5FyXifMCrXHVM+KYdHTIkiZUTBPcwq
 DbF4sssLKHA2Wz9+aMBWUmIzK68UNaioAus6vUaDJwPNn569szyU10XMW
 Ex3yDbpxC0KBxeGFsD5CvqgHhmqx46dWFy3FVkX1lmrrJVFRX9wEu2hOt w==;
X-CSE-ConnectionGUID: UAMbZu5YQgSnZyH0KK7/dg==
X-CSE-MsgGUID: Fbwc+yYZR9aJlg8HuNbvgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="43305062"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43305062"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 05:19:03 -0700
X-CSE-ConnectionGUID: Xx99cPvVTy2rn9FNyEfVcg==
X-CSE-MsgGUID: qX3qiz6JTWGOwy+LPs5M0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123088218"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 05:19:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Mar 2025 05:19:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 05:19:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 05:19:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lQs6PDfNsRkMy7Pcu0DBctFU/kyB3D9YzldS9q6i/F886wxq8F6Qh6TaeFbbbTiIsJPGc/pOrYIG5bpx7F9tCxkBYqa9VW6c8919sJOIRbhPTVB6jGPYRzayb3iIMo58fNSasDm1r/z/jyVMEKGaG4NeO6eFsPapSoB/2aQpK6w2JNaQzdypbH81Nh0YOWYZNKynWGVLd74CPxO26nBU83fBltT5WljDr7LRygC7wG6U8TjVJalS56TWSA8ZnP/a05UEYA6IkKzh0a7iJpBsSVQ8ifJ4kjarfo6AHjaqwJupgTZ4bE9065pJ+edIYDLd+4XBeyHFOoKAsg+G4/fX5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=in4OnVU3GjNKC7yATi/a6lmxs7z0TEfKT0n4LHyyPdE=;
 b=SGmijnYZySvDwHaXwLiRhIt4mfN3zHSMY3vCQBh5n1JRGSs1dAFLQNmjThF8IXM+Ll3PPWBIgQ+eAdsPyRE3hjOf6Q8vo2pyz4DvZg6RX7W6Ip+IoN9gqfzmlnq1rl2fPLufO9wxn5n3SvV4vQXdXSU2bM/86ZxzlCuX5QBHl1ubwRqS5BxXpZ/wYAYRMYdSFbXMW20rbb6STjCQ4xxQ7EBh/g5lTuDkA8G5YbKjP10W64RioL/vZVXDAkc0suQRTJZ0T6u2HP0BJ7E4bkUFzk//f39QK7lzdQpm1jDQfRc2GNhxrSjTd0/R7dyCN61v1IOsYfg45wgNj3YVSDSDfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 12:18:57 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 12:18:57 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Thread-Topic: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Thread-Index: AQHbh7KQuXh93mOwdkOymrAx9GKN8rNc7RoAgAYngUCAF20boA==
Date: Wed, 19 Mar 2025 12:18:57 +0000
Message-ID: <SJ1PR11MB6129131616573D04D9732ED6B9D92@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
 <Z8Hk7sSnEyyj1Rtf@intel.com>
 <SJ1PR11MB6129C464034F1BE273FC3C3AB9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129C464034F1BE273FC3C3AB9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB5948:EE_
x-ms-office365-filtering-correlation-id: 3ff81f26-16f9-4503-2f6c-08dd66e03957
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?rbFsWLdnUnkr9j1yMhCoQc+MUZ5U9wv/I1vb4ngLz8I89bc32Hl8PlsIle?=
 =?iso-8859-1?Q?e4TcmzhoVeTe0mRs8YKziGPZsN+aawyOQ3WmQz0IDxoj3Lg2WsKWgT9gyy?=
 =?iso-8859-1?Q?nXqiPVGE10cLyWfzhJcTbr0YvpTRQXvR6SyTTP1MsQ1DbhbmInb1Va5ArA?=
 =?iso-8859-1?Q?zc7EqDB8j5QYXtiO762ra+eKWW7TH+QRpRLfbsar7I+Zy+lbh1iH1sT12C?=
 =?iso-8859-1?Q?Sai/xOn5g1flzOKATVLcExsmVb15RwVx6A3ZEZVm5DDvW4iJzwhsNUTtZV?=
 =?iso-8859-1?Q?+uIHYFKivaVgSnUrs+2KhTLYlKVVH1abBWpVgFtBvZ5LmjlPnJy80iqwxL?=
 =?iso-8859-1?Q?giT86PjLv/g1RVv/qPJYRrWKy3jpbCknG8f6rMe1majyca5BtwGtejRjJl?=
 =?iso-8859-1?Q?C2BkWJx3xr6VU/hNMLmaWhJEKnQmPyKj/Z9HHl8asGuWAORygak1mDu48D?=
 =?iso-8859-1?Q?L6OoLEcXWVoHAF5/16MxanQ58eFQzdh6meFd3l/vFMC0DDAS4dZuuqTR8W?=
 =?iso-8859-1?Q?WAMvCAkCMG+FyJhd2LwXyF+cTS4x0H60CeUBTFUPQoFN/UPgyAVJleOW9Q?=
 =?iso-8859-1?Q?7FbWuqWOVOrDqUOBMc+dyEwtWjy+Bz2U0l6lq340uKYfMHD2FNWcY4mwCd?=
 =?iso-8859-1?Q?4mHZl9uzZO9RaeDXAY7U5OLXT7ci3HKS0CHS4pDhOqQKDjsNa9KZ69Gi4l?=
 =?iso-8859-1?Q?UyZOA0K3NBpqNzSoJ0KZQ9wSIafxCNRpCti8GvyFMGec+3l9Yp+R9BVfAG?=
 =?iso-8859-1?Q?qqADTXguqWNCsRFw/bkzMK7GoN4rCQlPja22OSf+ENQzIZquFIKHzCo5uv?=
 =?iso-8859-1?Q?O7e0UxQry1AurRirfvyrPeGv0PrIHYIGHsQIgR/vW91i/7PSzLzpXQRL9E?=
 =?iso-8859-1?Q?wCoAHFhzzaZf6lPQjbKn5UDHijO6JxltJs4nae/jMro9WU2WpzrZGNc8hZ?=
 =?iso-8859-1?Q?jwTNOx5+EdCjA9PODrAD2HPZIfr31jHbgJCw3kOeLbK7mepXlTFdtBJ/gt?=
 =?iso-8859-1?Q?dj/1/p0H/UpEiDcvWhAiiK9z35FsWBgc+aoRfsYNdv42KN7Tx3FHGk4Xat?=
 =?iso-8859-1?Q?P2DGRbViLedlDePwUr6lk5LfAy0a5iCrHtKYtFvYZmmucFSVFFrCTRhYm8?=
 =?iso-8859-1?Q?BVNFQoZOg3VZdLi9IeUgUbyjgtKI9lAkNPOt7QxOmuIL5+bDWJLemot/0S?=
 =?iso-8859-1?Q?YsMQnfDSQ3U0s4ErtXVBD2wf6j6Yfk9Xen4GuYwSOR217wVnSgZ+/KrPL7?=
 =?iso-8859-1?Q?iPvXubiVwTmxMIQVZcQyZjkzhAvtSYAV4gn03x0I4e2xMXNaL0ifCyqYdm?=
 =?iso-8859-1?Q?XT4vsO/bCi/zVEy8gcnV97rkU2QOzQR8XajfAnDNeJFEyUQlRsNY2aV1rn?=
 =?iso-8859-1?Q?JpC79OrZV+uCz/WUaUVApKHMvL3EYXeP29FahyuEOwuJ7bXl3A4Oew+Nqk?=
 =?iso-8859-1?Q?pLtB2zy6lhQ3+0xn4iNbhL0Ze/V0JWlB/2oHqokF81l+prrKIbQDIDN3cj?=
 =?iso-8859-1?Q?29GDUImx7YFpzZJlIbVAQMSlL5QYOUlMs89qyy8Khxig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?BOTpRlm3Jts0WhHKXkYfTxaxXXpE9QkPs3mYU7J3BAEF0N3mbPS6E9/jjO?=
 =?iso-8859-1?Q?iWSJe0rpVNllpIeEpT5GBDFa5KSHlCmpS91Z1wvkk0PlC1ssMlonM7r6fn?=
 =?iso-8859-1?Q?+Oii+c8cqDQAuzKGa0alvzAklz9I41dHhk5Bs2i8kn+jkyHe18KxGtaIM2?=
 =?iso-8859-1?Q?+JAj2RFUEYIJH4YOElLH+0esWMR43aGLmnq5nmbJcgMuZxmIy5NK+5DmZ1?=
 =?iso-8859-1?Q?w30InIWNmT/qjYAGfg+OcQlxwjbLbN1v4/OVRrdiplrMpUIifq5+IkDDL8?=
 =?iso-8859-1?Q?Pq4SHI8xyLq/RLkwiiAsWZymoVXheanfxcAKqmE9ZAYHY3xnt0wtVDpaCP?=
 =?iso-8859-1?Q?PVmkjDBKcwUp+mizh5cf6F1CR00xh6kiBcJGqHiAvD2ZbVmXH4VJQx8rX0?=
 =?iso-8859-1?Q?yt60oowLPRKEJmXOrgyP8TbzhCFqHxnHJadFRCsXOL8DGUrxLI8f7QIC4d?=
 =?iso-8859-1?Q?0dW8/i5teOYG5ra8XK1EoRWKpQCSg4A8ZAkDZX9ts86EJIOYbPiiNpjv6y?=
 =?iso-8859-1?Q?aYDWA15njjQaUGAbZrXzYvw8EQIp4OXQIbCVJM1e3sQjAM+O0UaSyXRkmv?=
 =?iso-8859-1?Q?hiFFZ/uSwm+p/boXK4Z2eGYqQaxjq3A2VklwY4XUHp1Kg8IqNWtEKbTh9n?=
 =?iso-8859-1?Q?UyQBUDz0bG9NonTV/W3xqypH7r9gvPnZ4M4pAZ+eQ5NmcU0YH11emnMjOE?=
 =?iso-8859-1?Q?fzRrtVk/A1frCc4wNejA1pFMWA3vwBTwUTc4nWwouHFwBVbunQdfDXSP9Y?=
 =?iso-8859-1?Q?4GK7FU6rrSmCYLikNLvXQ56/SCcE9wZEIhmC0bWLa++pQZhI3aUR40hyg8?=
 =?iso-8859-1?Q?j5toS/5OMYU6YXlY41EA6F+7oa0jpryeezA89SbWNPlWn7F7pfy9nhWuaJ?=
 =?iso-8859-1?Q?sfTEDP+fBkLQaCt58Q3hm8Tj+08QtHmCcwYETn0r1ge4GtiEVtYX9BNSx5?=
 =?iso-8859-1?Q?oHCLLvf6NOJjRfjKGwy743O9gpEc46TY0R/hJ9IP3rz007Q6ZnhYyYx69M?=
 =?iso-8859-1?Q?ZwhppjZIV9JzULGFLKvWgOxAxVw85hWTQfSGOr5nJM21+YfD5xDZaCAxo0?=
 =?iso-8859-1?Q?6JvyLnTXXriOYeTuMQoFJuaNdzDUWLQGZAm40MKiICpV3gwAlF1krs9biw?=
 =?iso-8859-1?Q?kIy2Pan7U3GKNoigfu0Yj5q0Zcbtr7pCZtGiZReKgx53HbKOMRdww7BWSf?=
 =?iso-8859-1?Q?mW6HocsI7dPFq7HkVxX1RCToZyTL+OW4O6Or/2ifV0pO1qo65W8XgmcLSa?=
 =?iso-8859-1?Q?67ezjYicwcKXxuLfRXGnsWOBajgXtk0eFUinIjytb02MgYSR3JZ5Mo35Io?=
 =?iso-8859-1?Q?eY67JRZSshLraho2ystZg6t7h+t8TPJTqf2UpOuRyDD4u3NSb0rq41LCQd?=
 =?iso-8859-1?Q?mL0cbp726Cm8YajffDlP1MqA4zD37ZHfdPaF0uJ7Vv2KYroByseMHLZfI7?=
 =?iso-8859-1?Q?ObhIzozCmHibi9l55HOvKnoBp+UcPMI7VkVv/J6podotMeE3cmhMEssjvk?=
 =?iso-8859-1?Q?77aqPBmvcSEa/hOCSsopJFBLM6Ye/wXmlHhIxnSIIUk89fNZ4Oq+Jb6WOy?=
 =?iso-8859-1?Q?9m9SAes19FUiC0Hipox7n5OEMJ92ALz2jd76XzTiC+Utb+sd+RnWIuwCzl?=
 =?iso-8859-1?Q?qVvQ76IsOT8Fp2AAGrcXbGNrLiWeB9nb9DZ/zzrU++uARO2O1T3ciGJQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff81f26-16f9-4503-2f6c-08dd66e03957
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2025 12:18:57.6889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +EpBFH9b59HZ/kIdjopjAZHzzxDsQWb5yKH4qvUJ1mSAEoO9G7FRH44SW7zYTZhpovjvQylx5O7zapceioE1A15fGd/MC4cdFkqrEwQwjQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
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

Hi Ville

> -----Original Message-----
> From: Borah, Chaitanya Kumar
> Sent: Tuesday, March 4, 2025 8:02 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>
> Subject: RE: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT =
DSB
> programming
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, February 28, 2025 10:02 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > Shankar, Uma <uma.shankar@intel.com>
> > Subject: Re: [PATCH 2/2] drm/i915/display: Don't wait for vblank for
> > LUT DSB programming
> >
> > On Tue, Feb 25, 2025 at 11:39:05PM +0530, Chaitanya Kumar Borah wrote:
> > > >From PTL, LUT registers are made double buffered. With this change,
> > > we don't need to wait for vblank to program them. Start DSB1 for
> > > programming them without waiting for vblank.
> > >
> > > Signed-off-by: Chaitanya Kumar Borah
> > > <chaitanya.kumar.borah@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 919e236a9650..9c3fdfcd6759 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7352,6 +7352,7 @@ static void intel_atomic_dsb_finish(struct
> > > intel_atomic_state *state,  {
> > >  	struct intel_crtc_state *new_crtc_state =3D
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > > +	struct intel_display *display =3D to_intel_display(state);
> > >
> > >  	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
> > >  		return;
> > > @@ -7408,7 +7409,8 @@ static void intel_atomic_dsb_finish(struct
> > > intel_atomic_state *state,
> > >
> > >  	if (new_crtc_state->dsb_color_vblank)
> > >  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> > > -				new_crtc_state->dsb_color_vblank, true);
> > > +				new_crtc_state->dsb_color_vblank,
> > > +				HAS_DOUBLE_BUFFERED_LUT(display) ? false
> > : true);
> >
> > Using chaining for this is a bit ugly. GOSUB would seem more appropriat=
e.
> > Here's a quick 1h effort to implement the basics for that (completely
> > untested):
> > https://github.com/vsyrjala/linux.git dsb_gosub
> >
>=20
> Thank you, Ville, for sharing this, I will give it a try.
>=20

While I fix the MMIO path, here is a working implementation of gosub

https://github.com/ckborah/drm-tip-sandbox/tree/db_gamma_v3

Change made on top of patches in [1]

-  Correct head/tail pointer alignment for GOSUB command
-  Add intel_gosub_dsb_finish() to align and flush the GOSUB buffer
-  Add handling of DSB_GOSUB_INT_STATUS

Regards

Chaitanya


[1] https://github.com/vsyrjala/linux.git dsb_gosub

> Regards
>=20
> Chaitanya
>=20
> > >
> > >  	intel_dsb_finish(new_crtc_state->dsb_commit);
> > >  }
> > > --
> > > 2.25.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
