Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEC0401638
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 08:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95BC89919;
	Mon,  6 Sep 2021 06:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BCF89919
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 06:11:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="207010943"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="207010943"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2021 23:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="604496823"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2021 23:11:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 5 Sep 2021 23:11:15 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 5 Sep 2021 23:11:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 5 Sep 2021 23:11:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 5 Sep 2021 23:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROZoQCdMRBq80xAIdL7FVdpnaMVY912Sx/cLrHvZKEQ74fL4SXGuTZQnHo8lkhsZdra2t0b5SFPeS5Ec3+wbMEzU0QkXSLh+dsbF3kBtdFiAaFhoY1ZCtfizlQEwRJ/cBhSYhb2ecm+qZD8yPXj4y42r1MrsRSOFdyb+HkZpDfRQGYj8izfc1Cvr/VrMRbyjTMRya8JMMTFEIQM7uhGfgRFaGJLPIpU5UIfwsdhkDfEh7yciIfazw1dTPucy0hQcy1h7RIoWG6wJBkahe/JAA09SkVi/w/MC0V/LoTRc4KpqMKEB+TfVrnlY1w6/xgVlUCUFfqhPIrBhQeokLttwrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=W/48V2Z26mcyf+g+xReiVd0zDdcxZEM1TXAPaN79Do0=;
 b=SXSiNQ+GJawcxnj7J+MfCp96nbxUGdCWpywVQk4ZHZzKxwQZYXKq5BuvIF3yxgSvhTbY6479FI7R0v8SMTsIDK0fUsw0SULAPdqTzLthJTsmH8j7dykCDTgHW9ZvubO1O8ZVVNyDtULxCe+0ArycoSdUuNyXFRvLniJQzzm6zutmlnsKw0mfjA7RxjuioESLv0YXp+S4MJyiohmVFJ7H9zJeApGw5CplSoUGSjofS8B3PhKvRnN3Npp8WJJWFWqxiyLaEnNlwXdV/VSmeMu5+xZYK3430GB3EmbBr21P5nk2PbLnHb4k7EbIFtRAQirspf2BKYu+jIcKOKL+Bx+doA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/48V2Z26mcyf+g+xReiVd0zDdcxZEM1TXAPaN79Do0=;
 b=RSqb2xHElcVSHtNUD/AXyT3wSNnN+VdSsWXiDR7lyAXK/80b8N5Kapa1oUWngAsSyw+uomaYPs6AyKBdaaSo+qA3yGODBIyPxuqlA9hPF9bWATTo4fWZD4oahzHB9owPL1ip+XQEGnDtu8lLsSgxuQDPxM8P8YEaiSU/WZuzUZ0=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.25; Mon, 6 Sep
 2021 06:11:12 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f%7]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 06:11:12 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>, "Pandey, Hariom"
 <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZ0sW59N9gqV+40m1IXOqKgMck6uPoZGAgAFkdeCAACAYAIAAAGkwgAABwLCABdNDcA==
Date: Mon, 6 Sep 2021 06:11:12 +0000
Message-ID: <SN6PR11MB3421A8F621EA25C89AFD414DDFD29@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YS+EuzTIv5YWfzIL@intel.com>
 <SN6PR11MB3421B0900C9A9770B19367F5DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YTDKrJTd6VnV+08K@intel.com>
 <SN6PR11MB3421DB31729DE8DA0458D175DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB34212E5091E6614477C07C00DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB34212E5091E6614477C07C00DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b5c7c29-0722-47ec-47f2-08d970fd20aa
