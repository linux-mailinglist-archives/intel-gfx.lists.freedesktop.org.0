Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD6E934760
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 07:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C6E10E523;
	Thu, 18 Jul 2024 05:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnIGrZh/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7D810E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 05:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721279377; x=1752815377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b5aIqPmXGLH2Ge5VIyhBDetRYF53Mu4utUjATP+Wdgg=;
 b=UnIGrZh/wevyolRBpgp2KbCG2+a0/aZrtGeJt3sCM/K1x1m2+I6piEeK
 DiCt18PmiMUe1tGMuqMwBBKWAMFJwB1Y4DGE8lbXLInmYVUXINmE6+OMl
 zK0LzFE9s45ApHkonreX6kId7v6CwG+v2F0VuwiJuAWQbQP7I5rGuKUwq
 lDPTAZpvfd5w3MpxXEqfB64uf3mxhQQrbkSdGIDauB3iyRDNXiEIQVDRL
 m7JE6LfDClTt8cEbYb30agEDHiJmg3wc2blyiBd2kGwafFePDTkowkbMY
 XBIdQCmqIosIJy/6LkxDnX7SzZkT+RtITpUoOIlh6aaUnoRfc8QmvRw14 w==;
X-CSE-ConnectionGUID: DXb349t6SxSRbvaLUzlYyw==
X-CSE-MsgGUID: raLVlWK4T9ii9bBY8P3Ehw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="36356649"
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="36356649"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 22:09:36 -0700
X-CSE-ConnectionGUID: 4KlXu1E+QISdBYQK+7Dvdg==
X-CSE-MsgGUID: 5e6jbLjyQJeaNO1YFgz5+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="51361621"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 22:09:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 22:09:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 22:09:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 22:09:34 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 22:09:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DkBzDcJYQhG8kJklJyuUG7Gp4wu/AeLs25OWBfummXg8X9L1ZnVPHYLRj1jKPaKem/gmTtk28eUIJrq1C06nGPE1z8LTfyoNvJlqip1hojMk4oGGixqd0tniGclfD0I1hu6ovkxzSo0c/YlABh8TZ4U9vshVFSigBcqVR+6NCFSPmjg+KoatMk42Vl3PkkswaATL/tVFA8ZWip8ZFdP6TI1C4puCTWzUt0ftTycgQ3zviHpuanaBIZcXwRo/10+8F+dO3Tq75ffOqv1cmi9Hp3Ic20bYig6BBGIdzpAbsEAhkIzKJNaYEOimUmEa6L3PA7htqW6pTp20hw7QHkXGyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b5aIqPmXGLH2Ge5VIyhBDetRYF53Mu4utUjATP+Wdgg=;
 b=oiLe98clYBCYBCzrV41yyV0w6DR6D0rRReV7vJ66/ooaRJwe7CcZwDyC0u9S1N0YDtF5gi6gmjFl9SWEVnm9rccZxkMEhkDPiYfGCOvE/cJ2IOysTsQS35nzz5TY+nn7403mj8BVt7dcaQGJ3C/Pau+sDAppLycJzpa7HpeO3jvtkQj518OwC+gILQmGR6T7qHhZDokamOm68yKEQCZY0JO3HZ0VxCIB20AFCdiKd8y7uCFBDjUGC9zS17khQeiCtWCGsyky+Fsoa466bNVZkdgW9yvvXJaEliUC4jjMVeo6IieeZn4sXMX6D4B5KlwkSLdbdIcOYoRxxv1DF05K1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB8263.namprd11.prod.outlook.com (2603:10b6:806:26d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Thu, 18 Jul
 2024 05:09:32 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7784.016; Thu, 18 Jul 2024
 05:09:31 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand
 <david@redhat.com>
CC: "peili.dev@gmail.com" <peili.dev@gmail.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: Regression on linux-next (next-20240712)
Thread-Topic: Regression on linux-next (next-20240712)
Thread-Index: AdrXQO88VUzsZaUtRaC0awT9alv5UgA96sYAABLXzgAAEye7cA==
Date: Thu, 18 Jul 2024 05:09:31 +0000
Message-ID: <SJ1PR11MB612934133B2E0558949BBC29B9AC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129A77D51B206E29E242B95B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <e3c17dad-a93f-4885-8f14-69874be76482@redhat.com>
 <20240717130030.09a778a38aae6a23a193b357@linux-foundation.org>
In-Reply-To: <20240717130030.09a778a38aae6a23a193b357@linux-foundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SN7PR11MB8263:EE_
x-ms-office365-filtering-correlation-id: f9e6bb2c-b791-451f-dfdb-08dca6e7ced3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wt+D/4Ayrntegsrs0yvkKi7zdbPmj1itZ/h5mwrVGRTb1evWN4GG3Gc4Ky+q?=
 =?us-ascii?Q?6fCEkBsjvClpdlu4FsahXemtDN4VxPx2eEOdHd1y1lN/wn7B6CGQLelrO1fn?=
 =?us-ascii?Q?Ewip7ugYex5f5dG99WlrycL9WpTa2ahpKGGKSpqy7bUs+cHfuEoIBlQqONkU?=
 =?us-ascii?Q?KTZyyYKfQ7PYw7g5xM3pVowWUA2CxWokX1QFpAxhawujQaiuL0L2f3aS87UJ?=
 =?us-ascii?Q?3ZdbTXa0K39sONyvaD+kjnuu/rqKIXXhyjjBEtJQLTC8jHpds4M0YkYb9DIm?=
 =?us-ascii?Q?po5KxpKExurTr1YvGe5HX8v9cxu1FzaKbSMDXQsCCggziEdUtzcTZBrenMeQ?=
 =?us-ascii?Q?5iWNNoyxkjrzJ2YDL0GayZ7LbEAvgTsubcvD3+tHQjEpKYrMl8FCj76R8qeL?=
 =?us-ascii?Q?CcGvCiSEc/HgrE4i9sfDDaaHln1WxOLnbL2NunsmtBytg8K71uI6BZuk4XeW?=
 =?us-ascii?Q?TzQBJXhQ7dvYVR8zqpEZDCkI6+s3ILRmzA7fpcOip7xGB026SDgf0HQxG34L?=
 =?us-ascii?Q?zja7rY1g9LrOLQIOJn24RFgMladXMnH3KhKNviB76bK1V6JDzgv6iYAVMAty?=
 =?us-ascii?Q?+JOyulCOiI+LoPUs6rZGoBhLgYU8a6wC95CIN2D/YKD5880DPPv4256eHvtg?=
 =?us-ascii?Q?dsOExtUaFg8h2xZENGzXooddNFN3nI3O6KDoGwiJizd/7+k37jvEXYBkQM1H?=
 =?us-ascii?Q?ZcmQNO5CK6BcJ4mA/OgS2lMF2Zsek5WsYGt3WvyiOMmPh/qk+bCHjyD5tbD3?=
 =?us-ascii?Q?pGK2EwhSqsXiSZxnzCLquhmVBs1omNxZkw9VtKO18n+2Lv4Cy4riDBvI3nom?=
 =?us-ascii?Q?cUmF6fNyb1NaMJGQoI+iHXZqff+gM1IkEsYlbgSL8m/x3tj9x5qCJWWdx/yQ?=
 =?us-ascii?Q?l1Ijns7xDVn+W9JMnAjLZNwIUO2ky+qPEwIjn3YMPGVrjv1YJXGXZ/NjOGaC?=
 =?us-ascii?Q?TKafRgt3LUrxTZG50T9NlWcoeKBuvkrQFloMFsMkmNxjQG35ySHwcJ/DCbpG?=
 =?us-ascii?Q?0ssPUPBLzjuxgbeCULLDuKsIhSxNDK+uAr0/uuGEpoHUc14eyemlY/7tA2DZ?=
 =?us-ascii?Q?wBISl94/k9tALTuqEI7eShL0TFUebvOu7jif5Vz+I1BnscFcvwCLd22KiBU8?=
 =?us-ascii?Q?WwjpPIYnIOlP1K1qYdl2Gci/DYqRFxCdSvqZegNt2jZgwMkjjSBvU7K235LS?=
 =?us-ascii?Q?Lfp124GuqGq8YL4SVNBBgeFnZcLwCZd+ji7RH3bI9CF76SrRa1UbiHo0Xyjo?=
 =?us-ascii?Q?rPX9nPHTTrmcNH3K/S9ZqxA2cgSWbRKHoyJwa0XnIm9EwGDuCBwhoFD9bXEI?=
 =?us-ascii?Q?1688anTz9idyp+xF/hVxWtC0/IoNj2/WzhmwEPqhkgQlCejqg6yTOu9mIci1?=
 =?us-ascii?Q?3OPMv4fJCtQMP57vcZQd1Z2MlUpnMWuWuWq86yMZ2wU/I0jECw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OfJ37DDfU5w+peO0fveahXV9tkJtWbZnNM1514JORcIn15nkXdo2PMXMrVVW?=
 =?us-ascii?Q?nM57UJSEae1Uq8XYCwxswWRWMk0IVf31lc4gWhRmRqB3ZauSqXvKKI9NILHd?=
 =?us-ascii?Q?bJgAbpJBpzOw/M26RtHu208M+CBtezCNfh+WLk8OVJ5IIPCR6KuEzroODWec?=
 =?us-ascii?Q?9+2FNKYm281ZrbKYqQENAp3u6AQj94tjSdr+x34ZIyQRC6/9kERfjkY6mQGn?=
 =?us-ascii?Q?avBS4AcWdPGV9Q8IJFbDDd2piu9crrXFBQn6vLhlbpXT5bYM9YkZY62qm060?=
 =?us-ascii?Q?1RTH/dzGK8+arq4s3X2fYwcXIed0+8ANwUhli26hnFjM8ost1vuQyLsEe3sQ?=
 =?us-ascii?Q?UE4DxjUHw8gWiWPgrHrueDl4eEk+kxClwl4twCyWSvlVPj3vKvW+QlqkQf4q?=
 =?us-ascii?Q?IEn/5B0KbdJL2R6Ga5SUl3zQZeH87Dyi5FqazFt+rRFNZA21oFtcjbLfpprx?=
 =?us-ascii?Q?VFP38+3f/vJbU8NalRL6TNl91nOlr70xXrJm1qx2ANYVPk6DNg3s/4XnUw31?=
 =?us-ascii?Q?sEeba3mu8+SE7a+aOc5mMvm1s/qneXEEwOqja1EM/lBIUWh1GSiJZIl/M5bv?=
 =?us-ascii?Q?QwE7DkaFZuTJs2QIwwGxMBlkY2+AfBfJoys5w19wqklMveLOwUP7pqckzY7A?=
 =?us-ascii?Q?8QVAxbgm5w6XSt2SoF/Pm3jPkj12/5yA1MNsET/erbjZyv74YyNlH+T7Ss4P?=
 =?us-ascii?Q?yg3yw6RajlEBPxm2JHOUROOoOagbzyBs6yoZQWf1JF2Ok7YftoI60tLOpq6S?=
 =?us-ascii?Q?Tk7mu5rLri0iv24FhI/j4GCdNEYrD2tLyEUfoyOnytmqspWsXXsGKQRtDaOx?=
 =?us-ascii?Q?yKzpPhY+iXoWz84LiOmBuqxTfcEqKWobt/9SiGsWNTxLV8+1PFviVO7BDwp4?=
 =?us-ascii?Q?fyI5XiZThSVhkc8CcV+WGre8xqIga79bx5hO9BQQ6xZVMYqmnV32+IqDbi2j?=
 =?us-ascii?Q?LujOF0UHgypdPWjZH8ccK7PYYhqV/VQeyyaCvPEtVkfOotnVw1pCygblBFIi?=
 =?us-ascii?Q?9MG8U9It43SO8uXlQVQu3LOMkxKw3bh3jtIeUI3QuMjAcdwShgzq1w4/Ffr7?=
 =?us-ascii?Q?gfR2Z8xpAMcDsZ10PQGyPp4WB4w2SNRWj+uasivOdGiTnRSBa0/XNIXZz6ZK?=
 =?us-ascii?Q?IACfvcs4OObrgVsBrtrkkesqR9CHsE81kiStCjlCcgB1Rw80z8bYy22SDwYy?=
 =?us-ascii?Q?yJV0gOZecj3geJfs3hwBkOp2doROY35CWhc9qAg/3MlVO+TNfhimOtVcKqJN?=
 =?us-ascii?Q?fQy6TCDPTIVDkY2NdraPTV6Ep4G0p1shVJAig3rQpNc0QNg/0lMdX/VGIR5O?=
 =?us-ascii?Q?AOqAdmUioajz07/F4pnNctpSxrR3rJ0lEn29taw6zNl00L3ZYuYL6utXvYGL?=
 =?us-ascii?Q?L5LVes+xDv5ZCSE5UotULQKBJQHwlWzMr+t5G7FdmfkWUWXbRQrhn3/Pu8kr?=
 =?us-ascii?Q?nUAPp+q9iAeeD7/zZgdLJpdhr25+qqfO5Iep1iMPVXP+vAkd1r5JjkyRTWp9?=
 =?us-ascii?Q?LqtkQ13X/VFe0Wk0zQldTTnd/5feox+gsQLbHHbkBwOMwOZ+4UjPn50qIsOw?=
 =?us-ascii?Q?mCTowfMxrqGLIew98ypynaQInAXotH/9A+m3rvpzJ3uuAzLuO9THme+lgw47?=
 =?us-ascii?Q?lg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e6bb2c-b791-451f-dfdb-08dca6e7ced3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2024 05:09:31.7371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQXgnukmx6ZGeyq6TTOslXeZrUTpr8gxKgBy7l2SnnQ2aiufEZIms2RGHpVKMFjYvhwzqAag88rfqtfp60eTOEpqACGoiTy0XoiEEl0d1Mc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8263
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
> From: Andrew Morton <akpm@linux-foundation.org>
> Sent: Thursday, July 18, 2024 1:31 AM
> To: David Hildenbrand <david@redhat.com>
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> peili.dev@gmail.com; Nikula, Jani <jani.nikula@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; intel-gfx@lists.freedesktop.org; linux-
> mm@kvack.org; linux-kernel@vger.kernel.org
> Subject: Re: Regression on linux-next (next-20240712)
>=20
> On Wed, 17 Jul 2024 13:00:58 +0200 David Hildenbrand <david@redhat.com>
> wrote:
>=20
> > > Could you please check why the patch causes this regression and provi=
de
> a fix if necessary?
> >
> > This is know.
> >
> > There is a discussion along the original patch [1] on how to do it
> > differently. But likely we'll tackle it differently [2]. So this patch
> > should be dropped for -- which I think already happened because I
> > cannot spot that patch in mm-unstable anymore.
>=20
> Yes, I dropped it on July 15.

Thank you. Our CI runs seems to have recovered from the regression.

Regards

Chaitanya
