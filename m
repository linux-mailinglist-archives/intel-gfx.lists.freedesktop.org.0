Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C842CF37BD
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D60210E0A2;
	Mon,  5 Jan 2026 12:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FaGW7Osj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FCC810E0A2;
 Mon,  5 Jan 2026 12:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767615591; x=1799151591;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cQg6J3JPiOb9jwBruWkyXwzCGbf5kcx0QaIF+n9EJto=;
 b=FaGW7OsjsKo27cXDcWtZHNkfsMqVnfA87nKO2d9QKQai9lvbY8jQgDFX
 SEnmen3IE5k1vTUByLjPi3wlPMI9tuaSQce0qIwf6ooh0fqQsWIrQhbQW
 BlcXgozPm5dYRpHokBesgnqiPRIPu0x070b3e79N3XwoX0cjzj1GrqCjT
 acN18uZjZ2lx4ya5vxpPG4dTeurRAnAZvU5dPThIMNYZeTWmRtohbbDV+
 kdyIk/n4rvXOUEfig57VlrU2xrcVmso46txeQAknFLvaUmPsaYUh+Ccr3
 YMA+4eVzV92UDLwggArMdodyNoal/ADnU6N9tXuSUOkU/VdNzMRIKAfqp Q==;
X-CSE-ConnectionGUID: BS0+kB0lRGi/PiiYiR2dKw==
X-CSE-MsgGUID: IQ+n6sBjSGyfy27fOrWyzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="80347395"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="80347395"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:19:50 -0800
X-CSE-ConnectionGUID: qlLmVhr3RKaA+NpUOcZb5A==
X-CSE-MsgGUID: m3w7f2mQTzeJsd2zbkwFeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202395456"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:19:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 04:19:50 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 04:19:50 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 04:19:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fIWqO5WUTKgNm7AB1TY5nlZjrE0bVBAlyOdmHcCdRPZKxvkfyNMEWp1U33MAgx5oXUVWb6T68WsE+RQaoEZ4gL+2q4slQurOU9SQwtG4n7p9FPeND8PjethTducvOptuK74b6+K21cHps3Iz3Hv2EML7i7iuGsB9yEgpep05bEQGDacCz3Tx9H62vLU95AFA/AdqZrEZy4OdXxLeAhxUV0NHAbkuaXBmWksgHy6kfxAsAL02SR6gdmyYGi1WW6cAGE+fjL9mBWXmI9ICZkUTRQ+yl1PtVS4gF+n0gOyiyvmfO4Ld2GhKjLBJtZWtBBa3wkRGAdw7byTSErh9Kycpkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6WETLexmGFE+qKy4HvOPQxGm+DDCR34psxu0CXqPOA=;
 b=Eo+eRXPoCqO+RJ8191p8iDzb1JQ2fnVn5KBJgNNusRWkcaz+o1s9lYPkhjIBI9hjZgEIqYb54cNL7CbNGLhhNZl7gBrFsFCTWUZxuPyk4cYPPBcifP4+QdjLLwdXL2zpi9H9mAy2Yso8lhpe8H0ubhgOOdpSAlmaUu0BFGM93ylFBqTxpUPscaljJjq6V+hDlC6wv95rwwb7wl8wTHyeeE/0T55qxB9brXsAVBPkK9MU25IIrRSKbCQdBI+AhRUuRAmDYUFL3/NpQpYkrqZboowxBYye1rzuErrNxa2ktmSjN77f0YV31c2pIizDPDzzZaZe6KYEzUD2fVpey+zoMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BL1PR11MB5269.namprd11.prod.outlook.com (2603:10b6:208:310::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 12:19:48 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%6]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 12:19:48 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Disable casf with joiner
Thread-Topic: [PATCH] drm/i915/display: Disable casf with joiner
Thread-Index: AQHcfiSK0xMgKdGdnk2EkIKTSpD/v7VDTYgAgAAw3KA=
Date: Mon, 5 Jan 2026 12:19:48 +0000
Message-ID: <IA1PR11MB646738CA1928AB611EC94444E386A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260105091202.203926-1-nemesa.garg@intel.com>
 <d3e9a0decf1667eff15ab8d663a61a146ae13f02@intel.com>