x-ms-traffictypediagnostic: SA2PR11MB4828:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB482879021DF2851EB1FE7AECDFD29@SA2PR11MB4828.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Q9cL15SrwVV7E1sXAaDnh3ZuPQSl2FR9vNVoK5luqJTjVeOBZ1gRBkted1zMh53STEbXnS86KOtID8DvloCAOHSaA0zAf0KIXEAn5KyjQSiSqgSP52cp1TkisXVQV3x32FxtLE5obw0ER0qjrNLzZfWi6vHmtXOWJXKZiVOvnhp79NINgitXsQ3SfrlyyEP7sM4vRGySCGAgqojo5ENSsYVY2hmgLXVNRJJuc55bPxaAqGVD4NX4+Pcnql8pJVft8ehYP446A2H4Png6lx07acvr5EDPmXmiIAG7uw0adDNS+1ciwzJG4s/fsDJt35GCNscshRArIf1YaIt/ZmU6Sm81kLt/yxjvhMDBSZsFnOW6thcScQyg+kbuNu066uLhgzmpVt7CqI1+ET11B/CvqYMpYVP+qcbqAYcvs2/BgE7TuvKVNK8tpgAh2PnMk/D32PtFG7/KDqhzU/Faaw0Zf/zfEktabxAOXZac3raREKaYjkQULvyYZ8XZS/vj/9kZENwLG5Y871rm5dUIBWMAMWjcdNrS6bXrUAqUXDJWBV9Ky4t2LXOSZOxtvuTmZOWp6JLxocukGZVqSh2AGnUNaMUb7O8XYA4hr2FCSiVNSASKn+RYpZPEA2XMKg7LXTUBaZBBfurA7OCTmd+PpHkVDGojXYl/Z8LnAXNZRgDJH9mK4h2k0G9YqmHj94yenNXRzkc3T9b5copXjEtpumj/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(52536014)(54906003)(86362001)(55016002)(122000001)(9686003)(66574015)(33656002)(71200400001)(53546011)(6916009)(8676002)(83380400001)(38070700005)(6506007)(316002)(66476007)(478600001)(5660300002)(4326008)(26005)(66556008)(8936002)(186003)(66446008)(2906002)(66946007)(7696005)(38100700002)(76116006)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1u5r/JDYRol9YCN1px8uSVG8VZC8Z9JmbMYQG8mxpqNkwCyx62K6NuBSRL?=
 =?iso-8859-1?Q?1d6r3+vhNm9IV3JAlvJzWCRHYyHHK+Iz9iLbZlWoIRtFmdQhi3SQ1PYtZL?=
 =?iso-8859-1?Q?pNWyLW3YP8KKzdbPpI3SFrKNbYJHiB4DSU1rnqk194dkfbTPGf4gqNYeOy?=
 =?iso-8859-1?Q?gkWZIZPIKnmQT0rPghbz4axpqDtNgw4qHIGY4mEuO57Xz8XaDdzWSd1muz?=
 =?iso-8859-1?Q?JRS5Wa8//YvLTEO065sB1KWYyCwLwQehbLPuz9mv28hk7L9NZkztYTaN0P?=
 =?iso-8859-1?Q?tXgfCkzGHMo8rCHXjVpWJoNbdy/sprswX/SD1hHC9F/v3Uv6Fe4XkgN9J5?=
 =?iso-8859-1?Q?9vkYmfD/qtecIuZHc+/4DIrOfbU7I8Lx3fMhUwR9oaeWVP8jBC0YRGG0qS?=
 =?iso-8859-1?Q?VjjR5tzOwKX3FHuqAbOh9hQUgv4607U/+9CVvU5h/OtUxgh7So0fTs10xG?=
 =?iso-8859-1?Q?dIMx/YOJYQnB3uVTHImGff3b9zp+fzGl9PTFF6CScF+r4+Q0vvetRlvZar?=
 =?iso-8859-1?Q?QI4FHz+c7ablIkIeFSlZaHMwArRWIRflpFgB74mfhrVhsahMXQB+6VCpSB?=
 =?iso-8859-1?Q?iUOBxNYHHnnmLAZWkf9qAJdhW91STiMQosgPoNv4kbhV34sm9bR8jZiUiN?=
 =?iso-8859-1?Q?CKna7mQ6tcMHWuI/Dn05tZoApMl+wrrK8fKKKsnxSZBkOIlnJx3Iecd+b8?=
 =?iso-8859-1?Q?QVzpt/srOijntg78raZ/AyeQ2u31tgEHGSfMMV51lzF5EAcBRrGHzwJ6Q3?=
 =?iso-8859-1?Q?IhZWRPy+MnJkHkMUQTp5YJ2Wq/2r+Q3jQ0LZtRo0m/jf/ixScb7HkoFrTs?=
 =?iso-8859-1?Q?qDWyn5IKdRMVb64jcyyax5aFn8xm/bpnfu/PO79aFw+h6l8Hs6GobSqBZs?=
 =?iso-8859-1?Q?JkdE9T9uMU33OKXwFXhGNYnqsJZpWG8JUMo7ydidkExX7eFR0V+uMh4ZjO?=
 =?iso-8859-1?Q?Pr/puBJ35EcxfUrd/ALq7+tZEsMw3p2UVB8a/X+TMl37VwLYCKFqjY99l6?=
 =?iso-8859-1?Q?04Y2FbYxmxZSQMFo5PQD+6yczUvhmVLKRwwQkeaVawGp25pQMZOJSW3lwU?=
 =?iso-8859-1?Q?P9KMj26wiXiWXQgGOoP39ocPsbQe3GjhE9F/c6zs8xsMlFgL8UaUzRJBEF?=
 =?iso-8859-1?Q?ZQ6BQQP4igk5515ygbRaVtIelUl4XZQreCo6myCrWQoiht7ZZf6Qq0eHA0?=
 =?iso-8859-1?Q?A7F4q9M2AZvOuzDHRHvBkFXocrl8e/K4WFdp/HfdTpbpC7ML20q60v8bw8?=
 =?iso-8859-1?Q?nopFh1HK8QMdOtbyum09fh7JpWlIkQLXhnPaojFSwaxjiTQrJap3mvlyhL?=
 =?iso-8859-1?Q?7vvoFCHs4JmL9omck5lKnCT+ZB9UbjbiA1Omuo2lYcSnRGfqFqMSvEg/br?=
 =?iso-8859-1?Q?I8xQI530uG?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b5c7c29-0722-47ec-47f2-08d970fd20aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2021 06:11:12.5789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vlz+9WvjrERRf8Fg2yLVB6SWc6DupdSGSGJWJrjK3VvdOxcPxtpSvMpBSDBnqV3Jj3QDWwgWfXJALer7+icSYlfOHkzHe6Nd7IZ7F3o4PhUGB5ZfxgR0HPLmPmpHLF61P+dL25bT18WFxVK10EU3fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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

