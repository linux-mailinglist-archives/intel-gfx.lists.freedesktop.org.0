Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2410EA05CC6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 14:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD85B10E3CD;
	Wed,  8 Jan 2025 13:30:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoXTIEhJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9D810E2A8;
 Wed,  8 Jan 2025 13:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736343005; x=1767879005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=kJ+wJ/GlylaTndynze49KXwsVr0gT0ulOqRE2jmC0i4=;
 b=XoXTIEhJLXBgfuZ0hjZB5ci1yXryKg01pIqBKUzQKn5i4D3JQ0strJwU
 nUCIXLuN1J6c0AL/qwm5kxvCuMtXdqv8U6UaeXeTkPnZ5niTKbt/4kNFH
 qfaaFlpAbdtp3IV2xrF/9K+5d+Bz4RY6u1s4nQGDkQ5QvD0QZa/j2oh5T
 w36N0YVMMvTcgbi5dw/NidkS1pk03KmxI0Ni2dF1FNYF0BsMNvgcgd8A6
 WQWdwrW1OY5/0sAUgmPucfCrkIVdwJioOrKGqXo4LuYsTiB7l74UAgwQV
 A4bryyZSATVw13nhuz1FG5kvTZiL+goP7iHoa6pHVOWjJiyWk9yzmjuTh Q==;
X-CSE-ConnectionGUID: LaUkQVqSTWCYmZ8uj1OIhg==
X-CSE-MsgGUID: T9NhpGiQT5i3uP3FkQmXsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36588745"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208,217";a="36588745"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 05:30:05 -0800
X-CSE-ConnectionGUID: Sj0kVUKFQB6FzMzT+D3bkQ==
X-CSE-MsgGUID: z2W0RG/zR4eOdFN5V9xb3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
 d="scan'208,217";a="107714309"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 05:30:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 05:30:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 05:30:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 05:30:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E53fzNCM141Rs8Qoar5jDjRwy51fdCiFCFR76fIGnyBGopk+tWxm+dRtr91SPMk0U70Rp1/zougcYiSK1zINqa/2ijXuIVsC1bFweWopC3T7hoKt2sJrpx/ygv8jm46wQqY539nEQNJlyDO5Qpj3bF+hgw2OZ0UgVnvly63e/Z4WGLTciGd0H44k/tOgsZ3mvP6ItE+PL5E3icd9eDsSPlGuxWLzzN+IRfa9qfmwBi4RLFWacQu0hmE5B9OE0jpK/kX503xw9S5cqCl3yIRthwuz2QWlpYHMuc3x4lNyofPDJGyzjk2/nXij3boiR4KO4O5qLl+q5HWuIEqFz4bVlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4jSLRdVya3Vt9YX2lChVTb+zkNTbXJulecdkH2MO0Zg=;
 b=NvwutVyT25A8gYDY8l8nYELk8V9rYjXO+ZWF4s0doCX0h7K4LsByRNdNkeF+kbjpIAJ86o2u8TxLun5ClYdq52s/zbrV7Rz4uQqyR/uX71gehbqmTJmIYpdW2YGzqnqGKlk9AG8K+ieRhGCwyBIuIO5mBH974BKoFUholoVTo6NI0cxB72smPDgIqID2pLDQAv4HYVFXj8ccIS5omz+FsC3bS9jFYL/r7aPqp0bfPbM6HrO27d62ukV3YTxf2Ccu0u3XVNKIqCN+8rQTnI1ClBlIs+wva/0mwnVm9Clu06HXbFFHOOPrjaTbqgjYDxabhppqdp+BLng4fmTfdBMW8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB4838.namprd11.prod.outlook.com (2603:10b6:510:40::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Wed, 8 Jan
 2025 13:29:33 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%3]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 13:29:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>, "oe-kbuild@lists.linux.dev"
 <oe-kbuild@lists.linux.dev>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: lkp <lkp@intel.com>, "oe-kbuild-all@lists.linux.dev"
 <oe-kbuild-all@lists.linux.dev>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for pipe
 scaler
Thread-Topic: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for pipe
 scaler
Thread-Index: AQHbYFu7di3+QiIxVke+LBRTbyr+cbMMkn8AgABPFr4=
Date: Wed, 8 Jan 2025 13:29:33 +0000
Message-ID: <IA1PR11MB63480600CC86F78957CD3C23B2122@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250106165111.1672722-4-mitulkumar.ajitkumar.golani@intel.com>
 <9b0fef6f-9bb9-492d-a984-da825858df47@stanley.mountain>