In-Reply-To: <d3e9a0decf1667eff15ab8d663a61a146ae13f02@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BL1PR11MB5269:EE_
x-ms-office365-filtering-correlation-id: a15a633d-852e-42cb-3ef3-08de4c54b83b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pl7roDV8z3yysjVGZNFc9E6uEv+Q1C7JTXSdLFooVYz8Th9A+VL6oS6IwulL?=
 =?us-ascii?Q?2mmwGZzCdSgIig9ZDK0JJc2/hoe91mQKk7+CuRHj6JndFTxYnioUufW7mvMd?=
 =?us-ascii?Q?NVo29+KLNALXeLtphHZnuzIxXwupcacwhe3lf1mLknDCuIfrY8zeyPbqgBgB?=
 =?us-ascii?Q?c2UIP9xLqj8rI83P3zZgqdB3hAf4IWxaw5j3u4QOpUQVvISQ1WFDmniJGaH7?=
 =?us-ascii?Q?QTqQ3+5FrP+yLYAPUqrfLNLmYhdJ6L4HB6KM0H4QFL7qNrGfA6j1vjWFRALl?=
 =?us-ascii?Q?0Txz1ZGU5LJ7Eaw/5QDdqTb0CDlZGR6bqwEcYqXIEDwxaiVG2Q8EzndVPCXo?=
 =?us-ascii?Q?29qZaOsFohI3haXHXIB/f3sp2Siu5HKXcI/52VYP6AkFZXqaOUX4XDisojR6?=
 =?us-ascii?Q?x4e5iHrvROBmFuUtkfNCMcWBx5Fkyk7ULWf5Ci5JKTxVi4veOSR0tI9L6WJY?=
 =?us-ascii?Q?S+L3YV0rw8HxgoHtsHzU5kbxkyy6b5Hzgp03htM5rEzuGQsi8yNvV/iZ4EJ8?=
 =?us-ascii?Q?DHALLRvdE9j8dtW5nD7ypUkrjh0fftjWL5O4QoZW2gbVMZ5K7zUbJa6zavxd?=
 =?us-ascii?Q?pu5NgnKynBnll6dINRc8ZEVbEYOaqRrEMV0AR/PXa84e4wLnw0XIkgoZpvPJ?=
 =?us-ascii?Q?lYdLSDEKk8Z6La6WvlHGWQ7TD0UFWzcf3TPwsahnCBkyXYo7WZDS7wdVfJ/E?=
 =?us-ascii?Q?TD92m217fALCxo/0MLLFi4rX5y1rkn8iX9EifZDzdDpbbiWxoKPpsMZ/V1eR?=
 =?us-ascii?Q?k/EccRD3yvPk5VJINe4ZxZx/w6VD/EmG8oSi1KDDEe4988mjU4vHlI9Gv/4y?=
 =?us-ascii?Q?kdh8cWYUTaST0JeRa6Aky+6dTPnTpK8Ktd9ii6Az1x2aUGM+FvqeicOS4ZAM?=
 =?us-ascii?Q?DAR8xEfMSU+XV+Qy+RZOc+cTZvJahab/X+vuKrFugPK+g26LUrsKAZ/UOQjc?=
 =?us-ascii?Q?bYVd+/kKLEB51NyyLyDJUAy/K6gMY9l/uuBENHw62Ub1TEObYXYtzP/OLwh8?=
 =?us-ascii?Q?O7sLd6/9jQSheRqLOLbYQne6pRCJ6iEE2D1muvwyYLl0u9bYPEnBFTVJvOND?=
 =?us-ascii?Q?gesEin6wxxSS1AFoNiXCJYP/xp1QeZI+T3LDSgV0jn1WkOdJBO6jOC2vtAnI?=
 =?us-ascii?Q?8wiEUA/q0vqMWflMYhXL+232pMTfbSs+rKzF6TeRv7VJ7LwZB8PEfAa4jDTZ?=
 =?us-ascii?Q?kAIOsVgAB/Dvky1vMHLHziPiafxr2c4MRwdsXABD+qNW3+1ZZPOEAss/EQLo?=
 =?us-ascii?Q?ND0ZDzud/aQOOsCVL+jnhvGsF8NHzd2RfwyywEB2rDP5lnacvmyXMhbI207h?=
 =?us-ascii?Q?f91a/MY9JaXGtPzVnm7NOL1xBEhmH1iEBFjLl6m6lGFo1pFFiWX47N6PFFWp?=
 =?us-ascii?Q?xnGVT4z0/hk0zKoMZ9Dcj66s2Kgs8NBA4cR/+Z3OVWKI7oRubRAocnUdh8yS?=
 =?us-ascii?Q?KFNYc3DSx0d3vfGfdsRqwa1jck8p05NXxu8GWm1+fB2YLjxykZ48UOZtRhvD?=
 =?us-ascii?Q?s2crIhp4ZtIMMk16fv/My2VJ8oENFlnf2y64?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?65Zxu+ixCIHDujLCvVmSCiinH+fDUleIk5N4v1E/wxRFVIz1MGNY/zWS8+VR?=
 =?us-ascii?Q?OU2v1Pvq59Q/PUqKEog0AFLdidsE4KEPJ1Vb6DQy3w+eYM3R++PIQf5MF5xh?=
 =?us-ascii?Q?Vxfl/RhoBu7KdPjglqm6KfM9mItBj5a/yuNW63UElAvCDVx0bsQyIjObfc64?=
 =?us-ascii?Q?sh0VcbnqvqxrV5KNBxuEI1oxL9AayBihLXchSBumwSbwTXyUfarzQQUzP9av?=
 =?us-ascii?Q?IXiiMDZFd+CZuyVsB1Dy3LF0H4tHHROW2wx89uuUGdQrnzJru3NLXeoaQnpj?=
 =?us-ascii?Q?kb18+KdL/RjjgT69EdsWXoYKArwUE2ykyQiWgBJSh3D+kAWtH9leyCp4ag6s?=
 =?us-ascii?Q?UI087sB5uW3miVNb2ScQbc7ObOSq59XSjRImMzbhKOV+oIujHiG0dFTDBkZL?=
 =?us-ascii?Q?16JHNTNdW32eghBgM3jWZ9hoaoxn0g7tFZtMBu/Ukoqa53jwAplgghU6sEKn?=
 =?us-ascii?Q?/aojlL7asFw6Ra5h/RV7prH5dniyldKh4q2/pc9+182P4nIAWE7heNlqmwJj?=
 =?us-ascii?Q?se9VVWKRFwZ7DshoAk8DHYYC2j3Fc18dODUpq6wCYui2M95zBOrD3iu7ZMeK?=
 =?us-ascii?Q?lonpxfxD+LP0mW8Jqg2dPYUGcQLHRcw4iQ9+VXQWsenIpOlH4iunGijnXZ46?=
 =?us-ascii?Q?MDudaU2QVwqJgpKXXNZVUP/yfzk2J5DuenSI7QhCT0BsPG/NtSpqZQGtX0mq?=
 =?us-ascii?Q?ZI89jlPlGwTtEjG1elNd/nRSvJ1AfiKxfj8CQNuaTPS+kan5nskNZTm8zC8+?=
 =?us-ascii?Q?LxlcgOWRAt2+NWuis5RmSUhULDkrVCj5+RMpMPzAjPxDRjHNcxxHyC6+fku3?=
 =?us-ascii?Q?bnLPkG1xwEu6QjeDhL6qsoXtyPdKe0YVc92DfZS8oJqQm6SFDmmATsVDil5g?=
 =?us-ascii?Q?FfBlvD6qVzHezVq80+10RmZiTgfLDKv6qGwTMgs0Bqaj7fzralI8G2skR4N9?=
 =?us-ascii?Q?5h+2IjxWwwUOcGtX2gyQQ2KyVy4delTBY/RqFplvp70RdybiYKNU9vNbsoQV?=
 =?us-ascii?Q?T1gGZRIFB2k3BqIMKYq1nP7TQuZJq9osQ0CijAFh35lN4q52vmM5snvGmDx3?=
 =?us-ascii?Q?G9cJuXYZyNrNxdCJNrrxAwiSOib6Hr/yY37tNNy8Lq4SQOWMQPkKp7AMlNOV?=
 =?us-ascii?Q?rFIJPKY/cQAVGWaQm9hrF3K+y1HPKzO7hBThLmiSKNXzzM5Jy/lhywjY4KLL?=
 =?us-ascii?Q?ckmdVyzllF1m+wUU0M+otkpyLK6kjOZLkqwA14fYQr5AXyGp2b+PX0r48jY9?=
 =?us-ascii?Q?8hvzuCWN3addzerjQ6m2SryZoQjxPcULQc345dSHLR9svecEY1AJlWTjmh0R?=
 =?us-ascii?Q?GBxtPWitfbNSk39GbejKl2jmL6Fqjd+c1bf7x4b5XtaxfA0mHKKimCoHHj/Y?=
 =?us-ascii?Q?ijCY+sifAEG3drGSNACY8e+JqpTcFzdBG6Ax8vturqtvNX/XGrlo7ZrprOz2?=
 =?us-ascii?Q?vQJZDp6kcLrVa49TxsGK3eMnLwOk6Rq6i6EZxWJ4nIS+O6trEOzQjlMraPID?=
 =?us-ascii?Q?k4UGdOoYYlG9hCOR0DldWPGVar0GD7SDmyi4YZfWefFR3WuQdvRY3qcYsXd8?=
 =?us-ascii?Q?st31rQQV9BDQy3wOf0TpOogpGRr79KrHfX+cfBpGgAmxNbhgAuMnIbWWtaVP?=
 =?us-ascii?Q?B1Ubif8ELI5Z1g8Bbrgt2GWEVEnWpnBG3pe+bsIlfW6HLMM3vG6krjUHa1jT?=
 =?us-ascii?Q?xJJUuJCEm91xsp+rtjJYDtV7IfiYR6IWrIJmz0AIoNZ0qGzHnnwWqFG/d6/R?=
 =?us-ascii?Q?fr4aSs2Tr3HpmU3DFYlFdUonEpY8if6qLrFmIaBe+VCiBp0j/Iit+EL6irxN?=
