Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F389F8802
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F67B10E4C1;
	Thu, 19 Dec 2024 22:43:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQnqJTb1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C3D10E4C1;
 Thu, 19 Dec 2024 22:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734648187; x=1766184187;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qtWGNSv+VDVbe2b9hGviiHgcJvjV9RfmYVRoiu4MfA0=;
 b=GQnqJTb1NqO1UH3JunIeY/dtzs8ZcTT+UPAUfvKljLS/tXLrwWLmv28t
 J0Bwo+XJf9KfVK2uQ9UHiYJ1vML0SbDHi4Q9mm9RWCG0QFTv5b7hIWev0
 CD4CcdSnTXHFU50MWBUovNzQuG7VvOQpRMi/wEsgHBbIPLwpNpsGYFkUi
 9LEvfwPQdwmCzbvlq5YBtdGR3jdHJML5/aIx3r0teTfd9YKcEfy0pildn
 /oDl4bqBYJSA3alZsFFT3rlWsluk+06u9rMfl++XYnYDSu09yh1wIGkdD
 hBgYEKXsL3w6IlYimhtQaml5aMxdyIgI/0gmI7X3EabX2j9QuF5wDpAIB g==;
X-CSE-ConnectionGUID: bCTL2hXeQDu4eo5ntudPhw==
X-CSE-MsgGUID: DOKUEDTCRbKi0Vrbf8xVYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45872145"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="45872145"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:43:06 -0800
X-CSE-ConnectionGUID: ywQ3u0WZQCigo50lQlnsRA==
X-CSE-MsgGUID: He7bKvIcRGScWlbktIrRmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="129156262"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 14:43:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 14:43:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 14:43:05 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 14:43:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y3BbMGcLqt7Q8qbWbPVajd31A+WcjldT2k8i2XuWAkDEwHzwCN9CI1qpy88aYo6unYkXk5K9S0svS19r9oeE2pm8OR7oOZGcYk0Nfu2Ym3IXbN9WaAQNKwDgL3LNoejA8ewo1kcpwl9fit7C2CfzGfwNiNiMFXWDLBKfGAWRZDmT3PSIXLKhiphp10J8osrbdGZ+LmNapSt/HO/zFRHyCv6cKlPcXTXEKGg8+ddxe7sr8PbAwTxyRQcbPID2h8g0pUufK+Z6RSwl62H5QSjKKsz58xjmzoEMr1aCkGDlQ31lmzB+zErvmwp4KymeD3/7AbH97adn3FYyb4YroD614g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F9NusYgOLGM40w9KpgLp4B09IM9ZRIe/kL1xQaQ89s0=;
 b=ym+vZkJDNKPQXwsgobRKtWa42r5B/WWc2GRd/Dfps4W6LKq1w2ruPc9sIQlQV/saB9pqXIh2Nbf857qyppiWVkNq9eXU394xqtfZrAaz2j2FZnCicuL/AG+Pa7I+hEjJ7cxjNqDi9y7v0U4fE+UCfJHidVfMoSREMeus1WqP/wegj3x8pX+loaeEvIi2LrNzgBLUkb93stP9jVb9WNCf2Z3+rNIjwbCDITV6IcCnXIXkdWr7ZezkOj5kvVmdE/iIhxpFpPgL2EnGNR4vkPhYUCg+3Wv4CKLsmkk5R2we7+iZotl8ePFL3H61KSKV9M0hfx10APwIAD/QfN3xfgkmPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.14; Thu, 19 Dec
 2024 22:43:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 22:43:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/display: Do not assume zero offset when
 duplicating global state
Thread-Topic: [PATCH 1/3] drm/i915/display: Do not assume zero offset when
 duplicating global state