In-Reply-To: <9b0fef6f-9bb9-492d-a984-da825858df47@stanley.mountain>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB4838:EE_
x-ms-office365-filtering-correlation-id: 26724ce7-4f21-4f6b-546c-08dd2fe87d1a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Xuq5+kw0hiEmCFaZGFhnGtylxXvM8TNPx+tQeYPQEfn+HvaamsWdZrItvi?=
 =?iso-8859-1?Q?js5GrLlyeRdF8X97FV9z4SSvHixZnYTOoEapLRpC6EcZBr9R/sOPmugrZX?=
 =?iso-8859-1?Q?25Mdpi5vGlSjfnyla0nV2mLTJoYO5FBMbY/mvuC1Ndr3dtk3GOidmlT/RB?=
 =?iso-8859-1?Q?DL6Qi8iw95yR01WwWHDS6jrI0QNb+AnFGSQBs0HzI8vO1cyAiY4QS2pTcY?=
 =?iso-8859-1?Q?CKSf94bywwmYnF3TDS7GinEqgVxmRDI7XT/v4jMu6KA8BdOSJBIDFNPiyO?=
 =?iso-8859-1?Q?6hj22zngb6fm55GaLq1A1SD6q0aebiW5PTc0PTqXi8TyHojYJA4bhn5MPl?=
 =?iso-8859-1?Q?5yYII/7gW/mZdyRgEZEX+j0pCcGR53Qe0PhDamyVsQqhzGVKv2RaCK5w71?=
 =?iso-8859-1?Q?5nREdauuu6zg6YxVmYxSiqQqjU7ZKKvuOiFihSm7r4t3AOFIVKuDw6AASE?=
 =?iso-8859-1?Q?GZAkui+LldLSETXGCkN7LAe2owgN/e/44dIXPuM7dcDYrAJFKjWh2BKLF+?=
 =?iso-8859-1?Q?LImTO2UBk6erZcVR5C0vsjXIPsOEi4vz3iJiG4CbR/ier4ge/bUJyO0tSX?=
 =?iso-8859-1?Q?5asubezQdxUUqabxQPVXS7xqp9erViJ8mVavh9uwKj/LdSQID5KbcuU7s6?=
 =?iso-8859-1?Q?3C4TsTsYwAQ0CfIgAhQ8xh6FJhsJ1ajJY4RA/777A/REAKYAn25Q2BV+gh?=
 =?iso-8859-1?Q?jr1Etbj8SIL0EXsytf9pbErOK6qndlXV268WNtxPg+Ama4hnOt1eKh7U4X?=
 =?iso-8859-1?Q?3y4pDCQ38HqoAFbhr6d7uQcgpE9hE/A1cfyOe1BkWcwMYgxNYLQCcHqi5w?=
 =?iso-8859-1?Q?/QtwKYiNgpuBqdlX3SkjON1vw06nOMFAOtgtJa2auqYPzoVwsMD1dIWk+e?=
 =?iso-8859-1?Q?BdYuXuOlq3bZtzuDslHdfSKk0E+DYu0hEFiY8XEOvz9fZyJTPlzmWdkqz1?=
 =?iso-8859-1?Q?0K4kVotfWp7nOyvt/b92txDgqm9TwUMWIBvaXZNDKvfC/DbmeQ07Vjlinv?=
 =?iso-8859-1?Q?N73zpJfH8Xz69PN7gt2w4rzh/2dbdkevWZXViNMtEDYv2GdfuU5r8jWWC/?=
 =?iso-8859-1?Q?RmsPprXxYxwqcUwyBg9NhPRfpMcdcGIS6QQO/ewX3LpvHwkgS2vF+RdLzc?=
 =?iso-8859-1?Q?LDQRjcSk6hfp850q2fyYgCvKLyiXpXHsCTlLvrOPNvXHCR4ZgqAG74cmb9?=
 =?iso-8859-1?Q?ifcAnENwd41n5Qasw+nIq/pil7FVqFo5faeH7x4YWniXuMHDmfyjrUOhpH?=
 =?iso-8859-1?Q?EQyM4knP0R/5g+ynOWWCwvpdZtXuyjCmtPySimx5FLFG6s57swQCFQhLqD?=
 =?iso-8859-1?Q?4I3WF1Kw5fo71F3EbZJZT8odXMbvHzW2/synnUOEgNOwm3Mc8ER7zLqEX8?=
 =?iso-8859-1?Q?QRRp4kO9b7sEcT7Cm1NK5XCMtNrGWYchbfW7oDP3meJbDuLfO7BMDDxky/?=
 =?iso-8859-1?Q?QQzO8QF9OqMAP4nZJwE4TJkyOSZ1HbwNqW/lyA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KZ2fRGokQC3yAI1IF2Lf4950D6SgOFTYj291bEJV7rLwElWevXX7pGJ1Lz?=
 =?iso-8859-1?Q?fGFJs1zLhmrzpiYoaYjNugwZ/7EeyrjrXPccYtnactZ98suAAjCK6talJ4?=
 =?iso-8859-1?Q?Glerk7Wehy4BSY6iT8+m50XaAoVieREUgEHSmgL4HK/w+JmgYdhbhLXJ+d?=
 =?iso-8859-1?Q?n5wzrKJuULRTnedhX0ceL6qrNW9kk4zxvsj/UBZdoj5edQPmQ/N/u95st+?=
 =?iso-8859-1?Q?52AwNmKQGDhyTW2NM4O7ZPwUiBRADTwj4HvQktkXKySNzpHF8TDVwhP+hg?=
 =?iso-8859-1?Q?Rvm6j+2GmpJvBqa5kpx98Au00TN+I7UukxOpgCxpOwCo+fZcC2UzGISgpT?=
 =?iso-8859-1?Q?2ME2pKEv4Js04Swbfbx84ejGoN3KFdCmt86kk44mhfWWtdD3s8J5gx454V?=
 =?iso-8859-1?Q?7DefOb4Pf2WEWVBEqGi6Bqw5Pm9h/yfq7pYZ6n9KgGp9SeCZtdKqE87SHl?=
 =?iso-8859-1?Q?m7goeDotMfpxXToUKPAkgfZeH77+/9AQ25TtVuojCjPYbwKypkazWZAVNS?=
 =?iso-8859-1?Q?dVfk63gwghe/OaPOlcLigr1E+n5KJy2pmhdLAY5kn/bs1pSKN/WCPhnu9l?=
 =?iso-8859-1?Q?wjKFJdcfDyndc0KnsmevJCmwLhcCok3t6ji4t3YLWhvHy/7wPMeKxLF6Ob?=
 =?iso-8859-1?Q?DLqbOsm7ladtdS9Wrfwf2hAnmKiXr7df6EU4E5wP41oSiQw+c94IUIgo/x?=
 =?iso-8859-1?Q?jourmurXEbzZYsrhNLlh8k+6cO5IvNLila+UNsOLCtgGnQESBekLuUXoBO?=
 =?iso-8859-1?Q?9eJ62gY3FeRgrKTHpkygsyU5ffD9sajZDNxidAGSO9KfPtmHci4kOdBESZ?=
 =?iso-8859-1?Q?88N8DhlQiT1st+EX1mGwmI3s3bJqWhWyadwjBv+4dr+0AZ4sS3L/AHphaD?=
 =?iso-8859-1?Q?U7EeGrwbsFJWEq/JTd0cN4XFJmaP4qFk+rzwPpNSdiYP2xOEq6JAlvn678?=
 =?iso-8859-1?Q?ZcwTbrDjqrCj9wQun0ZGKIU1BcwyrZoG95i9Cx6qavKnXvRbVu1rj6pJlu?=
 =?iso-8859-1?Q?W9lgJDXB3PZjdz+SUHIFj10RDX1oH9NIqkIsX6cLJ+Dvo8f6bC7NzpaoNl?=
 =?iso-8859-1?Q?QPEo1mmRTCIpHiszPzJENQJp4+9p+Ij4sp2lepWaELxNh86Ljs/neJgwtG?=
 =?iso-8859-1?Q?yGaAEthPCMZCiAw763MM9RMvG2Q/NgfHqvReMbieGzMGY62h7xD6tCYeBm?=
 =?iso-8859-1?Q?EKTP2FhBLENALMRIjpRZ0XPEClCvy9yw7qU4GQpgZNLNqJ7vRvL0YpX6V1?=
 =?iso-8859-1?Q?hqo4IiacYhQq+2wUA8SX5RGwa3uZlZvyjTQgiBUZ5MAqFDCTzdKkkW/lDv?=
 =?iso-8859-1?Q?cOktO/Qg8T9ZBNQYR0DFYwe77RgYUEVF3A4N++cGWvOUdADUpreaViF6qS?=
 =?iso-8859-1?Q?3rcVu3ImsOXO/WbkuUU2dUGeMerqEFGV1QBYsL0RaOUCBDq2dDp507VRyD?=
 =?iso-8859-1?Q?a+DDlXqPVqOKijavk8Hgm6U/Yf4M7UEkCow7itnbkW8t1KTAUM1NZZAg/q?=
 =?iso-8859-1?Q?WIFF54Qlm09daTbNrvEKUJ9lISIX3JEjUz8jlH5VgJZjqOkymz35MzfccE?=
 =?iso-8859-1?Q?tQzcNRqIAqC8UatJotAs6+K1M1h/7fOqPgTg0kgHQkvDbwod2YAZLsH+mu?=
 =?iso-8859-1?Q?jFCSqfwW05X9ro+zUIbx3xOKChxxnq4yJ0La/GpjcAQ/pgdpe/M5zEzaiF?=
 =?iso-8859-1?Q?oJhGGSA9lHXTy7RxAXnFznnjC8OJzSRWCgA6EyLl?=