x-ms-exchange-antispam-messagedata-1: jmiDV8UMig0pBw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a15a633d-852e-42cb-3ef3-08de4c54b83b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2026 12:19:48.4795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1dOPjJd2dAQmMGKb/ueRTaB+Rr8XvactCyfz7XKJNlKiaI5iJdTESnvM8Mg0G17DAdbh3TsUpchWXXZn4BwWSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5269
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, January 5, 2026 2:53 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Disable casf with joiner
>=20
> On Mon, 05 Jan 2026, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > Currently pipe scaling is not supported with the joiner. As casf
> > requires pipe scaling, fail the atomic commit whenever joiner comes
> > into picture.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_casf.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > index 95339b496f24..259bc50d5ed8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.c
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -116,6 +116,11 @@ int intel_casf_compute_config(struct
> intel_crtc_state *crtc_state)
> >  		return 0;
> >  	}
> >
> > +	if (crtc_state->joiner_pipes) {
> > +		drm_WARN(display->drm, 0, "CASF not supported with
> joiner\n");
>=20
> With a backtrace?!
>=20
Will change to drm_dbg_kms as here intention was to flag out that it is not=
 supported.

Regards,
Nemesa
> > +		return -EINVAL;
> > +	}
> > +
> >  	crtc_state->hw.casf_params.casf_enable =3D true;
> >
> >  	/*
>=20
> --
> Jani Nikula, Intel
