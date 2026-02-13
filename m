Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBifHg9Rj2nnPgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 17:27:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AACE6137F1D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 17:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2AF10E2F9;
	Fri, 13 Feb 2026 16:27:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHXQAFw3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834CB10E2F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Feb 2026 16:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771000076; x=1802536076;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yHIWojYNxjulha968+ssAYXLe/rXHLQAdH8uWAddY9g=;
 b=iHXQAFw3YGYl1EjPyzsalvQpvXY66ezGACQKZ+lvoJJxp0R8Iy7Onr0G
 UeNbyZjHu+1tq6Cac3kNVlcj3t628xXSV9lsktRUvGyj3aLsRFgq18c63
 GyCmz5cglKMKyLV7DHFiGLS3kc8XB+Ro45gs9P0lLUTsIlYTy8ypAwvFL
 4bn6z8QYd/jsSAMlNH1KFkGIlxDWwEi9LqX0ZLF756QOe3pdObyRhIcdB
 n1pP7R8z8LXBnpyY7095oeGq9ylTLEL+sgInrxw25qsbRPL9PHwpPWIo7
 GZcP9ROukv8Ani9UMoyWGZUaI8OmYMe8ko1moTEo6X/Op8uDcscHemD8u g==;
X-CSE-ConnectionGUID: JXPSsT1vTCWNOKp8JbSVTA==
X-CSE-MsgGUID: bZA4be2mRniEBDAhvQSEkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11700"; a="75810037"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="75810037"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 08:27:55 -0800
X-CSE-ConnectionGUID: BcO7Szn1Rq+ILDK5M60g5g==
X-CSE-MsgGUID: e+tMaU2uT4OUZn7pchrl6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212092520"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 08:27:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 08:27:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 08:27:54 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 08:27:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FbI5k5zChe6NikUH/EjwrrtX14AlPBye0Msb2zV+apLEPOrQW/90YqEp7QQAhIrWpXwv7oxK1R7wdM/sc/2ikyPRPRAxjC+rqVwpF/++JoiD1jMjvxZiFCF2dHI/HasFxf7oy3Uuromm31xSfdnXrgSip5rdlceMKiPIJkrO3imlUJdpnOr/5XKcWKhMfZbh/o4b3VHClOfYZeWXKJg8kD/bhrZjGQFnrL/Qp/QHSE9DkagQPy56etxSko/uSl8bXL/mbSp5q4pZYJwnJ2Mt/jZSq2PuoJqfWdkTb7DRA8YVXCt6jZQPh6q5ToFE3SIP9t+26FLBhMtv5zC+1c5TKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OYlH1iTYd41c9g2BL3H51EQ02VvnchcMdvGoirpjJDk=;
 b=lU16Mwbn/PSp0sgeWSkca26yRd6V27G3Dwy9pO0enOMiXywzVuJl6KIUCubgc6IzdE9W1+PoDESTS4hwju+nEg3ozXQx1nFlxxVadgaarzUBROhOAPFrhY5K4hqTYVAiyghdM1OWR2Cu9YG6NbUe9w7R5lI55Fu4gmtknzMg4mkCIrXpSyF2pjm5Z+QxNr+0L3yUb7bby4CIp2gkyCizM6IXQmHHRSFBGTs9GPCR9s/0I9w3MAVfqPFVjgWCdEblLMxYAObuh1WWSjJwQc/7LcZnJ1k8Z2Kmc4G3q7EXSKyc83Z6KHGhefalcQkrROkNRjbOyFsm+pO+xSrbJ2xQ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Fri, 13 Feb
 2026 16:27:48 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9611.013; Fri, 13 Feb 2026
 16:27:48 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Zhenyu Wang <zhenyuw.linux@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Thread-Topic: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Thread-Index: AQHcnFehMFR2UxhTGEaIGycRKMRyqLWAciUAgABJxSA=
Date: Fri, 13 Feb 2026 16:27:47 +0000
Message-ID: <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260212194131.64708-2-jonathan.cavitt@intel.com>
 <87o6lsylfd.fsf@dell-wzy>