Thread-Index: AQHbUmAU7glGRnkcZkOK/1Fxr/LoX7LuIH0Q
Date: Thu, 19 Dec 2024 22:43:02 +0000
Message-ID: <CH0PR11MB544410647E80FEB295A8921BE5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-2-gustavo.sousa@intel.com>
In-Reply-To: <20241219214909.104869-2-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB7466:EE_
x-ms-office365-filtering-correlation-id: 5576d530-9deb-40bb-d49d-08dd207e7f48
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?F5kjI5CqgoE+cX7WKvYNEv1vpirCxu+n+bbfubwF+6MKMyfwZ1/UuACoZi?=
 =?iso-8859-1?Q?hBaQ8SneJaJpFQEISYsgq6GMcBlndhFHl9FuATTWc4GfBeQ6SMoznxbatE?=
 =?iso-8859-1?Q?7bxxbaXeMnnEZz88oanji3jrtG4js6TbuDMyy3hi4OXVeqciVv1z9BQe3J?=
 =?iso-8859-1?Q?rLSV9SjNjzy56X9ben7pYVWC2fpvd/OKUoPTF17ReGGuXzMNLqg/4JU3c3?=
 =?iso-8859-1?Q?8Zebmeq2tK4L1ki+mm9HOPjRCp7Dha1dqfGAxwWXljpfTU65QJ+9d3HWAz?=
 =?iso-8859-1?Q?UA+BLthDmeidx+38WhC+4niriWtJansZCJm7Vef6hUB2XV9G8MK4PRwgMO?=
 =?iso-8859-1?Q?HEBsDfvd1aEtW1p5H7XWWNPUKOAq5RiydoSrL3cGCkEVVwQ7XeYjkvdVpw?=
 =?iso-8859-1?Q?NL0TD1wz0tP4l135OKjDyaOOGFNxiWZAXDDAYexiN4AjSlFXKB37bWsV/8?=
 =?iso-8859-1?Q?Wt2yHqRyxvS4c0uQF+GfbC8ONQFLLMsvEYR/mS1YdQxvvbfMCXXGDRoQPq?=
 =?iso-8859-1?Q?pKjHyBaN7WVJP9UGanzJhxFDemgUftc8751QBROAa/veteBxywmVrf0eiO?=
 =?iso-8859-1?Q?t2RU2AzRsUDyAJ23Bbk81jhKbKk31hkd/sezw9lttAt7f2+SzhLS8ZW0pq?=
 =?iso-8859-1?Q?WSQc8muTXMX3cVmNURjwz9c0Mbt7Ml9uluT40Fft7djNHCZ+jILX2HbgOH?=
 =?iso-8859-1?Q?9q1Ikla/C59G+U2ToOAzotftvxMIwoul0/cHLoF8MiOqn/ZMqDNGZLHrOG?=
 =?iso-8859-1?Q?I5UnjLK4qoe7/kXBHVSqkyfkRU2b1V50C2+WNcfM65Rt3fdLwHWZj/jikx?=
 =?iso-8859-1?Q?QD16tAyYdHUigVH53/9MROEHxrxFhT+sQ9XaolUGg2LeP86KEx3YaRRjH7?=
 =?iso-8859-1?Q?0wC88N7wJ/D50/SzckFYV0yvCOicKuKp4AQYa1qU/wNG9vbgLFVd31n6Io?=
 =?iso-8859-1?Q?DLzjY2Txq5AOArsRZA7KkwYfUsk87UIxfKYYp33EWDrNclinaglVGDhsIh?=
 =?iso-8859-1?Q?dQt5KRGDR0zLIbZoLwLeMrc7QA2q17N+kLXmGQ/bnQ8HPFqTPWRbblIevm?=
 =?iso-8859-1?Q?jYttugIb20Zst6tO5gCRgG/VTuIXUkmhLdcmaQTr10VfFlX7JbxtK3rUHw?=
 =?iso-8859-1?Q?WK0luPgKZ9aMy3RVGIxXqJIaJz1wFF8aCk9Kj6r5a7bPxW9Y6qS+c7eOnI?=
 =?iso-8859-1?Q?WpEkH9WqwAEl1eU4OzelhS7Jqg/22K9wQl69KGg/RKb27aNG0R7vxAMAk3?=
 =?iso-8859-1?Q?ewWwI/ZxkMhtKu0884yKw8uaYfIOY+a8VjF18Xlk4kW+AU7e/7BRWeF0Wh?=
 =?iso-8859-1?Q?jUbNjCQd/YCaKKPxvW/K8BRamgJiicVOzG0zhS5om4YZv4KggsuH9cv3/3?=
 =?iso-8859-1?Q?hljtKpIfLNevD/wdSqKCjSkcrhSpRoBq7OD3Eq5kIcvEWvR3fPYhvreA/i?=
 =?iso-8859-1?Q?PudavF4Rr0Qax45XuCfG5XweHnHxl5JjixjZrLFqFCIAiYD0+yKinSFYRu?=
 =?iso-8859-1?Q?fQWPxwnxK5GWI6UD2Rdsa6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?oHJMqdRJG9WyrR7FD8BVo4CPS4TJPwZWu4uCMOAkiXc9+6XEPbhPG8fxuI?=
 =?iso-8859-1?Q?oNrvmDV0rjYMTqeuFblh6w6S+sliV/Dl2hva328n449ET85WP6Kv3FJQKJ?=
 =?iso-8859-1?Q?f+em3iUluVCTnU9s/rfz6Ejl1QU0fH92eJrB7/PqrGGFXiN5QC6nkZeJ+x?=
 =?iso-8859-1?Q?1aO0+oI7AT0Hu9fuOCNDwTpK6XrBXtQo+eITC3MSPfxQrZ08oYog7D7N89?=
 =?iso-8859-1?Q?S+Lt/r1whS6w2iAvfHM5qWKyj4X4aXfIODm2byiUzKDZ1RgV/sRGfXakYi?=
 =?iso-8859-1?Q?gd/bMH6vuVwE2FjM1MsCoraRx1aMW9rDkmpFvAxJpazAnkoY5uYUzN8Jia?=
 =?iso-8859-1?Q?ce9bjNXHU7cUeK1/OMIC8IA6oiJby576TrxU8BlOi4l3mq5macqi1huyOf?=
 =?iso-8859-1?Q?h2sDOPxoEuWHmcLKIrxk4JeIq2hrFOuXal5Db3WAY6s6169wKVyVd2jbeH?=
 =?iso-8859-1?Q?22ikQZvyXpMIReJ40WUk4CkSMkfXuLvuJbxTiQiNrcBZo99hal224XBGAB?=
 =?iso-8859-1?Q?wBpAlZwpIkyyU8qEA9mjUyjxvg5Q0HfGQqbrqwCgCAtlA/8hXOR27hCy0L?=
 =?iso-8859-1?Q?u1RmHv8Q6P/OMjTbi6YqHRPsUoQDnx0tGyrWaLX6tpYqK2BsYhDXhiFYzo?=
 =?iso-8859-1?Q?kZ+JQQ0ZF6FLok44VU1AevAiuIUnu4vQp/AgV9rjrlquHjrzblVvIpTsrb?=
 =?iso-8859-1?Q?XFQBKS5VF9wg6XGlK5BKZsD3K0Ndl9Qnd3YcgIGI5Yoh7JK1qZ3pzAyXGk?=
 =?iso-8859-1?Q?WyjLUlrKRVQQeVRwB4U8cIjed0WORrbJpItpQU7mBejL3nXVCAwlA56b1S?=
 =?iso-8859-1?Q?sfPs52p3eN5F3oAuzq6o9ryINqx34H4J205vz/76b4Y187PlQGXWtoLY2P?=
 =?iso-8859-1?Q?PkX/mm0AawoHvudor5COYDuRozXTI8TI8wv6t3aeLer2TNvErGTrmz6Lu4?=
 =?iso-8859-1?Q?osI9n9QGp7FMSWFhWZ7PZiErPEYeFp1ARz+7mtiX2lgNlSgEys738UGetQ?=
 =?iso-8859-1?Q?akHocVe3o5NHAX5mWLSwyxcDdYva5QpGAC9PEVe7RnvP/AXENf8V8zC4gj?=
 =?iso-8859-1?Q?1kwh3FYPKOii0BfBaZAOJtzwg/jrHjemAJCNa2Bkd2NhCcUpIts9fVTuzO?=
 =?iso-8859-1?Q?Kc9Hj18cqc3iKp/akK6NmAGfBk7h6pGbQ5REhdFy2VahgjxPBPfb4lGEWq?=
 =?iso-8859-1?Q?IseoelGUgr4erpB+VApJBsQzvELpdGvnTfrFhuBrON9+ngHNY1D/O3yJ5D?=
 =?iso-8859-1?Q?9y3zlGvCfMKoKhuK3puFM9XVc+t+oMYVXay8SHiwonpw0Ent2b5vUc4HSj?=
 =?iso-8859-1?Q?1H6JzwAtX27g+21oTjahCXktHYsODo6mvIOj8BsIJm8ejW9an9DaRKYvJ4?=
 =?iso-8859-1?Q?dPHJYJd0iUD1kyAgTNjxjmkvjVRegUOFb0l0P+reRdalHxZzM38D5wURbD?=
 =?iso-8859-1?Q?tYvDvMB3GbLcPtaznAfIl4PIJmHxarKUqWScV9JPd4q0bDyqc7L4t3Nqnz?=
 =?iso-8859-1?Q?XlAZX/w67DAoyqZ6GpF0+6wB1bQiGImuWgp/Law1Yowkj85Mg8qQxPFfwo?=
 =?iso-8859-1?Q?ucySUDq022iDORjQuhiGgVKITAOVSpfuNpJxYAeXrxBP4LvRVZiqSImulC?=
 =?iso-8859-1?Q?Ohgh0PjPSJXYMp4F3d0+Y43YXU1W+2UUT+?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5576d530-9deb-40bb-d49d-08dd207e7f48
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 22:43:02.9492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0lvJrFzZXS017RUddT33lyU3ssecrjIrqO9ob2YnvEbchk0/EXe4lZ04mxN3QQ3fj/HTytX4HYIetz7HbSKXfpbBdkB2qf949ANUttrDj9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gustav=
o Sousa
Sent: Thursday, December 19, 2024 1:49 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Nikula, Jani <jani.n=
ikula@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Do not assume zero offset when dupli=
cating global state
>=20
> The current intel_*_duplicate_state() functions assume the offset for
> the base member of their state structures is zero when calling
> kmemdup(). While that is true today, such assumption should not be made
> and proper offset must be applied when calling kmemdup(), otherwise we
> will be duplicating the wrong memory area if, for some reason, the
> offset is changed in the future.
>=20
> As such, update each of those functions to use its respective
> to_*_state() as the parameter to kmemdup().
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 4 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 4 ++--
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 08e8a67ca74c..30236010e0ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1425,9 +1425,9 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  static struct intel_global_state *
>  intel_bw_duplicate_state(struct intel_global_obj *obj)
>  {
> -	struct intel_bw_state *state;
> +	struct intel_bw_state *state =3D to_intel_bw_state(obj->state);
> =20
> -	state =3D kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
> +	state =3D kmemdup(state, sizeof(*state), GFP_KERNEL);
>  	if (!state)
>  		return NULL;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 3506e576bf6b..fc084e2a4c6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3130,9 +3130,9 @@ static int fixed_modeset_calc_cdclk(struct intel_at=
omic_state *state)
> =20
>  static struct intel_global_state *intel_cdclk_duplicate_state(struct int=
el_global_obj *obj)
>  {
> -	struct intel_cdclk_state *cdclk_state;
> +	struct intel_cdclk_state *cdclk_state =3D to_intel_cdclk_state(obj->sta=
te);
> =20
> -	cdclk_state =3D kmemdup(obj->state, sizeof(*cdclk_state), GFP_KERNEL);
> +	cdclk_state =3D kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_KERNEL);
>  	if (!cdclk_state)
>  		return NULL;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/=
drm/i915/display/intel_pmdemand.c
> index cdd314956a31..1f71efb7d04d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -18,9 +18,9 @@
>  static struct intel_global_state *
>  intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>  {
> -	struct intel_pmdemand_state *pmdemand_state;
> +	struct intel_pmdemand_state *pmdemand_state =3D to_intel_pmdemand_state=
(obj->state);
> =20
> -	pmdemand_state =3D kmemdup(obj->state, sizeof(*pmdemand_state), GFP_KER=
NEL);
> +	pmdemand_state =3D kmemdup(pmdemand_state, sizeof(*pmdemand_state), GFP=
_KERNEL);
>  	if (!pmdemand_state)
>  		return NULL;
> =20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 29e8ea91c858..b3d38e09df5a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3291,9 +3291,9 @@ static void skl_setup_wm_latency(struct drm_i915_pr=
ivate *i915)
> =20
>  static struct intel_global_state *intel_dbuf_duplicate_state(struct inte=
l_global_obj *obj)
>  {
> -	struct intel_dbuf_state *dbuf_state;
> +	struct intel_dbuf_state *dbuf_state =3D to_intel_dbuf_state(obj->state)=
;
> =20
> -	dbuf_state =3D kmemdup(obj->state, sizeof(*dbuf_state), GFP_KERNEL);
> +	dbuf_state =3D kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KERNEL);
>  	if (!dbuf_state)
>  		return NULL;
> =20
> --=20
> 2.47.1
>=20
>=20