Hi Ville/Jose,

I hope you both discussed as in next version I will incorporate all changes=
 as per Ville's final suggestion. Please let me know if you guys think othe=
rwise.

Thanks,
Tejas

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 02 September 2021 18:37
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> Cc: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>; =
Souza,
> Jose <jose.souza@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>
> Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
>=20
> + Hariom
>=20
> > -----Original Message-----
> > From: Surendrakumar Upadhyay, TejaskumarX
> > Sent: 02 September 2021 18:34
> > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Souza, Jose
> > <jose.souza@intel.com>
> > Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > clock gating in HDR mode
> >
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: 02 September 2021 18:29
> > > To: Surendrakumar Upadhyay, TejaskumarX
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > clock gating in HDR mode
> > >
> > > On Thu, Sep 02, 2021 at 11:07:06AM +0000, Surendrakumar Upadhyay,
> > > TejaskumarX wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: 01 September 2021 19:19
> > > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable
> > > > > cursor clock gating in HDR mode
> > > > >
> > > > > On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrote:
> > > > > > Display underrun in HDR mode when cursor is enabled.
> > > > > > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > > > > > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> > > > > >
> > > > > > Bspec : 33451
> > > > > >
> > > > > > Changes since V3:
> > > > > > 	- Disable WA when not in HDR mode or cursor plane not
> active - Ville
> > > > > > 	- Extract required args from crtc_state - Ville
> > > > > > 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> > > > > > 	- Tested with HDR video as well full setmode, WA applies and
> > > > > disables
> > > > > > Changes since V2:
> > > > > >         - Made it general gen11 WA
> > > > > >         - Removed WA needed check
> > > > > >         - Added cursor plane active check
> > > > > >         - Once WA enable, software will not disable Changes sin=
ce V1:
> > > > > >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> > > > > >
> > > > > > Cc: Souza Jose <jose.souza@intel.com>
> > > > > > Signed-off-by: Tejas Upadhyay
> > > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 27
> > > ++++++++++++++++++++
> > > > > >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> > > > > >  2 files changed, 32 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > index 6be1b31af07b..e1ea03b918df 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -358,6 +358,13 @@ static void intel_update_czclk(struct
> > > > > drm_i915_private *dev_priv)
> > > > > >  		dev_priv->czclk_freq);
> > > > > >  }
> > > > > >
> > > > > > +static bool
> > > > > > +is_hdr_mode(const struct intel_crtc_state *crtc_state) {
> > > > > > +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
> > > > > > +		BIT(PLANE_CURSOR))) =3D=3D 0;
> > > > > > +}
> > > > >
> > > > > Please use this in bdw_set_pipemisc() as well. This could be a
> > > > > separate prep patch actually.
> > > > >
> > > > > > +
> > > > > >  /* WA Display #0827: Gen9:all */  static void
> > > > > > skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe,
> > > > > > bool
> > > > > > enable) @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct
> > > > > drm_i915_private *dev_priv, enum pipe pipe,
> > > > > >  		               intel_de_read(dev_priv,
> > > > > > CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);  }
> > > > > >
> > > > > > +/* Wa_1604331009:icl,jsl,ehl */
> > > > > > +	static void
> > > > > > +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_sta=
te) {
> > > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.cr=
tc);
> > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev)=
;
> > > > > > +
> > > > > > +	if (is_hdr_mode(crtc_state) &&
> > > > > > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> > > > > > +	    IS_GEN(dev_priv, 11))
> > > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> > >pipe),
> > > > > > +			     CURSOR_GATING_DIS,
> > CURSOR_GATING_DIS);
> > > > > > +	else
> > > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> > >pipe),
> > > > > > +			     CURSOR_GATING_DIS, 0); }
> > > > > > +
> > > > > >  static bool
> > > > > >  is_trans_port_sync_slave(const struct intel_crtc_state
> > > > > > *crtc_state) { @@ -2939,6 +2963,9 @@ static void
> > > > > > intel_pre_plane_update(struct intel_atomic_state *state,
> > > > > >  	    needs_scalerclk_wa(new_crtc_state))
> > > > > >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> > > > > >
> > > > > > +	/* Wa_1604331009:icl,jsl,ehl */
> > > > > > +	icl_wa_cursorclkgating(new_crtc_state);
> > > > >
> > > > > This looks a bit wrong. We shouldn't turn the clock gating back
> > > > > on until after HDR mode has been disabled.
> > > > >
> > > > > So please model this after skl_wa_827() and
> > > > > icl_wa_scalerclkgating() so that
> > > > > a) the ordering is correct, and b) the code between all three
> > > > > w/as looks consistent.
> > > >
> > > > I did not get what you are suggesting here. Can you please put psud=
o?
> > > > Currently as far as I see icl_wa_cursorclkgating is already
> > > > modelled after
> > > skl_wa_827() and icl_wa_scalerclkgating(). Are referring same Or
> > > something else?
> > >
> > > It should look something like:
> > >
> > > intel_pre_plane_update()
> > > {
> > > 	if (!needs_cursorclk_wa(old_crtc_state) &&
> > > 	    needs_cursorclk_wa(new_crtc_state))
> > > 		icl_wa_cursorclkgating(..., true); }
> > >
> > > intel_post_plane_update()
> > > {
> > > 	if (needs_cursorclk_wa(old_crtc_state) &&
> > > 	    !needs_cursorclk_wa(new_crtc_state))
> > > 		icl_wa_cursorclkgating(..., false); }
> > >
> >
> > Tejas : In the previous version it was done this way only. But after
> > review comments from Jose I had to change it. See "Changes since V2"
> > section. Also you can check in previous versions of patch.
> >
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