In-Reply-To: <87o6lsylfd.fsf@dell-wzy>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 0a574804-e46d-4697-6d2a-08de6b1cd346
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?oLC01UwNMDjOH9iXN8dZnK9NCCrkAalNxegdno0lwhgdwxf4trn7bK6ZBXy/?=
 =?us-ascii?Q?w1UjyiUCjaKppzYht07UIgaIaOyvEcrQ2AYGu9aR0ZuLJfs84RZzBVCmRvGW?=
 =?us-ascii?Q?LhjQnkTERs7xtqJb+4aa7H+GyPQP0b/3Pb06UrPJJGN8KvOMtzqj0Gi/GJcV?=
 =?us-ascii?Q?vhQg2L3b+shX/MsjIC8KAk2J5xr46cRXFzp9uHrsuGFlC3BF+7GMwSo7W7AK?=
 =?us-ascii?Q?LtFDRF4Jw4Q2aX6dfVPKLX+61aInZxqi3fxbE39g1nRTQxn4/Y+fr5ew3vSf?=
 =?us-ascii?Q?U7Zf/2Tb+sm0Pwh7a/nig+F3dMbR7I6nQegngIjb/IBXLCm+lT8sa+z1PD5e?=
 =?us-ascii?Q?ndzIHQoKDSIBLHFipFUHmNdAMWgPN4lW5ayfvE3T6NqU8+N/iauW0W38G7To?=
 =?us-ascii?Q?r7ae5Ox20fvuBrh6KIJZ8ZK87Oj5bTdH2L1+kvnc7XNixUxE6iWVsQDgMRf/?=
 =?us-ascii?Q?ggYhkuyEj1kgXcacko8XT1GqpyEfzIvaD19SwKKQzWBYRNYx62d46U2R4Otr?=
 =?us-ascii?Q?6WdF48ED/1xzydqFEP/w/xlOkaavfzoYF3EMmbz4znh+XEu7bZoR4u+rFGCA?=
 =?us-ascii?Q?qxGxjxvDxpDekvlTUE3VDIcsrll03voO9FjLv4yErBS6XL+Z8ka6Z6qtojWP?=
 =?us-ascii?Q?GcFszOxEID3NsQi4qyyAZo3xEUlhVDd0ajpYjKRMFtJjJIqVNcL1OX2cPQQe?=
 =?us-ascii?Q?h5ibSLLeRacEFpxSuIcbdKvYJz/Am5OmS+uVrJXIL70wcBRTOKBiK/3w5YbI?=
 =?us-ascii?Q?utuiQx5IiOdZTrYEpAlv7BBV8OMAhhek7sk9rjngca1Pbk3zBW9WnnM99y64?=
 =?us-ascii?Q?WE8p6kmsV+ihjalIWCpi4MxjRs7WK1usjeBqelP7G/VcRw41V8gQzDUPm66K?=
 =?us-ascii?Q?oR2oYk+IrceBg4OFSTD44TBSG7inXxcifhdJSlVXKEKqcFgk8MNe6TjKv+nB?=
 =?us-ascii?Q?Q04Hh1XFyBcwZkdGKegTEQebJ9Z1kzhBrQmsplxmZMsIznjLLMv+7lB/YbA3?=
 =?us-ascii?Q?HnwGUY3Xrc5IsNukAjgbhR+5vukIkmBWqYUUVEL9Ez9/48Fif+VChFtI3WQB?=
 =?us-ascii?Q?PumlfkgYMJR6K5XOYRWX2vlz4cWk5UMnKZ+AhiYm26BXxx+Np56iqGmUNKql?=
 =?us-ascii?Q?a90GrTWaSagaGH8rAk7ZC9jO91ZYpnyjJUijt9bEfOYxwdPa7fz7/H5P7Le5?=
 =?us-ascii?Q?2epH+M5U/ytpTyC4ZpUtxzTtoaQ8o650Mc9o7sHRj/NuAzz5iH3T9T7gXG43?=
 =?us-ascii?Q?dNqc7eoTrPJy8KXCelZMZybeckeOAWoUkgUm25Fi0h5T17r8VwsfHvE+berL?=
 =?us-ascii?Q?vUzHP/Omf8/53M1MviK04eVa8xjHZtntyLHiJcivE97hGpWWkPnsNmlegBI4?=
 =?us-ascii?Q?AdFdQLI21LIdiAXl9Hq4oxWeS5Gq+q6jE1CnhaXOJIDwEVHiY/S96C2fBEo7?=
 =?us-ascii?Q?UD38cWo8goTPvckm4cKcNVuemX+C3Tkw+BDsYZdJtMIkSiTtSTPZYTGk3d2u?=
 =?us-ascii?Q?As6Bc8OygGWJG6UjF7i+x4oP/4t7zFGmyOhBdsacQIZsxwGk872Q5wjz+21F?=
 =?us-ascii?Q?zuS6XvcfTh4vT+imbXQwg1p3lK2SiNtEhOCVI6ECinqZVv/zytYkjn/WxbWE?=
 =?us-ascii?Q?G9jPvRRQE17pQPLl1/5g14Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G08vy7v+lxycvz0vlAQfCP6qpQ3HFg/sV4Ly70zY4vsix2nL63WGH3Ws2OXv?=
 =?us-ascii?Q?Ic8TCGb0he4hElhtUeztLeeRpwsFgtKKADeNIzrVjppRmIdcC1grOnG/HO9H?=
 =?us-ascii?Q?wGelF/aXd/OW5+hu1uE2Yrk6iEE0M9sg9He6U1ONqxtwbqREVYlaiiyhUjSz?=
 =?us-ascii?Q?FIg0WshvjRl9HrzaSdBoj8vNnlFaeHXqW3iPos/R89i/TWohwP8DGYkoiaYk?=
 =?us-ascii?Q?s4SYQjgjzxod/OcDr6cFCUZkfY+iVFsj9PnUv/SFr7nNMlgn3ASkiTGBa7lm?=
 =?us-ascii?Q?nHrGBfa4RcAEgOraEbzhzrHNNr9SCyHj8rk5VLmSatImEYu+PGj/5F2gxy0r?=
 =?us-ascii?Q?bBKi8fbdIVhT8H4m0MTepbKmJ4YJADl9xYQp6eeOQm+3sNRS7qDweej35/ys?=
 =?us-ascii?Q?oUyaDGH5qHz5ArvLmt3PB93rj7HRXAOuNKWHIkgxBwlSVYIAZBVG21UyBIel?=
 =?us-ascii?Q?UnUu9msUu0LNa4fmMpNNnxnkz1FCDa1rhkFPJtpi2ZTZKzoEWuDoiHvJmTpw?=
 =?us-ascii?Q?fX9WWHMXR1JJFSOfdImjeLWPm+e5RQz2bZ1OlM8zKoHzM1BFsM89fY+1PIhT?=
 =?us-ascii?Q?REBahDLQ2+YjLixwXxir1wJVVgZ3k1yMFl5qOW8ElJgt1w1t7bsSWZVbesE+?=
 =?us-ascii?Q?3oaVDOJ16O46Rm5yb52qB9vYfxJim5jWmkKOeQ9tY8WN9Vzu2QDNMSiZbhi5?=
 =?us-ascii?Q?Wtdqx9V/BqiRVBlCxZCAjwTTpNINIEgcxJEC3jJ7S4hyiDlOWtziF+NQ4yjD?=
 =?us-ascii?Q?sDBoNY1KiWphmLgjGIe3dGATJTp0xlqgZyUz5/orkPrzqf6hYtzm3oB8RqbE?=
 =?us-ascii?Q?aIs9ueUpPvWReR31/NkWC2O9P8ioHnqOm4/gPRTGqc/kKmlG8y+6GgoxXMA1?=
 =?us-ascii?Q?n+BDAdK0C11lFo5ZVfVNRHW8J11zcVPKr500/pQlMItcOw7TBnJXFuzW+crW?=
 =?us-ascii?Q?a8Y3lq9nMB0lmscLYT+Tatp3ZakyRT82Oi0XThGfgoDQw8MbgYIK7fX2EACW?=
 =?us-ascii?Q?wC1KoA2ErrYdKGSjJpOQvU4f2s1qJUmpI0mLV7dGwbuY6A/WRnfLRYwUr9dH?=
 =?us-ascii?Q?YOxtaujYkEcajQ7gN/PmumDU7XJNxgpnPk1N9wFk/7NEQLcKe0OFO5eEMJHf?=
 =?us-ascii?Q?n5SPYbmu6jD5qNOJK/HGLzPNaqgDULV8bwgzk7Z4Ilg9oVO78iLmpZ0J2Pxj?=
 =?us-ascii?Q?8G+jOacR7PLICP2iF7idt1R4BnNcHoZbkNWM4/rAexU5+6JSyz8wjJW+kUp3?=
 =?us-ascii?Q?UE1AujAOpmo8eMB5D93vOiLffvIhOHszx/iSZUrVjarn4olyAR1mm3OnVr7L?=
 =?us-ascii?Q?Aw6aeHZQADGLwKTz9CYvzUJniiwnmFhj6eTUpv5MvdB2tOlT4LzJ0Cm94QDg?=
 =?us-ascii?Q?g3QtbsYGlSXk1e2809BC0Vs5ST+vgAgGR+r1LERbd9Lsi9LPRyqk+XmZSKve?=
 =?us-ascii?Q?lMKNZomTmy951QrFqyZCOY+GBg/jExyfeP5danSUWwTXsFNw3+w54Mgi/gpJ?=
 =?us-ascii?Q?psrE77RETf9r3r2nFhDEAW0eqXFII9uDHZDHa8YFr8yMwKFDceTUyQYzWgwE?=
 =?us-ascii?Q?+hpJLg6aNecb0Auqdfy0EG9s7BK05jrIa5asIzLze1YgV1J9PiBh6KhtMCa0?=
 =?us-ascii?Q?WdHs+wmA8s3cTt1aN9PuB+PtcU44BtuAygxvFz0ycIVRKRLY02QxKgwvp76e?=
 =?us-ascii?Q?+zj4G6Rzi1zpe/DL1CUmnuE+guca1RXz8OwFOgQBihBRcGENaXYX6QZwcy0Y?=
 =?us-ascii?Q?2ZCtYKxrAA1SKn3ZOoQh+ltwgYIXyZIssUG1PbotIDaPuIutaBnUREs1YvyC?=