Content-Type: multipart/alternative;
 boundary="_000_IA1PR11MB63480600CC86F78957CD3C23B2122IA1PR11MB6348namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26724ce7-4f21-4f6b-546c-08dd2fe87d1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 13:29:33.4015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wgjEeCYcGuLD9HYq5dGGajZQ90q1yQaBp5ir5S7xdBOOgRheH0JXU00AtL1zQRLzpXGJU5rJ5veG346wcsJnl6ZliTvxU5EW4bqSm1cDBVyypSSzRtPWbgBziXLl0BBO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4838
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

--_000_IA1PR11MB63480600CC86F78957CD3C23B2122IA1PR11MB6348namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Dan,

Sure I will add patch fix and suggested tags.

Regards,
Mitul
________________________________
From: Dan Carpenter <dan.carpenter@linaro.org>
Sent: Wednesday, January 8, 2025 2:15:02 PM
To: oe-kbuild@lists.linux.dev <oe-kbuild@lists.linux.dev>; Golani, Mitulkum=
ar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; intel-gfx@lists.freed=
esktop.org <intel-gfx@lists.freedesktop.org>
Cc: lkp <lkp@intel.com>; oe-kbuild-all@lists.linux.dev <oe-kbuild-all@lists=
.linux.dev>; intel-xe@lists.freedesktop.org <intel-xe@lists.freedesktop.org=
>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikul=
a@intel.com>
Subject: Re: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for pi=
pe scaler

