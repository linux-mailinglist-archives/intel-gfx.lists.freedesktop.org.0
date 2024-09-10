Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E5972860
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 06:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B9610E649;
	Tue, 10 Sep 2024 04:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lo93k8Uz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80AB10E649
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 04:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725943046; x=1757479046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yaTmCuajOOLtqkjxzlIua+0/CqunOvrxMzJph4+lgDk=;
 b=lo93k8UzjreHefraU6IjrL3V9sTEjtFivBZid1xmY+oadMpur/4LPWdt
 qMUU+5FH9yCPySPjCLcAGAHZcCZwR4xkRQE+YRpeKtnEXahKjJ+hG6JJ5
 ARlckqWt71plDZqMp6A4EFH25XIZmuLEiPd9KyLB93xljl2lbdEcujnvw
 oSCGXRxL2CNGVr3U3qP0DatY9bOvZF+95NVjGDIBw1qqBHC6O/JpKCieY
 MYm5m7rM/xlMy0jXstE34F+1fNXB4wnSMfz1zNW3+agUtcDOh8pUbnPub
 BOR2mw3EMMJjqwCRSGBIXHfPmR+ZsfxmiWWWVdwQQcVsAaPBK9turQ5NP w==;
X-CSE-ConnectionGUID: jKV8nI6vSSGk1UiFG7xkgA==
X-CSE-MsgGUID: x/SK0b3USC2Ih89kYDJvRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="50081408"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="50081408"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 21:37:09 -0700
X-CSE-ConnectionGUID: DLDY4ws+ST+OzaCZk50rRQ==
X-CSE-MsgGUID: ouvkcP6BQdyOnys2UVfGvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71680995"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 21:37:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 21:37:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 21:37:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 21:37:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MsMGKkSZhCkMZdmGsYsHO6vM7X6vecQxmYD65/aRn+1OahrUird9AXLTDbNN/hhR/sZVP7oSlNWW+zYm5V5H5VQ12Av7NHe5TOysqaWIf62++a4VH7yj2eqlZ0F1r5GLD+g5ghM9g6xBI2YE5Xb1nbsiBuIAswM8wzsn7jf8KuDnvXXbVGS3GNsj4em4GvH0QgPT723G5iQvfgmp+A0dU/Ox2L80S9EdwXcb3qaEV+YQXwTDm9YevGzeXFH5s/RGdBRrOdWwJlztewP54Wh2j0oJT2w4mu3vOivVBNTyEBlHChY08rHYWveDHr1CU0b7AdpQP9mZ896rDnj56nX06g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cCSOs4fHXH5J7dOpVr8irwJZL9RGXXgrrDZ3uSwfYzs=;
 b=cspdtxMHVH3kArJaQQnZI+gSOfONNCl/xyFYubAdNZJ71SNNHKGkrbsgTeBve1e6Lrshss0jznYGYANUnvEo8hihX18G8LvC7tGRJHRFh+z/hFXX6sPbNw+vPInfONiX9UUkZXhMyXUly1taipAglwUl+jBR8VLkPCtFzk3z8d1URQzTZCuouxemgZ9EayJZP99jPZYuOlo/8u6LucdOq8GAP6JXQlcJ/UqGwDuPxrTsQV37ZWktnCfi1mHeall71psPQt7TQsREFPNzU9s51qoNWbPDN5iS0BXkVGT+QJOrT1L6GL+tKVS4/1yb5gQXVCRVbvX8YQXl6WR/tYaTug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BN9PR11MB5226.namprd11.prod.outlook.com (2603:10b6:408:133::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.20; Tue, 10 Sep
 2024 04:37:03 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%6]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 04:37:02 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>, "Jadav, Raag" <raag.jadav@intel.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "tursulin@ursulin.net"
 <tursulin@ursulin.net>, "linux@roeck-us.net" <linux@roeck-us.net>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>, "Nilawar, Badal"
 <badal.nilawar@intel.com>, "Tauro, Riana" <riana.tauro@intel.com>, "Dixit,
 Ashutosh" <ashutosh.dixit@intel.com>, "Poosa, Karthik"
 <karthik.poosa@intel.com>
