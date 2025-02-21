Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB01A3EBF2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 05:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3827810EA17;
	Fri, 21 Feb 2025 04:43:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKDQUzBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7981310EA17;
 Fri, 21 Feb 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740113033; x=1771649033;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sy0gkqBQkRsp8fwraHVGuTESIFGHfaoQb8tVavN7VaI=;
 b=ZKDQUzBBKcIs62sbO9TdSsBHmCuLLjn5t2+tFd51lS6aYwZn+fGs1tee
 jQJ1mpdRVhvshohhV3FP/T9XFIM8Uvpl2uJnkpUeWq4qDM8L7wlGDHqCQ
 Jzg8fGEj4KwmfDBKJDZ9wdkKs//VE4GGgmAlpOQAXdzm+TbcJGLWqC9QC
 EI3q0jsb+e8/457cinagQhabG8n3EbikoC81Jlyc5o+Wxfi11dVjO81Ay
 ez5I9XSAR4q9xiaOEnt9npWdFYTh2DHTpyj4KUgCy3rytVgHN0TyHkYQ8
 Ms0SnfUpykBOVRoSdaLkXKZjElH6sFxq7tI1c/+k0uhIB9nueciqmfpsb A==;
X-CSE-ConnectionGUID: 2b6o81qWQWag4+BN5XCWUA==
X-CSE-MsgGUID: 7RPaj5J3SVK7voZCdK1Rkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52350562"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52350562"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 20:43:53 -0800
X-CSE-ConnectionGUID: UWDV5THPSYq0WvxquRVKXg==
X-CSE-MsgGUID: JrG1hRmqQpS9N+fF7RMtEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="115793936"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 20:43:53 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Feb 2025 20:43:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 20:43:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 20:43:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mykiBQD6t/hPmGi1IhXL2roLdUDk+mnVya/l2t6oFi3ODGAzfW9wljfsnQRD+j0os63ijnhalPREFQwtSQhuKQrsaSfk7EZEQOjlYnQu3xCbkN9OrcbGcfdAnH3l+npZzN3AC2jcCAkvORt1l95IHJSCyTrV1bR5lWKI6V7xbSgkCN5t5aq2DYVVxqRb8oHJCq+QCN4dN2WpgKcB2aFTpmZkry5KHcUF3HQLIDy1aMau05qrItkpAbn+M8fEqdQfPNYhJIy38WltlFjR+TcgIvGgI8fqIWxqccXMLtPNAZkTj9L32UOiNoQ8uJtOi6Dg6or8qcXe98nLn0JVPMV0iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QmQZJycgXwuTtR+3SeRzuiXUxvvmxnL3neud2jlKnFU=;
 b=oWjcfZW+kDORUu0E0LzFZRzyeIZgOekukgHMQuMRDKfJ0IrelG5sKqu8BY/2TzBYj4ksa7DyBl+zsRL1ib/0c1vEzRXGEfUHL3pmCXvtm5Juwf8nY4uuk+9g32h2OhDkqJBjwEoJXOEWZWVewfPJ600WpFYyiL/POd1zko9qwni9Dxzb/n1dER9zSnXw14DP6WVfzfoulkQ2CCiBQ8sN1B/Ir3jwkXprGVB2b51lB4F+4IfI7K1Xt5vH7n7fggl2/sUukuShi81nvvfSVKhuHh02d2uqx5iGpXqnkXgS9MJ8QqLHhSji2/Ngzk/oWWl09vqQm+18iBW0CvPY3VfLqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6678.namprd11.prod.outlook.com (2603:10b6:806:26a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Fri, 21 Feb
 2025 04:43:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.013; Fri, 21 Feb 2025
 04:43:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Yu, Gareth" <gareth.yu@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Tseng, 
 William" <william.tseng@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
Thread-Topic: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
Thread-Index: AQHbhBUI54W926PMQU6x/+0k0YIsUrNRKaeQ
Date: Fri, 21 Feb 2025 04:43:49 +0000
Message-ID: <SN7PR11MB6750A1D7B5E23EF58A8EFCABE3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250221041401.2219258-1-gareth.yu@intel.com>
In-Reply-To: <20250221041401.2219258-1-gareth.yu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6678:EE_
x-ms-office365-filtering-correlation-id: 18725ce9-e9ba-4d5e-b0e8-08dd52325574
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Wml5EPTIYpsEzC8crHXyceReTNdhMlapAVs9Sp9WrJLageocZw9riZeEP4cj?=
 =?us-ascii?Q?vk9GyPGnZxvKEUqV2O/axksr430zWSIhSGDP5iRtZOkOcWYEna0QXkd2RI2K?=
 =?us-ascii?Q?PR0hnNx+ml0z3sBmm/OXxTzIl/LSFXtUPmsS8C6G7z6Mg3v+QyTMr9WqBgvV?=
 =?us-ascii?Q?WG60xbzlsmZLJHiwV05PuELEivSJqTizxE5mh2H4lzW21kw0HlT0jqmgDHg8?=
 =?us-ascii?Q?12IbXdMg5viGVCICogy7LEmhYqZlfKe441gey/+XJzDVMmq9LWSmEfrM/OgY?=
 =?us-ascii?Q?A2PljZsTU9lWBkt5QaHlAj1pw+irW2RTuQaeOhGK8CuXbjjBITI7E/Af7HTy?=
 =?us-ascii?Q?scVmrjva9N6syryd5Gyk3wc1NIU6lsdoehM6x/ExUz48ajlWh3qXb9nnW2Sb?=
 =?us-ascii?Q?/qxOuw4yUha3OR0opbFfDaoAehUxzCUPsXEcTkCpBSAMpUURHmJCrzlL3GBW?=
 =?us-ascii?Q?v+HjovqPmPBmVYCOH0VzTDukSVfkSSHeeMi8Dp3hm363ZaNzrhYbr7fAHRQm?=
 =?us-ascii?Q?zLGyzm0cqBQLpGAMLblkv/Y0pEXzJFaalg8G7R8C0f4haVD7rl4wOO8WUiJZ?=
 =?us-ascii?Q?K9dHIEajMesC8lMdwGoTmAZOj3x/EzAVfTaxMxWny2CY8jhvHxcwkWeXi3FQ?=
 =?us-ascii?Q?wKOu5HBMw2+NWDPf+44CVRZ3Z2D/dncIihNCoZSvF1PJf79VlNpPI7sLhfFD?=
 =?us-ascii?Q?oY/vbbE/JZeFkSZ8rspHdwLaWRI3mVNaKIzWZIIJXX6bIcryZZ5fEX0WvvJ3?=
 =?us-ascii?Q?AVGQ8sNVaBAx+IWGR22jGXDQqBSl5rmve7RBzl7iIuJKIcm/81oory5dlN8R?=
 =?us-ascii?Q?LBiSq/DuQqleAO75Ag9xIarMrax/sSfpw4PiL+SUx3AyCj0K/VEn/TSJ706O?=
 =?us-ascii?Q?UQDhxMprxWAD9i8FNljHvOe5yLwiHDl2SrYCDcrfd+jUJS1EY0eyBCwrg3tT?=
 =?us-ascii?Q?r1Xja+hxUkPBG/qCwrZV7cT4AGNLWhTExOG2S54+vhqjodQ+Q16D4qkrYI6t?=
 =?us-ascii?Q?vyODUlIBAOX6TMXHcT/RrZmQt7MojRgzrOQ7+0/DZ9ClcLECXKnABYbSOmPg?=
 =?us-ascii?Q?Q5tUUp7HOv/J9xD6BnN/vJ0KTk5xsrI7pM/Ynbxw8x8tb7CKS9nWbj1bXvY6?=
 =?us-ascii?Q?u/7dZXAJ7hF2VieXwvNns2AEi77YgTsUgltRX4RniXN0hy73QdciukkFo3v6?=
 =?us-ascii?Q?2UbDkyT2TFv+5+s4DIxscFzINx9UCsP3LP+KGY1HMsJ/E1w36uu9C3E4f+ln?=
 =?us-ascii?Q?0DFcWAPpTyV6xrWqax8jKS1Xeo71CCOt8yXHmZ6KYMA9kBz3XAu/Hd8SrwqJ?=
 =?us-ascii?Q?5jx61Qb6o352woH8iVNXgXiSyBLZ/q0Ocdj77mo20KjCwp0pBDindk16RiAA?=
 =?us-ascii?Q?VUr7BLmEIWB5nwRTCYvwiDYhh6ww?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9dWAzj9+5wLzirrFy8lRxdJKkpV0AnyUa9/n0neV/ArGQUfd70abg4s1743x?=
 =?us-ascii?Q?ZuAeItZhWHcBY/bwjHSJQdoZy+2TcH3EIwS2VY6rEXGIAbIps8FfN/FSmf71?=
 =?us-ascii?Q?869nOo9PR5c/ENXIX3Js6HcHBfG656uoWNZ5JUiAKKmQXWcsK34gNsTQw9Q8?=
 =?us-ascii?Q?tgRzLo5hcKXq/5ruTr6e5YKusCA9AZzCPeytp0ABoHjYRFEfF8MntNGl6P4n?=
 =?us-ascii?Q?2gSDuagO8lxdiVkoq4E+vnf8kA/geIyrjBpQxkFJZCe4r9QlcTQfAGZsEn83?=
 =?us-ascii?Q?tnYE/xaq4Drm+FE2xGvmyjnj9OlTPprTK/sJUocBaeXOMUD1r//t1C3X/2bM?=
 =?us-ascii?Q?eJKECR2CZVABVSLgcKbdr8bQKz33Y9U6un6TWB4JtDsrOhEI2162lvpvLqvf?=
 =?us-ascii?Q?inT8vWJvM0T9f8J+5Pumx+/BjfwwujhnmaI/mrIKDlD/opkfKgdnuRCnmoKe?=
 =?us-ascii?Q?WQvRImQ3s+dBbD0W6snsIV2CpsJ9rvlXwF3aCTkMC8G2lRv4kwU8iglZSvb1?=
 =?us-ascii?Q?kOL4L+KR8rjTG9FsTYl0CmBThdIu4/J+dUgcqNsynurHMsqJVqHh5sFx6ttg?=
 =?us-ascii?Q?rkaGRlaf6AQKUOWQUWLezHDBadXcQnLNAwb7eIwvENLHpFK37JmJlyoP1cI3?=
 =?us-ascii?Q?brZG03GgVGgv/0GNV/M9dtJhE2R8HGtBPUvWXT/ULSSKUN9cTnwSDBs1OLhl?=
 =?us-ascii?Q?p6xUMaXdIC7T95H4JXINh9fJPZaIdNSG1K7UGRgTHzMslqg8OW8x4EL3YKFX?=
 =?us-ascii?Q?zvU7RETC62PHXHFbR1D6LnUUfaeeCy2gL+BvhCrbpk2LedjasmNZTUl2HRA6?=
 =?us-ascii?Q?omrKYuAfkrak2AeoztcvMCeVhgoGTFJa0QCZfAuD4KW705xFYNzgpvFdD5jU?=
 =?us-ascii?Q?hiINX5eyRL4JomCSXJ2sBSCpjRY+zooO3Zf5ZugfBcb4iQcXnqPGO2c3WjCS?=
 =?us-ascii?Q?gb4/YwHYNSCDF5nRtEqHF1Q61FolzGb2vux4gcmScetHey2ExV9i5K0nkzix?=
 =?us-ascii?Q?CDuJ3stKYYV8H7jK7851mkUliblqwFwIKO+Kt/aVtGSjp7WQlcLOcn5EW8bB?=
 =?us-ascii?Q?e8rMlQBI/FN2IXNs4zw8SDiPzzziVy75TnMaWzrtIBwRJQk8Ie2Uw/848uwj?=
 =?us-ascii?Q?tu6l30uwvGZzshcVO94rAqCZ3Miio+ehuI1jGnrlTU4CnaUZVHvqoVz1guxW?=
 =?us-ascii?Q?iqF2o4D1Iqb1wiAbIN7f7lyhYrYH/qoziF2Z8mpfEfnM1EmvPUgTpGdzjdF9?=
 =?us-ascii?Q?tRthymm/v9y+vOqOEnTfzoNOXleSIcH0T+UEPrcSZfTunb+iZ8stpxM5jdXD?=
 =?us-ascii?Q?KLfWbgcitfKIdcV2LdwKLrdcg9H7brc3pBBWdcj0shfetLdubmI+k9VTt83y?=
 =?us-ascii?Q?0nkHgp/tlytqATX382adeZ2gvuYv5P7gQP4+2qa3y7DqzFViQjwf1oChWbMV?=
 =?us-ascii?Q?O7SY7AggvPbwSUMw+CHOXp2l0epuLCDOVVcQlGUY5WHiPmBj2maSpfrkjbZN?=
 =?us-ascii?Q?N7l/Xg5YJkUQYjOMdBM0ZbaP2/7xI44aLpMzk17eczgXFN1lNSGFQpo0Bu8W?=
 =?us-ascii?Q?b7Ewy9JHCyeCrp5tP2daH1HCO5GeNk5x/3CGNkNT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18725ce9-e9ba-4d5e-b0e8-08dd52325574
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 04:43:49.1408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /1JLoFM0H0/x7a8fEEcx5B+J80LZX95R96wZMz4U+p7EZ8L3wE32ALQC8zgCqSF7qvT4uYoTQwzcDZ2MwPhEzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6678
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
> From: Yu, Gareth <gareth.yu@intel.com>
> Sent: Friday, February 21, 2025 9:44 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; shawn.c.lee.intel.om; Tseng, William
> <william.tseng@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
; Yu,
> Gareth <gareth.yu@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>;
> Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
> Subject: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC =
1.2
> for rc params calculation
>=20
> From: Gareth Yu <gareth.yu@intel.com>
>=20
> The condition change is because Gen 14 begins to support DSC 1.2 and need=
 to
> check if the sink supports DSC1.2
>=20
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>

Why has the authorship and Signed-off-by changed for essentially the same p=
atch.
Also the commit message and versioning information has been removed any cha=
nges
Needs to go as a new version to the previous patch.


> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b355c479eda3..555180e40b72 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	 * upto uncompressed bpp-1, hence add calculations for all the rc
>  	 * parameters
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +	if ((DISPLAY_VER(dev_priv) >=3D 14) && (vdsc_cfg->dsc_version_minor >=
=3D
> +2)) {

Please add a bspec reference number in the commit message where it says we =
started support of DSC 1.2 from MTL

Regards,
Suraj Kandpal

>  		calculate_rc_params(vdsc_cfg);
>  	} else {
>  		if ((compressed_bpp =3D=3D 8 ||
> --
> 2.34.1