Hi Mitul,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mitul-Golani/drm-i91=
5-scaler-Add-and-compute-scaling-factors/20250107-005708
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20250106165111.1672722-4-mitulkuma=
r.ajitkumar.golani%40intel.com
patch subject: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for =
pipe scaler
config: x86_64-randconfig-161-20250107 (https://download.01.org/0day-ci/arc=
hive/20250108/202501080440.Cxe0ZHXJ-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51ec=
cf88f5321e7c60591c5546b254b6afab99)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202501080440.Cxe0ZHXJ-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/skl_scaler.c:451 intel_atomic_setup_scaler() e=
rror: uninitialized symbol 'hscale'.
drivers/gpu/drm/i915/display/skl_scaler.c:452 intel_atomic_setup_scaler() e=
rror: uninitialized symbol 'vscale'.

vim +/hscale +451 drivers/gpu/drm/i915/display/skl_scaler.c

61e24d4de0edbc Mitul Golani  2025-01-06  312  static int intel_atomic_setup=
_scaler(struct intel_crtc_state *crtc_state,
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07  313                           =
       int num_scalers_need, struct intel_crtc *crtc,
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  314                           =
       const char *name, int idx,
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  315                           =
       struct intel_plane_state *plane_state,
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  316                           =
       int *scaler_id)
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  317  {
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  318     struct intel_display *=
display =3D to_intel_display(crtc);
61e24d4de0edbc Mitul Golani  2025-01-06  319     struct intel_crtc_scaler_s=
tate *scaler_state =3D
61e24d4de0edbc Mitul Golani  2025-01-06  320                               =
      &crtc_state->scaler_state;
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07  321     struct drm_i915_privat=
e *dev_priv =3D to_i915(crtc->base.dev);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  322     u32 mode;
7c369018e87617 Mitul Golani  2025-01-06  323     int hscale, vscale;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  324
ecf2afc59c1ea3 Ville Syrj=E4l=E4 2024-11-07  325     if (*scaler_id < 0)
ecf2afc59c1ea3 Ville Syrj=E4l=E4 2024-11-07  326             *scaler_id =3D=
 intel_allocate_scaler(scaler_state, crtc);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  327
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  328     if (drm_WARN(display->=
drm, *scaler_id < 0,
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  329                  "Cannot f=
ind scaler for %s:%d\n", name, idx))
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  330             return -EINVAL=
;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  331
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  332     /* set scaler mode */
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  333     if (plane_state && pla=
ne_state->hw.fb &&
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  334         plane_state->hw.fb=
->format->is_yuv &&
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  335         plane_state->hw.fb=
->format->num_planes > 1) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  336             struct intel_p=
lane *plane =3D to_intel_plane(plane_state->uapi.plane);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  337
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  338             if (DISPLAY_VE=
R(display) =3D=3D 9) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  339                     mode =
=3D SKL_PS_SCALER_MODE_NV12;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  340             } else if (icl=
_is_hdr_plane(dev_priv, plane->id)) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  341                     /*
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  342                      * On =
gen11+'s HDR planes we only use the scaler for
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  343                      * sca=
ling. They have a dedicated chroma upsampler, so
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  344                      * we =
don't need the scaler to upsample the UV plane.
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  345                      */
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  346                     mode =
=3D PS_SCALER_MODE_NORMAL;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  347             } else {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  348                     struct=
 intel_plane *linked =3D
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  349                           =
  plane_state->planar_linked_plane;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  350
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  351                     mode =
=3D PS_SCALER_MODE_PLANAR;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  352
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  353                     if (li=
nked)
ebb4e2b03acc3a Ville Syrj=E4l=E4 2023-04-26  354                           =
  mode |=3D PS_BINDING_Y_PLANE(linked->id);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  355             }
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  356     } else if (DISPLAY_VER=
(display) >=3D 10) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  357             mode =3D PS_SC=
ALER_MODE_NORMAL;
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07  358     } else if (num_scalers=
_need =3D=3D 1 && crtc->num_scalers > 1) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  359             /*
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  360              * when only 1=
 scaler is in use on a pipe with 2 scalers
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  361              * scaler 0 op=
erates in high quality (HQ) mode.
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  362              * In this cas=
e use scaler 0 to take advantage of HQ mode
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  363              */
3de26c81e9ae4a Ville Syrj=E4l=E4 2024-11-07  364             scaler_state->=
scalers[*scaler_id].in_use =3D false;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  365             *scaler_id =3D=
 0;