Subject: RE: [PATCH v2] drm/i915/hwmon: expose package temperature
Thread-Topic: [PATCH v2] drm/i915/hwmon: expose package temperature
Thread-Index: AQHbAD+1S3Te/1GZmkeTSJI+ONPhpLJQDVmAgABiP+A=
Date: Tue, 10 Sep 2024 04:37:02 +0000
Message-ID: <CY5PR11MB6211D25D522F6044554B84F7959A2@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
 <sd5g4sj6t373wu5jfdfaujh73t4uehcri4aqtu7dln4p4huyoh@sa4nivkflc47>
In-Reply-To: <sd5g4sj6t373wu5jfdfaujh73t4uehcri4aqtu7dln4p4huyoh@sa4nivkflc47>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|BN9PR11MB5226:EE_
x-ms-office365-filtering-correlation-id: c4bfd48f-78ad-450c-5f96-08dcd1523727
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nxR57iJkPBe3LLqRC+MKHRmDEaYG3zZcyGbOuKGcUnNWqWrTMy0SRgjMAbvF?=
 =?us-ascii?Q?tW5MCPhEjI4BwVQy/9a1qJhOhqBdGsLVkiSPEoNoJd9F3WE3cDFnZoYGq/Ep?=
 =?us-ascii?Q?Mu6yVXh5M1+Rkd5UMGNGE5NLD36fW0kLqZdJX5QeBEH8C8m6FzNDW1a7FsmZ?=
 =?us-ascii?Q?Ry8dECdabBuudrUFABPXxfjofLdxZ/ADgENPOfd+6MMcruM6mJQAxcJ7BHBM?=
 =?us-ascii?Q?jDXENUCTGPtbzZm8Ys0ZXdGsd3iO7CgMdFqug0CfbyxPbAwpUQfHMVUgvLhI?=
 =?us-ascii?Q?tFdMEpMbIm1s70FH37UTIPIBryD3z6L+h9qyBQQ6pc+NhctNaYbuK3EaW1xl?=
 =?us-ascii?Q?fKa7QmfTh9tZOgjoFXFywueb8osy+9SzIgHGvF1Sov9iME8mOBaRtGM4t+rP?=
 =?us-ascii?Q?ME0MMq5w4yIPTbkU5++WlujBLQKDwJU9vfDscel/LUfePxUlfB2Sv/dEBSHl?=
 =?us-ascii?Q?F7oX0+NcCjUFrU+FM19DrhJFpurC5f/FZtjIyC380lNprKeU5P8xqSzI9wbH?=
 =?us-ascii?Q?/b5VEcM/UAesYbqVMYcNzgTcEENoBRS0kvYHsTMtVs6w96OmwYlXHHZtmkwd?=
 =?us-ascii?Q?61xZXye1jFG3csD7nMdmsMabCobtWx1RjOyt6NaFf73APpO1Bu+9ljqkf97I?=
 =?us-ascii?Q?w8x/yGeYb5UpUpMqQvUvjdI6cCLrb5O8cE/i+9NdTkOBGO36Vd30NfAH3mEx?=
 =?us-ascii?Q?1ttZqoWJ5m4s8LFfiFx5jF9xcmqTA+fSDf8EKkDyAIm1JKL4w6n9dA4PtBnT?=
 =?us-ascii?Q?kHkCNAWTUG0xZXAzClwasJlftt5mBJQ2yqwCmIslvOlH+1kN0Woq9CElel+g?=
 =?us-ascii?Q?4DVrKBlodFKnqLDRHaRRZXc+E/sMH5RaTMVAgtrASVXh4x7oDkfn143UMLEc?=
 =?us-ascii?Q?iIaQWb2+SX0DG+lNLH9P2IxbZgE7tp8rWMu0AqfiDef5ngK+IrVFE+P3QI0R?=
 =?us-ascii?Q?Qae8GGlU0W7OKzyCVMPEiGBgfejKqKvjpgYbRIHjh0yYPCwTd7gH9TU+pEMa?=
 =?us-ascii?Q?gUJzqCAfjq64ZWrSFYREtYWJ/GJiWX8fSailjgo0hD3UtgtS3ea/cx/e94DS?=
 =?us-ascii?Q?nU1fbqXwVoBPGnYLcLhGjZjWbd5x02I/Oh5nTmxgL84ss/3M+X3v2Sp04K02?=
 =?us-ascii?Q?8mckHHaKKzyZz2RW2tsZPEyLUKjYTtnh6O1/klZe23z5cxODYLdyiOmWGgQc?=
 =?us-ascii?Q?LWT40Nj8pOl/0rSnV0L2qlm5C955BNSKCj7OVcpJOE6jb4DBC8wHbfU9B/Ep?=
 =?us-ascii?Q?u3qd2W3HMb8Qa7i3x5cPXUhbXUNpL1af/6ISV6k2BHtM8X5N+Oy7rxvCGmKa?=
 =?us-ascii?Q?Q9INwDjwq4C8EnC74KFTKn9Q/8qPYBL5jk+DtWwsxCdjPDj9zDADxVSrp0i0?=
 =?us-ascii?Q?0+Xi2b5pJQw4Qlk+g4MXXzUdNT8GHl7CwUYwGh7Hw17czDvFIw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OOmxmkx+T/R/Usig9k2kX4EQ8RkMLo+HuLY83ZlCz/97qBVkvb6R7CQVOxxv?=
 =?us-ascii?Q?yIRih/uNyU/vUcNPB80dNY84xpmhlROe+t5Q3eGc9+TLZnkTS+G7UlgpHaLY?=
 =?us-ascii?Q?Ue1KtyHj0w41Z1fAXTv8EU9lCxXxSwT3BS7KBjoQ/jWwRTatHqEfmm4PurmV?=
 =?us-ascii?Q?j0GoRpi6kjGh4ugbw0trpB8vvBaPj0egMDCILyoeiXooTCc9po66JQJxYFxP?=
 =?us-ascii?Q?lmh5E0oK5EheL2qTyeOQ7ZcIhHZbSWmC761ATz/3uU/tf0bfdf6R4L9xq1Yr?=
 =?us-ascii?Q?4mgAED+pRQ9/OORx0KMN2Q25BwS3k0c6Z5q2J5Ng3+E84CrX7dTzu8Xp/5Ah?=
 =?us-ascii?Q?lJU5kUbrsK5/vVfm1QZM4Wp5ZXyUPSQPMpJpZWHZASDJ1NrFGLjb6ipt1bNe?=
 =?us-ascii?Q?C0G4gpfAIvexKBwXOpCVydON2CWNFkNMjqlmMp1cWbbhO1KV8tHJiobulb4Z?=
 =?us-ascii?Q?T5nzDVn3DxJLZwfYxhvBQhtBp2gd9yLJm/gkFbs3EoAnsVugRCla6nJFUo9u?=
 =?us-ascii?Q?8WvIOkk0xD8P/E2O75yOb2X1gRNOnj7L9AJqk9uIQdGHDeZ2vlDrgKUkONvP?=
 =?us-ascii?Q?F50V+v7dozh4SB7jCbzDDBjxiWKwPykD2ob1gtAJL68PXWenlHrDa2kaRzmQ?=
 =?us-ascii?Q?4vZyDPaUx32uZ1PQmC5tXTUd3PoOsBFe/lmQDZrFe+B2bNv0OHiOisdU1Etp?=
 =?us-ascii?Q?IntUbqq+6NspzcERsjTYZB3NzyjVeph/FuIZP90o4O/qoSpgCuZ9mJ/ipgJA?=
 =?us-ascii?Q?VpOCE53XGdqmpUgLqMAtShitxXIYDAilLiV3jITd8oTfoOa6ngBXqPynZ4Of?=
 =?us-ascii?Q?E9CBaNQ0S58TqY+M/+vsYEl0vXPrXvjUaX99SpG6UKbW6ETzYVs3WG26hwpZ?=
 =?us-ascii?Q?V6EbfysjqsAGpWuBbzMoTFmkgXSZgZm2F30aIVNk89Nskmf7CuY32RPcs8N4?=
 =?us-ascii?Q?7FB1FqlxbCLZxduhDqhPjXgzWL4mexU/bqAiwrvsazLMovztEuGCRVJ6V95R?=
 =?us-ascii?Q?FzmDBBBbAGrKvtd23Z4H53nK2BTTP7t3D4KOHrfny7Nz+Abmnigp+IyUJo/t?=
 =?us-ascii?Q?ZGcTggKPW/KBz3f+L/Ro1VcryFMos4c9rWl6IgvUYKdJ0jmx3BtrXc1nQOIJ?=
 =?us-ascii?Q?QbIvVYbwF2oa24D+CbMlEolUjkfb84qKzwfGcNM8dbhOtqJFZvklWxo/GTsl?=
 =?us-ascii?Q?K6AzYuJFPXrfUI4uVss/hNyXUr2Z08L5/HWkOhq1G7kq9mUttYosqLAaSrAn?=
 =?us-ascii?Q?zWG7DIBIH+g4qzmWdFR6Opq3ac7X1IckiywrHPz72iH0KLRFjEhZu6IOn/zo?=
 =?us-ascii?Q?qklGf+T6nAMQgRqJy+Xvx4o0Ctb1piwuhE7R+1cxSOuoxGZFGvGlQtBpuM3y?=
 =?us-ascii?Q?dRmYdV8RIi8/gIO7lwIIbU0W2jNovkuhrkfd8ZNvWC1iKRM2g7XXLB5UTyzB?=
 =?us-ascii?Q?iOB0HjyFfwD6wh2Pyse9Qm6aLtXBrFhcSTm0kFmDW5ZtolMqd3UobxEeB4a0?=
 =?us-ascii?Q?TvQ0VSBvEZ28JpDtzcKXWRvyn/YUOa+kJhXLlHCcEVj6Vmgn2pnshzJd/lld?=
 =?us-ascii?Q?d7HvrTIqx3hloulnwgNMe3iOwYzhJ3DMrlEAzXky?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4bfd48f-78ad-450c-5f96-08dcd1523727
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 04:37:02.2154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uLMSAA0jYujezoVp8o42mwv2i+tvL/ufIX2cNy/EeiPTjrcSpe8A6Jwcq5/9Lp2KosLfqKt/W8kMfQapMRovPd0wwpAI0FGZHi9U/CBC87o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5226
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
> From: Andi Shyti <andi.shyti@kernel.org>
> Sent: Tuesday, September 10, 2024 3:54 AM
> To: Jadav, Raag <raag.jadav@intel.com>
> Cc: jani.nikula@linux.intel.com; joonas.lahtinen@linux.intel.com; Vivi,
> Rodrigo <rodrigo.vivi@intel.com>; tursulin@ursulin.net; linux@roeck-us.ne=
t;
> andi.shyti@linux.intel.com; andriy.shevchenko@linux.intel.com; intel-
> gfx@lists.freedesktop.org; linux-hwmon@vger.kernel.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Tauro, Riana <riana.tauro@intel.com>; Dixit, Ashutosh
> <ashutosh.dixit@intel.com>; Poosa, Karthik <karthik.poosa@intel.com>
> Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
>=20
> Hi Raag,
>=20
> ...
>=20
> > +static int
> > +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> > +	struct i915_hwmon *hwmon =3D ddat->hwmon;
> > +	intel_wakeref_t wakeref;
> > +	u32 reg_val;
> > +
> > +	switch (attr) {
> > +	case hwmon_temp_input:
> > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > +			reg_val =3D intel_uncore_read(ddat->uncore, hwmon-
> >rg.pkg_temp);
> > +
> > +		/* HW register value is in degrees, convert to millidegrees. */
> > +		*val =3D REG_FIELD_GET(TEMP_MASK, reg_val) *
> MILLIDEGREE_PER_DEGREE;
> > +		return 0;
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
>=20
> I don't understand this love for single case switches.
IMHO this is kept to keep symmetry in this file to make it more readable.
Also it readable to return error using default case, which is followed in t=
his entire file.
Thanks,
Anshuman.=20
>=20
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>=20
> Thanks,
> Andi