x-ms-exchange-antispam-messagedata-1: uuXFtbPeZiygKA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a574804-e46d-4697-6d2a-08de6b1cd346
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 16:27:47.9792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AY0jCVgbMKcfd0+XpK6lJsE2cAngOznQwhp545p98Wx/A9hmG5Whs2sOB69bW/vizlbTizw/p+/lkSR8oCxEiRxx4WKSR1p2eh2fbhrEBeo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:zhenyuw.linux@gmail.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:jonathan.cavitt@intel.com,m:zhenyuwlinux@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AACE6137F1D
X-Rspamd-Action: no action

-----Original Message-----
From: Zhenyu Wang <zhenyuw.linux@gmail.com>=20
Sent: Friday, February 13, 2026 2:42 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
>=20
> Jonathan Cavitt <jonathan.cavitt@intel.com> writes:
>=20
> > Static analysis issue:
> >
> > The u64 array workload->shadow_mm->ppgtt_mm.shadow_pdps is cast to a
> > void pointer and passed as a u32 array to set_context_pdp_root_pointer
> > as a part of update_shadow_pdps.  This isn't wrong, per se, but we
> > should properly cast it to an appropriately-sized u32 array before
> > submission.
> >
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gvt/scheduler.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i91=
5/gvt/scheduler.c
> > index 15fdd514ca83..1a95c9f76faa 100644
> > --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> > +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> > @@ -72,6 +72,7 @@ static void update_shadow_pdps(struct intel_vgpu_work=
load *workload)
> >  {
> >  	struct execlist_ring_context *shadow_ring_context;
> >  	struct intel_context *ctx =3D workload->req->context;
> > +	u32 pdp[8];
> > =20
> >  	if (WARN_ON(!workload->shadow_mm))
> >  		return;
> > @@ -79,9 +80,10 @@ static void update_shadow_pdps(struct intel_vgpu_wor=
kload *workload)
> >  	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
> >  		return;
> > =20
> > +	memcpy(pdp, workload->shadow_mm->ppgtt_mm.shadow_pdps,
> > +	       sizeof(u64) * ARRAY_SIZE(workload->shadow_mm->ppgtt_mm.shadow_=
pdps));
> >  	shadow_ring_context =3D (struct execlist_ring_context *)ctx->lrc_reg_=
state;
> > -	set_context_pdp_root_pointer(shadow_ring_context,
> > -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
> > +	set_context_pdp_root_pointer(shadow_ring_context, pdp);
> >  }
> > =20
>=20
> I think we'd better just cast the type instead of extra copy.

I'm not certain that would resolve the static analysis issue.

To specify, the static analyzer is complaining that we're taking a pointer =
to an object
of type 'unsigned long long' and dereferencing it as an object of type 'uns=
igned int'.
The analyzer is getting uppity about this causing unexpected results depend=
ing on
machine endianness (which... it won't, but the static analyzer doesn't know=
 that),
so I suspect the only way to get it to calm down is to do a direct memory c=
opy, as
seen here.  Casting the type would just result in the same static analysis =
issue.

This is the part of the email that I'd throw around terms like "strict alia=
sing" and
"type punning" if I thought they were relevant.  They probably aren't, thou=
gh.

-Jonathan Cavitt

>=20
