Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 948E694FD36
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 07:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393AB10E275;
	Tue, 13 Aug 2024 05:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ga7wrg/4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB50410E275
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 05:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723526883; x=1755062883;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=C5TT/laXtuoNI4x10ucu3SqJq8Q6kBXAEBatIRtUS7M=;
 b=Ga7wrg/4dLOY84TMTLA3GzB2wkFDbZhcmehlB+SYRlJfbcPSCxZTH9HQ
 0F5sZSNzAV64L3RrU02c1j77kdaIIZUft3belaeZjQynuoiPH3dPJnETe
 j1GkSgtvpDw2zf4bWsVtiwtlmrN+o0jg800jwISMMQOG3ZyLKs3Cawp8x
 Bj4DsNi3onHr+t+YC+1X/rUSvNauGYEIOx0ihXdrhN3myZW6Fw4NslOyd
 vG2QDu80BY4FpX06CgCYy3aKeoO9YmNCjEtgY/hW+CE3XJYyNfnFIuoFP
 xXzPxfbCE9RivUWkWbpR9Hyx9EyBNQrwgDBD4TifWRjK83vVaos/vZsa0 A==;
X-CSE-ConnectionGUID: rxEyiEsOQruO3gkdzV1gRg==
X-CSE-MsgGUID: nzLR7VGJRi+7jHge2W3Cbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21310605"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21310605"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 22:28:02 -0700
X-CSE-ConnectionGUID: EdeVmLdjT+ysVfCDcKoe0g==
X-CSE-MsgGUID: n9bXGOzaR4e3J+Kit1ClGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58188993"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 22:28:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 22:28:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 22:28:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 22:28:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 22:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=flS5EzwyH3/naX4EaaZVimscVvZ6dk3w5N0Z4ul0fKk8JLS5gW4RKm1jgfNwopXsv4JIjP4knP3IICdHA9aYt3mrYNP3kfjsiUPnOEjJaGfXXO/eKn9K2kUm1XG4C3JkAC2TSOYh31lV5HCjwn01mCU3udG/Y/1foAFbP1Uii3QO9pdob0RG2IuUyMe2hRZlEMG7BLTkfQKpzT0JR44O+QFX9KJcHiT7Fj0qUaRilG+6R8b/qFXnkpo12CNLdvp+NXCFKgkdNtLWRTuC+ZITBXFu5u8+MimTCV1kxSA976Si+GSeQNHyU+Vhlbtru6xdwmf7QOMUJq56O8sd6j5IZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rGP/HT7lmGA7EtippjIVoEntOsHiCdP3K8P8kwPVQis=;
 b=f4HXOrht9PF0gVxRwGkbwaHAfZqKSdugldZ/vTG/FwxsY09ehOXKt/iVgvjw+3A7LPiFgDXlIv/D/ZkI+SlnAYmeEiG72dTsiJWV8RgqC3gF4XYsIMzzoriZJPvkOMIqdp3pNE8pY1E1PQQkTDXoUUG42coMY7wvtcH5B1tGR3OTq580UfGkqTJK9zERY3srcwbAfe33ddm1slBK6b0nSaVPLQKpUbnF9yIB2TWFjhSW0g/d+TYPl3mTr8uTb/gY3xmzE9MaD8X42hybTU+j3ZGi2AKEb8vtsBX88Saaz7gKUcxXYQV/eNy7V5nWyuOx44NCgn9d7DCuo7xYYg77+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SA3PR11MB7461.namprd11.prod.outlook.com (2603:10b6:806:319::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.31; Tue, 13 Aug
 2024 05:27:59 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7828.031; Tue, 13 Aug 2024
 05:27:59 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
 definations
Thread-Topic: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
 definations
Thread-Index: AQHa7LzxzCQHcyaQskqXs8E5noun6rIjrh0AgAD4/fA=
Date: Tue, 13 Aug 2024 05:27:59 +0000
Message-ID: <IA1PR11MB62667FD800F6D0AB00FD5788E2862@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240812134047.4042341-1-dnyaneshwar.bhadane@intel.com>
 <87jzgl24v3.fsf@intel.com>
In-Reply-To: <87jzgl24v3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SA3PR11MB7461:EE_
x-ms-office365-filtering-correlation-id: cde3bc00-aa9b-4cd7-50f9-08dcbb58b1e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?W+ocuvjJwfntBcRlqU48+bBVrytreeYTE7ElsaBJl1wIXyWOqNPPHM0G1zPV?=
 =?us-ascii?Q?ZQZB0LgpeCxYd4C8uAb68Y6zvNErOOLZc81B0QuQjWrhzEZ0DHpBUZZjOPjv?=
 =?us-ascii?Q?NokXTet66rBIs4+o2aWxOYP7q6KUrxm3XsZSCOB63uHDZSt4F2j+22Q6O08U?=
 =?us-ascii?Q?wbxt55JmGDslGgFR6UrdqPJSfvDfUzSbjDy032r0UDBiaxq27WZuaGJtSgcf?=
 =?us-ascii?Q?8vv5njtvB+3I+Eu052Rrp2rQYTd6qlZyujqCdn777TmMMeSu5n++q6lU3HIO?=
 =?us-ascii?Q?58qpAGXIOim2YUcD1H5Pd/PUosYiM/oo7QIjCsw+2D3l8cAHQetQPQiebDu/?=
 =?us-ascii?Q?xNJAB/a42Z839FjsyjadOZO48p/Ko87KHYCMvAk//535UJgjw1QxkpO4aKOb?=
 =?us-ascii?Q?FQeGAXQf990uquLkLGJHFTvQcx3gG/IzFU0Ym7ML/PQqjQiPS0XbUTV+YOln?=
 =?us-ascii?Q?PRFsnSOQcdedPmpzFkId1SgYCrYEcKQGfr2FzrNnVzCMGEodcOf4kZ5d1o5l?=
 =?us-ascii?Q?bXBIYe4JMKUw/dntF/3Kz2ZwSmz/BSMDQw/d4p5DC/PxfelgndmsT++Nvfwr?=
 =?us-ascii?Q?5t4X/PU17SYGFozE5CJxeDXjCuHNqA4FKckNhsanuyg67Z+SLafuQR0MZYf/?=
 =?us-ascii?Q?jlipE8NAtoum6lBsmZfmhIvOZU8+glo4UXq9PixkHuFtufNPik2I/Q4Ceon+?=
 =?us-ascii?Q?M/6pRWt3l+JcllwABgwR5xIxhv7JBqnfN7EZ1GfyOsANq9I3Izgt2QaWrXeW?=
 =?us-ascii?Q?YS+5aAmlT5+VOr+iNvhfMWl96zhxMTU9j0a55dVr9/B1xKZY3x8Vh/SvRQj2?=
 =?us-ascii?Q?3V7UWtnBgniDfTsgbkbX041t45YZbBUDQ+EfP+DzhZ+0hPapPJ6Ok9ZhuAUH?=
 =?us-ascii?Q?imfteHMnZY8J1+wxcR0u7R9aHg4gjbuoRLitTUR3fvp+J015i/FvItdeiCa0?=
 =?us-ascii?Q?SEmNGnBbK1zQn7KSodnLe5Wb3eERQzMZEfXDV5zDe8jwquIR+gaupBWYmvjA?=
 =?us-ascii?Q?I6DdKkXirZgZcX4tfIagErppiOo1yyaGa3pRUl6H1PFn/tSQ/mGXI8hwsx8N?=
 =?us-ascii?Q?mJyHYqweXkvgPuLEyCxy07UCK+bIexMxEymFhVw35WtZXlTNxgt6XGTewxSp?=
 =?us-ascii?Q?s/1oEl5wNbIfx+r7TV9jlt/krXGDu8CFWkmI9Ozm5o21YV17t8qQNDs6Nxxr?=
 =?us-ascii?Q?mjjdjMYHJM5if/e/rZWDQFes3EzrhSEsPFZJ2BNGcJ7NvfhskmayUbSCLaX8?=
 =?us-ascii?Q?O4yXmy6+DgTo7FSDFgzsIHqkH0A5LNds1OHYMjmWTgefmB9banJ3CwWn5uZo?=
 =?us-ascii?Q?CVNHEUCEHDP9lNxv3TJ0Xl0zuVMa62a0gU4kWZoNYkzw/a+Gpy94BKd62gOc?=
 =?us-ascii?Q?NRLlbuexl0JanJaIVNgt2rNNUMHPhRs15RorYYbvj0/Y1J1BRQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EjPvEZhil1XDWc1pjOnCLhIu7aFWnaxO8LOFwOAAD2MQHYbxJRR11211Iht/?=
 =?us-ascii?Q?Ogbm4jcaykgmHDlUaewq/TOpFM8bVL0+MvFxrm6Gb4GEzlTvKccT6DWsnC/N?=
 =?us-ascii?Q?OpItUCVSGFdMpggDxqiA8lSZOjSh9MaJ834bECqJLn04nIz1iK0ArAR9UCiK?=
 =?us-ascii?Q?lseuCWa715zCnbChslTwXv1SyrjrGbJL4bh79Sy2JIHAVXXWjxgRE7QSgOwu?=
 =?us-ascii?Q?IAVEGd0dde87XCqHcB0bygCbj0BXtvUuuFHvFj7NdDTRrIZNkaEOMFnxd60p?=
 =?us-ascii?Q?wSJReC6dWhArIyZAcPwiPMu8vX8qZZa2mShC4ixZ7PTRfzqhN6cAsP71U2Rh?=
 =?us-ascii?Q?10PFdTUx4Cflgypg7IkAvY7HR0deS/UXgz3rbxBBkzsH4owSknux+lq3iigh?=
 =?us-ascii?Q?yLptkPkNtGuSb88i5b1gED3+9rlyVQIP2uOr5QI9slJJFJqaWkEP7JVndAi5?=
 =?us-ascii?Q?9/wpHzUemRwcmFHL5O0VqrhYCKFGNrU61M1mgauKo6BdZpey6xXMImgVuVtA?=
 =?us-ascii?Q?jc6KpbXwCqyw7gG9Yk5hGw/yK1UznfMrpSyJfG5A3+IiZlxRsUgM7vNp5qlr?=
 =?us-ascii?Q?e0C672HBWVEfyC6pPbpdJMywjOyRz/0c4wvezuUdCFiCRJkmYEfg9tH0Oc/r?=
 =?us-ascii?Q?hIUW2LI3lYcOkmXJEKEuE3Z3cBCvq2vIam2U59WPvgnRIE1nUWhek4ddttF8?=
 =?us-ascii?Q?Zr0GZS+ACdy0RAuWled/+Os3h42MW+Dc8T2tT+67S6JEgNvG3bdR6rsbWxa7?=
 =?us-ascii?Q?ofYsk4bw4Pw5MHu/RnF4He4wQsIkdZWA6vPcIyKpp8B5Nu6m0N1GPJP8OzUy?=
 =?us-ascii?Q?6OR61OiNRYflcSn4G9psUqiK0NEQ0Sk4c1JhdK8/MUEwnrL/ES7lq5w/hYNw?=
 =?us-ascii?Q?fh7ztw6w6cnGTQVQHf1nRW/1Ma031rH+lJ6oOGMDAA9Hri3WRXDc6RLb7Vrp?=
 =?us-ascii?Q?wk0zTXeOVr6uGyAOuabwUf5KEXRMBh2otC/Tsl/iCO28gzCN7AgK4wtfwP9X?=
 =?us-ascii?Q?hbh7UJ0XruUOFqoyvakOR+kR9B2Ldq7fPhV92Yw7kVKVq/F47qYibrluAWZ8?=
 =?us-ascii?Q?VB5S29IU9idM1b14QW/YaAH08WoJsaCJdVN5v7FFrbUnULXpcJLabpaXWa77?=
 =?us-ascii?Q?jVm3Ik+QyNJkPrTPyTS1MEm7hPakdQ/vBbhG1HUv8uVtWW9s1nHFMosDPHKd?=
 =?us-ascii?Q?M9LAkRlpHP+7PWT4u3WjwZYc/lcPw3xpEwgAJ6D7Zu4FhO3C72yF3BKT0Nse?=
 =?us-ascii?Q?tHnmJod9XcRZkILiV0YR4wjGFaslmooptkh8U4QOdPuWm+U2Q2ghKD6xfQ5L?=
 =?us-ascii?Q?jnwi+nIdwkVLZJWCktGe4F3f5E2yh2JrWlyOe8eth4z8wpjR5TnVqD56d4cW?=
 =?us-ascii?Q?9rUFfv3ZiMpUQDlQNaBnlJt8m4qtk+7bFXF+rgwJLEt0Wzj/p0sYAH1xDQxr?=
 =?us-ascii?Q?eGQ39QVG7NF7bjzarfCAG9Ua3uTraccewHxO+/vpTuQhzTyHZequrYlK5SZf?=
 =?us-ascii?Q?KW8HjhSYVB+S7y6fBBo+JUH99KfCL3o7xXqeu+IRsQh15mu9x8JdDgsZXnGw?=
 =?us-ascii?Q?wXw14cBaXg2vtv63IteBguwnHx9FnbzKEEi0agVukUOJtKfUSEF5uIPi2Sa9?=
 =?us-ascii?Q?eQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cde3bc00-aa9b-4cd7-50f9-08dcbb58b1e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2024 05:27:59.5116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ND8GHg9PekIvzJApZStdLTo1hJR/R/0XbKedm2GDozp1WKwLPpjsn1vydOeUC/ZAAyExW/eud1eheSRFtcM743q4tOSD2rGtCARwt2MfVe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7461
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
> Sent: Monday, August 12, 2024 7:58 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
> definations
>=20
> On Mon, 12 Aug 2024, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > New entries updated in BDB defination from VBT v257- v260.
>=20
> *definition
>=20
> Please explain what you're adding.

Thank you, Jani for the feedback,=20

I will address all the suggestion above and below in the next revision.
>=20
> Also, the spec never ceases to amaze me. Like here, adding stuff for a fe=
w
> revisions, obsoleting and starting over. Ugh.
>=20
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 35
> > ++++++++++++++++---
> >  1 file changed, 30 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index e613288937e4..65342f347bba 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -1080,6 +1080,8 @@ struct bdb_edp {
> >  	u16 edp_fast_link_training_rate[16];			/* 224+ */
> >  	u16 edp_max_port_link_rate[16];				/*
> 244+ */
> >  	u16 edp_dsc_disable;					/* 251+ */
> > +	u16 t16_delay;						/* 260+ */
>=20
> Please let's follow the spec in member naming where feasible.
Noted, Thanks.
>=20
> This would be t6_delay_support.
>=20
> > +	u16 t16_link_idle_time;					/* 260+ */
>=20
> And this would be u16 link_idle_time[16]. The size is 32 bytes, not 2.

Noted, I missed to add as an array of [16]. Thank you.

>=20
> (Where does t16 come from?)
Noted,  Renaming needed.=20
>=20
> >  } __packed;
> >
> >  /*
> > @@ -1330,12 +1332,27 @@ struct aggressiveness_profile2_entry {
> >  	u8 elp_aggressiveness : 4;
> >  } __packed;
> >
> > +struct aggressiveness_profile3_entry {
> > +	u8 adp_aggressiveness:4;
>=20
> apd_aggressiveness
>=20
> > +	u8 po_aggressiveness:4;
>=20
> pixoptix_aggressiveness
Noted. Thank you.
>=20
> > +} __packed;
> > +
> > +struct aggressiveness_profile4_entry {
> > +	u8 xpst_aggressiveness:4;
> > +	u8 tcon_aggressiveness:4;
> > +} __packed;
> > +
> > +struct panel_identification {
> > +	u8 panel_type:4;
>=20
> panel_type is a loaded word in VBT. Let's avoid it. Maybe panel_technolog=
y or
> something.
Noted. Thank you.
>=20
> > +	u8 reserved:4;
> > +} __packed;
> > +
> >  struct bdb_lfp_power {
> >  	struct lfp_power_features features;				/*
> ???-227 */
> >  	struct als_data_entry als[5];
> >  	u8 lace_aggressiveness_profile:3;				/*
> 210-227 */
> >  	u8 reserved1:5;
> > -	u16 dpst;							/*
> 228+ */
> > +	u16 dpst;							/*
> 228-256 */
> >  	u16 psr;							/* 228+ */
> >  	u16 drrs;							/*
> 228+ */
> >  	u16 lace_support;						/*
> 228+ */
> > @@ -1343,12 +1360,20 @@ struct bdb_lfp_power {
> >  	u16 dmrrs;							/*
> 228+ */
> >  	u16 adb;							/*
> 228+ */
> >  	u16 lace_enabled_status;					/*
> 228+ */
> > -	struct aggressiveness_profile_entry aggressiveness[16];		/*
> 228+ */
> > +	struct aggressiveness_profile_entry aggressiveness[16];		/*
> 228-256 */
>=20
> The LACE agressiveness is still valid. Please add the comment to struct
> aggressiveness_profile dpst_aggressiveness member.
Noted. Thank you.
>=20
> >  	u16 hobl;							/*
> 232+ */
> >  	u16 vrr_feature_enabled;					/*
> 233+ */
> > -	u16 elp;							/* 247+ */
> > -	u16 opst;							/*
> 247+ */
> > -	struct aggressiveness_profile2_entry aggressiveness2[16];	/*
> 247+ */
> > +	u16 elp;							/* 247-256 */
> > +	u16 opst;							/*
> 247-256 */
> > +	struct aggressiveness_profile2_entry aggressiveness2[16];	/*
> 247-256 */
> > +	u16 adp;							/*
> 253-256 */
>=20
> apd
>=20
> > +	u16 po;								/*
> 253-256 */
>=20
> pixoptix
>=20
> > +	struct aggressiveness_profile3_entry aggressiveness3[16];	/*
> 253-256 */
> > +	struct panel_identification panel_identity[16];			/*
> 257+ */
>=20
> panel_identification
Noted. Thank you.
>=20
> > +	u16 xpst;							/*
> 257+ */
>=20
> xpst_support
>=20
> > +	u16 tcon;							/*
> 257+ */
>=20
> tcon_based_backlight_optimization
>=20
> > +	struct aggressiveness_profile4_entry aggressiveness4[16];	/*
> 257+ */
> > +	u16 tcon_coexist_xpst;						/*
> 257+ */
>=20
> Hrmh, this is where the member naming in spec is not feasible. Maybe
> tcon_xpst_coexistence.
Renaming needed. Noted. Thank you.

Dnyaneshwar

>=20
> >  } __packed;
> >
> >  /*
>=20
> --
> Jani Nikula, Intel