3de26c81e9ae4a Ville Syrj=E4l=E4 2024-11-07  366             scaler_state->=
scalers[0].in_use =3D true;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  367             mode =3D SKL_P=
S_SCALER_MODE_HQ;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  368     } else {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  369             mode =3D SKL_P=
S_SCALER_MODE_DYN;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  370     }
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  371
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  372     if (plane_state && pla=
ne_state->hw.fb) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  373             const struct d=
rm_framebuffer *fb =3D plane_state->hw.fb;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  374             const struct d=
rm_rect *src =3D &plane_state->uapi.src;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  375             const struct d=
rm_rect *dst =3D &plane_state->uapi.dst;
7c369018e87617 Mitul Golani  2025-01-06  376             int max_vscale, ma=
x_hscale;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  377
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  378             /*
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  379              * FIXME: When=
 two scalers are needed, but only one of
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  380              * them needs =
to downscale, we should make sure that
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  381              * the one tha=
t needs downscaling support is assigned
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  382              * as the firs=
t scaler, so we don't reject downscaling
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  383              * unnecessari=
ly.
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  384              */
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  385
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  386             if (DISPLAY_VE=
R(display) >=3D 14) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  387                     /*
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  388                      * On =
versions 14 and up, only the first
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  389                      * sca=
ler supports a vertical scaling factor
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  390                      * of =
more than 1.0, while a horizontal
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  391                      * sca=
ling factor of 3.0 is supported.
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  392                      */
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  393                     max_hs=
cale =3D 0x30000 - 1;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  394                     if (*s=
caler_id =3D=3D 0)
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  395                           =
  max_vscale =3D 0x30000 - 1;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  396                     else
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  397                           =
  max_vscale =3D 0x10000;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  398
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  399             } else if (DIS=
PLAY_VER(display) >=3D 10 ||
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  400                        !in=
tel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  401                     max_hs=
cale =3D 0x30000 - 1;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  402                     max_vs=
cale =3D 0x30000 - 1;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  403             } else {
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  404                     max_hs=
cale =3D 0x20000 - 1;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  405                     max_vs=
cale =3D 0x20000 - 1;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  406             }
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  407
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  408             /*
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  409              * FIXME: We s=
hould change the if-else block above to
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  410              * support HQ =
vs dynamic scaler properly.
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  411              */
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  412
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  413             /* Check if re=
quired scaling is within limits */
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  414             hscale =3D drm=
_rect_calc_hscale(src, dst, 1, max_hscale);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  415             vscale =3D drm=
_rect_calc_vscale(src, dst, 1, max_vscale);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  416
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  417             if (hscale < 0=
 || vscale < 0) {
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  418                     drm_db=
g_kms(display->drm,
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  419                           =
      "Scaler %d doesn't support required plane scaling\n",
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  420                           =
      *scaler_id);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  421                     drm_re=
ct_debug_print("src: ", src, true);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  422                     drm_re=
ct_debug_print("dst: ", dst, false);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  423
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  424                     return=
 -EINVAL;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  425             }
7c369018e87617 Mitul Golani  2025-01-06  426     }
7c369018e87617 Mitul Golani  2025-01-06  427
7c369018e87617 Mitul Golani  2025-01-06  428     if (crtc_state->pch_pfit.e=
nabled) {
7c369018e87617 Mitul Golani  2025-01-06  429             struct drm_rect sr=
c;
7c369018e87617 Mitul Golani  2025-01-06  430
7c369018e87617 Mitul Golani  2025-01-06  431             drm_rect_init(&src=
, 0, 0,
7c369018e87617 Mitul Golani  2025-01-06  432                           drm_=
rect_width(&crtc_state->pipe_src) << 16,
7c369018e87617 Mitul Golani  2025-01-06  433                           drm_=
rect_height(&crtc_state->pipe_src) << 16);
7c369018e87617 Mitul Golani  2025-01-06  434
7c369018e87617 Mitul Golani  2025-01-06  435             hscale =3D drm_rec=
t_calc_hscale(&src, &crtc_state->pch_pfit.dst,
7c369018e87617 Mitul Golani  2025-01-06  436                               =
            0, INT_MAX);
7c369018e87617 Mitul Golani  2025-01-06  437             vscale =3D drm_rec=
t_calc_vscale(&src, &crtc_state->pch_pfit.dst,
7c369018e87617 Mitul Golani  2025-01-06  438                               =
            0, INT_MAX);
7c369018e87617 Mitul Golani  2025-01-06  439
7c369018e87617 Mitul Golani  2025-01-06  440             if (hscale < 0 || =
vscale < 0) {
7c369018e87617 Mitul Golani  2025-01-06  441                     drm_dbg_km=
s(display->drm,
7c369018e87617 Mitul Golani  2025-01-06  442                               =
  "Scaler %d doesn't support required pipe scaling\n",
7c369018e87617 Mitul Golani  2025-01-06  443                               =
  *scaler_id);
7c369018e87617 Mitul Golani  2025-01-06  444                     drm_rect_d=
ebug_print("src: ", &src, true);
7c369018e87617 Mitul Golani  2025-01-06  445                     drm_rect_d=
ebug_print("dst: ", &crtc_state->pch_pfit.dst, false);
7c369018e87617 Mitul Golani  2025-01-06  446
7c369018e87617 Mitul Golani  2025-01-06  447                     return -EI=
NVAL;
7c369018e87617 Mitul Golani  2025-01-06  448             }
7c369018e87617 Mitul Golani  2025-01-06  449     }
0641adb4624b5e Mitul Golani  2025-01-06  450
0641adb4624b5e Mitul Golani  2025-01-06 @451     scaler_state->scalers[*sca=
ler_id].hscale =3D hscale;
0641adb4624b5e Mitul Golani  2025-01-06 @452     scaler_state->scalers[*sca=
ler_id].vscale =3D vscale;

vscale and hscale are initialized if crtc_state->pch_pfit.enabled or
plane_state->hw.fb is true, but otherwise they aren't.


8976b18249407d Ville Syrj=E4l=E4 2023-04-18  453
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07  454     drm_dbg_kms(display->d=
rm, "Attached scaler id %u.%u to %s:%d\n",
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07  455                 crtc->pipe=
, *scaler_id, name, idx);
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  456     scaler_state->scalers[=
*scaler_id].mode =3D mode;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  457
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  458     return 0;
8976b18249407d Ville Syrj=E4l=E4 2023-04-18  459  }

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


--_000_IA1PR11MB63480600CC86F78957CD3C23B2122IA1PR11MB6348namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Dan,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Sure I will add patch fix and suggested tags.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Mitul</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Dan Carpenter &lt;dan=
.carpenter@linaro.org&gt;<br>
<b>Sent:</b> Wednesday, January 8, 2025 2:15:02 PM<br>
<b>To:</b> oe-kbuild@lists.linux.dev &lt;oe-kbuild@lists.linux.dev&gt;; Gol=
ani, Mitulkumar Ajitkumar &lt;mitulkumar.ajitkumar.golani@intel.com&gt;; in=
tel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.org&gt;<br>
<b>Cc:</b> lkp &lt;lkp@intel.com&gt;; oe-kbuild-all@lists.linux.dev &lt;oe-=
kbuild-all@lists.linux.dev&gt;; intel-xe@lists.freedesktop.org &lt;intel-xe=
@lists.freedesktop.org&gt;; Nautiyal, Ankit K &lt;ankit.k.nautiyal@intel.co=
m&gt;; Nikula, Jani &lt;jani.nikula@intel.com&gt;<br>
<b>Subject:</b> Re: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors=
 for pipe scaler</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Mitul,<br>
<br>
kernel test robot noticed the following build warnings:<br>
<br>
<a href=3D"https://git-scm.com/docs/git-format-patch#_base_tree_information=
]">https://git-scm.com/docs/git-format-patch#_base_tree_information]</a><br=
>
<br>
url:&nbsp;&nbsp;&nbsp; <a href=3D"https://github.com/intel-lab-lkp/linux/co=
mmits/Mitul-Golani/drm-i915-scaler-Add-and-compute-scaling-factors/20250107=
-005708">
https://github.com/intel-lab-lkp/linux/commits/Mitul-Golani/drm-i915-scaler=
-Add-and-compute-scaling-factors/20250107-005708</a><br>
base:&nbsp;&nbsp; git://anongit.freedesktop.org/drm-intel for-linux-next<br=
>
patch link:&nbsp;&nbsp;&nbsp; <a href=3D"https://lore.kernel.org/r/20250106=
165111.1672722-4-mitulkumar.ajitkumar.golani%40intel.com">
https://lore.kernel.org/r/20250106165111.1672722-4-mitulkumar.ajitkumar.gol=
ani%40intel.com</a><br>
patch subject: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for =
pipe scaler<br>
config: x86_64-randconfig-161-20250107 (<a href=3D"https://download.01.org/=
0day-ci/archive/20250108/202501080440.Cxe0ZHXJ-lkp@intel.com/config">https:=
//download.01.org/0day-ci/archive/20250108/202501080440.Cxe0ZHXJ-lkp@intel.=
com/config</a>)<br>
compiler: clang version 19.1.3 (<a href=3D""></a>https://github.com/llvm/ll=
vm-project ab51eccf88f5321e7c60591c5546b254b6afab99)<br>
<br>
If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of<br>
the same patch/commit), kindly add following tags<br>
| Reported-by: kernel test robot &lt;lkp@intel.com&gt;<br>
| Reported-by: Dan Carpenter &lt;dan.carpenter@linaro.org&gt;<br>
| Closes: <a href=3D"https://lore.kernel.org/r/202501080440.Cxe0ZHXJ-lkp@in=
tel.com/">
https://lore.kernel.org/r/202501080440.Cxe0ZHXJ-lkp@intel.com/</a><br>
<br>
smatch warnings:<br>
drivers/gpu/drm/i915/display/skl_scaler.c:451 intel_atomic_setup_scaler() e=
rror: uninitialized symbol 'hscale'.<br>
drivers/gpu/drm/i915/display/skl_scaler.c:452 intel_atomic_setup_scaler() e=
rror: uninitialized symbol 'vscale'.<br>
<br>
vim +/hscale +451 drivers/gpu/drm/i915/display/skl_scaler.c<br>
<br>
61e24d4de0edbc Mitul Golani&nbsp; 2025-01-06&nbsp; 312&nbsp; static int int=
el_atomic_setup_scaler(struct intel_crtc_state *crtc_state,<br>
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07&nbsp; 313&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; int num_scalers_need, struct intel_crtc *crtc,<b=
r>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 314&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; const char *name, int idx,<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 315&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_plane_state *plane_state,<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 316&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; int *scaler_id)<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 317&nbsp; {<br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 318&nbsp;&nbsp;&nbsp;&nbs=
p; struct intel_display *display =3D to_intel_display(crtc);<br>
61e24d4de0edbc Mitul Golani&nbsp; 2025-01-06&nbsp; 319&nbsp;&nbsp;&nbsp;&nb=
sp; struct intel_crtc_scaler_state *scaler_state =3D<br>
61e24d4de0edbc Mitul Golani&nbsp; 2025-01-06&nbsp; 320&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;scaler_st=
ate;<br>
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07&nbsp; 321&nbsp;&nbsp;&nbsp;&nbs=
p; struct drm_i915_private *dev_priv =3D to_i915(crtc-&gt;base.dev);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 322&nbsp;&nbsp;&nbsp;&nbs=
p; u32 mode;<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 323&nbsp;&nbsp;&nbsp;&nb=
sp; int hscale, vscale;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 324&nbsp; <br>
ecf2afc59c1ea3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 325&nbsp;&nbsp;&nbsp;&nbs=
p; if (*scaler_id &lt; 0)<br>
ecf2afc59c1ea3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 326&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *scaler_id =3D intel_all=
ocate_scaler(scaler_state, crtc);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 327&nbsp; <br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 328&nbsp;&nbsp;&nbsp;&nbs=
p; if (drm_WARN(display-&gt;drm, *scaler_id &lt; 0,<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 329&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &quot;Cannot find scaler for %s:%d\n&quot;, name, idx))<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 330&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -EINVAL;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 331&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 332&nbsp;&nbsp;&nbsp;&nbs=
p; /* set scaler mode */<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 333&nbsp;&nbsp;&nbsp;&nbs=
p; if (plane_state &amp;&amp; plane_state-&gt;hw.fb &amp;&amp;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 334&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; plane_state-&gt;hw.fb-&gt;format-&gt;is_yuv &amp=
;&amp;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 335&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; plane_state-&gt;hw.fb-&gt;format-&gt;num_planes =
&gt; 1) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 336&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_plane *plan=
e =3D to_intel_plane(plane_state-&gt;uapi.plane);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 337&nbsp; <br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 338&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(display)=
 =3D=3D 9) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 339&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; mode =3D SKL_PS_SCALER_MODE_NV12;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 340&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (icl_is_hdr_pl=
ane(dev_priv, plane-&gt;id)) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 341&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; /*<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 342&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * On gen11+'s HDR planes we only use the scal=
er for<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 343&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * scaling. They have a dedicated chroma upsam=
pler, so<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 344&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * we don't need the scaler to upsample the UV=
 plane.<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 345&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 346&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; mode =3D PS_SCALER_MODE_NORMAL;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 347&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 348&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; struct intel_plane *linked =3D<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 349&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pla=
ne_state-&gt;planar_linked_plane;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 350&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 351&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; mode =3D PS_SCALER_MODE_PLANAR;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 352&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 353&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; if (linked)<br>
ebb4e2b03acc3a Ville Syrj=E4l=E4 2023-04-26&nbsp; 354&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod=
e |=3D PS_BINDING_Y_PLANE(linked-&gt;id);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 355&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 356&nbsp;&nbsp;&nbsp;&nbs=
p; } else if (DISPLAY_VER(display) &gt;=3D 10) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 357&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mode =3D PS_SCALER_MODE_=
NORMAL;<br>
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07&nbsp; 358&nbsp;&nbsp;&nbsp;&nbs=
p; } else if (num_scalers_need =3D=3D 1 &amp;&amp; crtc-&gt;num_scalers &gt=
; 1) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 359&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 360&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * when only 1 scal=
er is in use on a pipe with 2 scalers<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 361&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * scaler 0 operate=
s in high quality (HQ) mode.<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 362&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * In this case use=
 scaler 0 to take advantage of HQ mode<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 363&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
3de26c81e9ae4a Ville Syrj=E4l=E4 2024-11-07&nbsp; 364&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scaler_state-&gt;scalers=
[*scaler_id].in_use =3D false;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 365&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *scaler_id =3D 0;<br>
3de26c81e9ae4a Ville Syrj=E4l=E4 2024-11-07&nbsp; 366&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scaler_state-&gt;scalers=
[0].in_use =3D true;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 367&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mode =3D SKL_PS_SCALER_M=
ODE_HQ;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 368&nbsp;&nbsp;&nbsp;&nbs=
p; } else {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 369&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mode =3D SKL_PS_SCALER_M=
ODE_DYN;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 370&nbsp;&nbsp;&nbsp;&nbs=
p; }<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 371&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 372&nbsp;&nbsp;&nbsp;&nbs=
p; if (plane_state &amp;&amp; plane_state-&gt;hw.fb) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 373&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct drm_framebu=
ffer *fb =3D plane_state-&gt;hw.fb;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 374&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct drm_rect *s=
rc =3D &amp;plane_state-&gt;uapi.src;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 375&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct drm_rect *d=
st =3D &amp;plane_state-&gt;uapi.dst;<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 376&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int max_vscale, max_hsc=
ale;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 377&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 378&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 379&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * FIXME: When two =
scalers are needed, but only one of<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 380&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * them needs to do=
wnscale, we should make sure that<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 381&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * the one that nee=
ds downscaling support is assigned<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 382&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * as the first sca=
ler, so we don't reject downscaling<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 383&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * unnecessarily.<b=
r>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 384&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 385&nbsp; <br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 386&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(display)=
 &gt;=3D 14) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 387&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; /*<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 388&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * On versions 14 and up, only the first<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 389&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * scaler supports a vertical scaling factor<b=
r>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 390&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * of more than 1.0, while a horizontal<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 391&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * scaling factor of 3.0 is supported.<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 392&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 393&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; max_hscale =3D 0x30000 - 1;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 394&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; if (*scaler_id =3D=3D 0)<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 395&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; max=
_vscale =3D 0x30000 - 1;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 396&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; else<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 397&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; max=
_vscale =3D 0x10000;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 398&nbsp; <br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 399&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (DISPLAY_VER(d=
isplay) &gt;=3D 10 ||<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 400&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !intel_format_info_is_yuv_semipla=
nar(fb-&gt;format, fb-&gt;modifier)) {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 401&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; max_hscale =3D 0x30000 - 1;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 402&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; max_vscale =3D 0x30000 - 1;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 403&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 404&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; max_hscale =3D 0x20000 - 1;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 405&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; max_vscale =3D 0x20000 - 1;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 406&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 407&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 408&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 409&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * FIXME: We should=
 change the if-else block above to<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 410&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * support HQ vs dy=
namic scaler properly.<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 411&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 412&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 413&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Check if required sca=
ling is within limits */<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 414&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hscale =3D drm_rect_calc=
_hscale(src, dst, 1, max_hscale);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 415&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vscale =3D drm_rect_calc=
_vscale(src, dst, 1, max_vscale);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 416&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 417&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (hscale &lt; 0 || vsc=
ale &lt; 0) {<br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 418&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; drm_dbg_kms(display-&gt;drm,<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 419&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &quot;Scaler %d doesn't support required plane scaling=
\n&quot;,<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 420&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; *scaler_id);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 421&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; drm_rect_debug_print(&quot;src: &quot;, src, true);=
<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 422&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; drm_rect_debug_print(&quot;dst: &quot;, dst, false)=
;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 423&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 424&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; return -EINVAL;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 425&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 426&nbsp;&nbsp;&nbsp;&nb=
sp; }<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 427&nbsp; <br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 428&nbsp;&nbsp;&nbsp;&nb=
sp; if (crtc_state-&gt;pch_pfit.enabled) {<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 429&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_rect src;<br=
>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 430&nbsp; <br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 431&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_rect_init(&amp;src,=
 0, 0,<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 432&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_rect_width=
(&amp;crtc_state-&gt;pipe_src) &lt;&lt; 16,<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 433&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_rect_heigh=
t(&amp;crtc_state-&gt;pipe_src) &lt;&lt; 16);<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 434&nbsp; <br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 435&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hscale =3D drm_rect_cal=
c_hscale(&amp;src, &amp;crtc_state-&gt;pch_pfit.dst,<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 436&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 0, INT_MAX);<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 437&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vscale =3D drm_rect_cal=
c_vscale(&amp;src, &amp;crtc_state-&gt;pch_pfit.dst,<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 438&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 0, INT_MAX);<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 439&nbsp; <br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 440&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (hscale &lt; 0 || vs=
cale &lt; 0) {<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 441&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; drm_dbg_kms(display-&gt;drm,<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 442&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; &quot;Scaler %d doesn't support required pipe scaling=
\n&quot;,<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 443&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; *scaler_id);<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 444&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; drm_rect_debug_print(&quot;src: &quot;, &amp;src, =
true);<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 445&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; drm_rect_debug_print(&quot;dst: &quot;, &amp;crtc_=
state-&gt;pch_pfit.dst, false);<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 446&nbsp; <br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 447&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; return -EINVAL;<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 448&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
7c369018e87617 Mitul Golani&nbsp; 2025-01-06&nbsp; 449&nbsp;&nbsp;&nbsp;&nb=
sp; }<br>
0641adb4624b5e Mitul Golani&nbsp; 2025-01-06&nbsp; 450&nbsp; <br>
0641adb4624b5e Mitul Golani&nbsp; 2025-01-06 @451&nbsp;&nbsp;&nbsp;&nbsp; s=
caler_state-&gt;scalers[*scaler_id].hscale =3D hscale;<br>
0641adb4624b5e Mitul Golani&nbsp; 2025-01-06 @452&nbsp;&nbsp;&nbsp;&nbsp; s=
caler_state-&gt;scalers[*scaler_id].vscale =3D vscale;<br>
<br>
vscale and hscale are initialized if crtc_state-&gt;pch_pfit.enabled or<br>
plane_state-&gt;hw.fb is true, but otherwise they aren't.<br>
<br>
<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 453&nbsp; <br>
3360d4d6d42ab3 Ville Syrj=E4l=E4 2024-11-07&nbsp; 454&nbsp;&nbsp;&nbsp;&nbs=
p; drm_dbg_kms(display-&gt;drm, &quot;Attached scaler id %u.%u to %s:%d\n&q=
uot;,<br>
7488f64e89b02f Ville Syrj=E4l=E4 2024-11-07&nbsp; 455&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
crtc-&gt;pipe, *scaler_id, name, idx);<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 456&nbsp;&nbsp;&nbsp;&nbs=
p; scaler_state-&gt;scalers[*scaler_id].mode =3D mode;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 457&nbsp; <br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 458&nbsp;&nbsp;&nbsp;&nbs=
p; return 0;<br>
8976b18249407d Ville Syrj=E4l=E4 2023-04-18&nbsp; 459&nbsp; }<br>
<br>
-- <br>
0-DAY CI Kernel Test Service<br>
<a href=3D"https://github.com/intel/lkp-tests/wiki">https://github.com/inte=
l/lkp-tests/wiki</a><br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_IA1PR11MB63480600CC86F78957CD3C23B2122IA1PR11MB6348namp_--
