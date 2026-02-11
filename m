Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOhfNhahjGmPrgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 16:32:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F97125B3B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 16:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CB910E61D;
	Wed, 11 Feb 2026 15:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWEu7tkT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F02110E61E;
 Wed, 11 Feb 2026 15:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770823954; x=1802359954;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+wPwznzLDoMgqecduc93f9HlyWg+swlOmw+U7WRxMvc=;
 b=TWEu7tkTPfOHcl5BIUr5Ljxo4+5U67fQ+ZM+VK4u+8nRXGgqgEW3uw3h
 G2ne3NhLGdpUAxMmiRMca+S9+RzIRRLxJNgls56KZwJEj2U5bHm6D1QGi
 3LCMqHXx95jpBsyX12nNJyDHQxeq9UwQbb5GuU+l9vTszLdz/kvQlP0rV
 IJRqynLO3/RVFJlTA8eah/ZXnizC+6j5g3nfxDcKg4JQEinxG3BKDu40b
 NSfrwza6AZIet67tInW/FQbtcF7V5tD3PofJPK4XqwEDPp2lY4BxoEMc9
 +7B8gbCwpawySSx97TJ/9jExXI6WYJJU5M/WnJ25QMVzxK3KL8LFytfNZ A==;
X-CSE-ConnectionGUID: iuGBdPKATSOZgzQAT3fJoQ==
X-CSE-MsgGUID: NEkkU4V3RwCaxhhrg6ryow==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="89564980"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="89564980"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 07:32:34 -0800
X-CSE-ConnectionGUID: S1YT4a3AQraqIJ1/XWujMg==
X-CSE-MsgGUID: Gvtck3y3QZmyWnU/V9EzgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211390144"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 07:32:34 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 07:32:33 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 07:32:33 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 07:32:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eabcoPUnDhS8bRoh99YyUB2TqGIDOdRNllZ+0wpEdNOLk+DMpP4pflN0DegZNHUJKZMq53HnMx+T+RmprUkhNiSKXTchAv8VlzoW+E/JouKyjwjKcFqHNEClGg/dED+fClXU+ca7MER7Q4RqGpQc0UJFp1Kc+MnnMH2gp0biXouQWQOkSOXaayXlVmh6c1AWXikHiE9kKUWcZy0tdcZCzAO1r6ZgL0f5IHkGKkHUL8HngO4HxL/BfY6DwgMd6qlwQbReTLhrSbFgdFMSZp+acqxgpf10BzGQ9i1lQ5EOu7jdcWnq9oIdTOTJ28J2c61kcxlN+B6bG/FLdgiNb6cuHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+wPwznzLDoMgqecduc93f9HlyWg+swlOmw+U7WRxMvc=;
 b=oXJFKBHM9zLD3WPm+sf/euM+tWycY3Pda0slnZHd7NeVfZ0CBnel4loZHwS5surNUKnC7qM8Fp3v2HhiLBGgnQ7dpTKxito2TTITO5bXftyyZBBVid309+TsMZZcQ0KsTRDpY2c8DaZJlVmlonU1TNNxJNU4rUg6BrR498myt8CGegLaCugdL6Pqdyh4uFweGFCKBB5PknQ5DibdKH2Lr4ZJ7HwNC391nGERCn/vj0TrnIG9eoZi9hlz7v4xexuYdUOxdLOruhLll6pNXc1NlSI1aBYvZvrTxbiMAsCFtc9epO3eY6/fs9JAV5KHA0ODLizslC++E8hTuE0S3W/6KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA3PR11MB9487.namprd11.prod.outlook.com (2603:10b6:806:47e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Wed, 11 Feb
 2026 15:32:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 15:32:31 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v4 00/20] Make Display free from i915_reg.h
Thread-Topic: [v4 00/20] Make Display free from i915_reg.h
Thread-Index: AQHcloHD2qp/PytMrEG2cqgxHf+8qLV9f2AAgAAqTcA=
Date: Wed, 11 Feb 2026 15:32:31 +0000
Message-ID: <DM4PR11MB6360A896E2D3DC7AD71C9D97F463A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <8db65f70ee8ee5e0f0b77b6b7b5c0405e1bc42b6@intel.com>
In-Reply-To: <8db65f70ee8ee5e0f0b77b6b7b5c0405e1bc42b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA3PR11MB9487:EE_
x-ms-office365-filtering-correlation-id: ca530d36-9898-4b42-9cc1-08de6982c5c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?FuT0hh39D+Z7MQHHSiGaA5b4Fp4516W5weq+TdbwUCxnyaahOuWWtCXRMbRi?=
 =?us-ascii?Q?sfW7E48imKT1tfWF1WiHlU0ftoJAPtCeshl+f7BFYwOTnzby0c6U7/gdP3Fe?=
 =?us-ascii?Q?9PB17xo73FF6uZbYD5Ud008vyrU7HUX+sxUdPrw9KkH9yQGrrnr6QCyDLD7Q?=
 =?us-ascii?Q?AwKgVQTY+GjGVBupCCgxfxuFlBJqIIC4Cbz/oKJe8sE7rmpVo7k7zuiSUPcr?=
 =?us-ascii?Q?dVttpiQ0I6XgxXKBF8DraJE0TUririxnkO9r8/STtYN/h80MxWzJHXPouK5i?=
 =?us-ascii?Q?YwYnxgsr1LIiIjAhTobsf8zyt/WrKUA2Vcoi5SWE29WGx+ByL1c6LeL2UTA+?=
 =?us-ascii?Q?XhxkkEd22hSH5uxM3+mN3a4/PqTBgbu+y8ABFIDu8a1LS1Vu+HKhsOdAh3ix?=
 =?us-ascii?Q?sYdHN6ZZEQhUUP93V12AmcDt+paZZkSrVQcaY9brGcIH5zLHiUKH3MUZZHjw?=
 =?us-ascii?Q?IT+MSnPeobDHHPcR5IocufV3ubtAQlwMYv+KdOY0tpp1wcuVGgIIJBSeUWWG?=
 =?us-ascii?Q?2LhVOeXdo17PPZ3DBu7Ozl51BYoPN8RD5LzDomhtSAwW0LWuXV3zzK8LdyFW?=
 =?us-ascii?Q?mJ8zN+C2GiB6suI3iWKLrGtVWRikM+u+VniX6F3IZTzVUfpOPGn2vapLk0MK?=
 =?us-ascii?Q?9mVcc40/+qH7tat1Cr9kGTk7FONjatMBQVZYALWOjGum/yoAZEDbyYvD6F1h?=
 =?us-ascii?Q?s4ilhhU44LEjoSZKK5nmuKv/r3+QkbkeNgqVG59gQDkyOANbzjS0eGruVeBn?=
 =?us-ascii?Q?H1GT+REpa46ZydH+0BCA9acFQyyexHdUUze4guzsdbdycn6YvFTqUMFv1Ak6?=
 =?us-ascii?Q?015fRRF0aURb44Yy5/PRCh5UPIpuNbu8fnTCl+ZbYtepCWbrVamB5Dzlb2LK?=
 =?us-ascii?Q?9WUj/T6b7E3dKPOF/ufOYjbBJO9VhnKXSBHFLsUCCEXfiV1IUpdZcE2a1r/P?=
 =?us-ascii?Q?JYcpg/rMbr1kXqVvtMb4jHe37ymm0sIn8kt/JKHI4FzkdKFSR67MNv3LBSdB?=
 =?us-ascii?Q?9gjKgGzxLHGG2g9jl5VUxv9yW3+NLf8MeEeCF/O8zlBvoluIqQUypWSn/Wjj?=
 =?us-ascii?Q?7xFNFo7sHcG/cHfAoW7lZ9CifayBeSEbHpL+ffV5IF75N2KvbDuwSp+r/DqJ?=
 =?us-ascii?Q?xeI5MbnWNdadrTOMwL97/iXVdg+acnBk3bTb5f3+bTorIcXt0CR808GtmDA1?=
 =?us-ascii?Q?FIynaTvHV+2w4yT5J0H/f4uGXQQ3ustdBB6qKp7cxuhXtO8Xg5MENcS3et2W?=
 =?us-ascii?Q?mq99QX4F+4iteopK5ddTDoOmRa4C1Ylf5HH/cweh1WaIxR8jWv3IO/lgzbj6?=
 =?us-ascii?Q?+RPOMZKt2+emEQLn7XJKZ+sGMSFzrGXK4kZdJYK2h93MgXpUIhuq6mzCLBks?=
 =?us-ascii?Q?6fSXPiOw1fS4EKcIzd/aOdtNLz27sHUyXVCGAQG+u9Y15IepNyxlqns0YnHI?=
 =?us-ascii?Q?6vzWeMj3mlmQVTCWXDNY42t4WvwNUj6gD31MYRLRdTq9TfkSi806J4rWZ7A8?=
 =?us-ascii?Q?/LvVgbuPIprqjvu4WWe++35xevR+kaIps73eITEZEx9NRoveX8DCuhkZKKjO?=
 =?us-ascii?Q?Y1Y7KlQb6lJk96qfz7rlrv9GyLTb6slK1k5cZ/TKehEmHL4GrT4VIDXxmUad?=
 =?us-ascii?Q?r9wKrX1tEFCmOdadOS8GIVI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bq3iE5ncUhy7bnNqADqP1EpjVX+jgeO14hPj33G4LHhI3n8qYjgEKSKe6dJG?=
 =?us-ascii?Q?tzAq+j38/DBJ/z5Zo3dtqv3WJSRQZN138XrSh7QOM3PY0T639uYcOsCxBFLr?=
 =?us-ascii?Q?C4yF3vNm13563mxeGyYw/KuxZoFtP8/b3r9Upqd/g0Qxv4umb8ud3YzJngeI?=
 =?us-ascii?Q?TLu30Ki+1VGxCObIHmkNlitnUGK3swalQvT5n8MdWpE03wE1t3viIPpZretI?=
 =?us-ascii?Q?Pjw8MloyCq+Aig0atShCdmfKRS5sgRI3yfj4fWF2zw138sTCvhy/dXAD4iRl?=
 =?us-ascii?Q?sBLWh9w4T88kTU/Fjo5qZrn+ZcpFCrnjoDMhvOTcDpnp/HJU1ykadKpDFkFx?=
 =?us-ascii?Q?CdqtXzra8z9kG0TNjaaiazINgfYshMzybJYOTt3//LDivSml4fCzUlZKZhMO?=
 =?us-ascii?Q?Iue8DGYRZVdVbaG5wKQlES9eUrVBIkkhM1w3pJIdIsAMW7ZlGhlIFhzu6Efq?=
 =?us-ascii?Q?BWl72HWC5dFFM7rV1gexS3ojyfvCX6cZfeEKCVhkUDgJ1QWr8oz4AfrHTeRA?=
 =?us-ascii?Q?ZUqFtzp90DCoKTAccJi0lvZ19eyCsC5Jro7ERgUtH/3gL4hQ3BHP9ua/sI7u?=
 =?us-ascii?Q?Xr6VhjK5wHYIdEMAz1dRDccMZkGJb+OLBrK6jcO4ZwP3Oph2tPzQ23pwnWj4?=
 =?us-ascii?Q?8T3JpswLeDJj7n9qeuB5lzINNht46AMkk7aKCA3YcpDPCOhMlzOgj8R0Cygm?=
 =?us-ascii?Q?XSV+dcZSPsam4U7zlfmDaGjsepMvYkg/zK4WOxxDYvyL6+Ncr8ZDfxF1jXnX?=
 =?us-ascii?Q?SArq0WIGGev+H2jOs9ISnN4aJd9+P256i8JCb21lM3kDNoIbIfxWINlA1oVC?=
 =?us-ascii?Q?J14P29QPyeLTeW4pT+3vklefenGdHWv7mz7pgC+YNeJSmjyK2GnFrgN2jOmx?=
 =?us-ascii?Q?ANFQaABFYuRaGtC0QJZrIuGQ6IOtSY+MFTxz1wCSBDRZSIBdjY8o09dp/bBF?=
 =?us-ascii?Q?UqcYGqwNOF3yZ8PCgGJ6dpOXzvH0TBIfmVTU6YAY2pnAWJb9R13gGf7f6eDv?=
 =?us-ascii?Q?VyP5OqQYqMYXxLa3T5fR8IkOXIg8mTFpBCM6n2aEnV8AWHKEbqwJoRErfApC?=
 =?us-ascii?Q?K6ez3J31wWhEmCKS68Pwl3jCp1j5rCD2U+AkNd8R+Z4Qab/h5chQZgwklH0q?=
 =?us-ascii?Q?wQ/lyG99qqHJ5zWJBQ8iAHwZdQS/dM4pl9p8BnTifReGwuNiL+17Bd4GBBsh?=
 =?us-ascii?Q?gzeRne85ZyxotCZakDfuU/08i36gYZh9ClCQ492SxEejXpw5++3Exlzix8lZ?=
 =?us-ascii?Q?fCnIgmF/aoNcWTOy5gMn5i3gAGdhzbo5tkhnNhPY5JD0RbshmtbKrOS94WmG?=
 =?us-ascii?Q?q2k3sQw/y8NfKKlhaaIZWKdKD69hImYPsHY9YNaQrAjPJvpxR1hQAWW0k8t8?=
 =?us-ascii?Q?AsOOhF4xGY70NLQH39411DOebUKyK/RJzaqK4sT5nAWgwk4F9xTsloxBZz/9?=
 =?us-ascii?Q?hw9YnN/KcIMhEii/2qzN+xAVOCy0FPdLK/PGl4XTILNDEurmWVsWnd2pW8L0?=
 =?us-ascii?Q?ayNNeZ7toY0molz/YY+OQr5JI/N9B4sH9H/rfzs+avOuGqKw+Or8nP9aTrmQ?=
 =?us-ascii?Q?pGTPl+dDs61zHU8sKqVYKREFJsVrDEtD5amw+yMuIprVSOG3kLXfsZ59ca/+?=
 =?us-ascii?Q?Qg1fDplzXIy2+C3MZEZVEo5+lLr+fhWevIbHVqTmIRDKE5Hg78fA83vfOeSC?=
 =?us-ascii?Q?MbDB/qvjttDheyo5Ff7wv9BOdSxZaH+wu1wBGu4aLqQmWMNE1IzYBJZJ+gXV?=
 =?us-ascii?Q?BkXzEOAd5A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca530d36-9898-4b42-9cc1-08de6982c5c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2026 15:32:31.7604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rJQvb2fNB4x20fgkOym2T1W+5N6dX2zOe+C3s3yQDqFhH686FUd5EYbMj78PlfVONpe3NBiCMolqVS9TQarQVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9487
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 32F97125B3B
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, February 11, 2026 6:29 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v4 00/20] Make Display free from i915_reg.h
>=20
> On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move the common register definition to per feature header which makes
> > display files free from including i915_reg.h.
> > This will help avoid dupicate definitions and includes and can serve
> > as a common file for xe, i915 and display module.
>=20
> Good stuff, thanks. I think it's all R-b now. Please use SPDX in patch
> 14 while applying.

Sure, will use SPDX while merging in patch14.

Thanks a lot Jani for the review, valuable feedback and suggestions.

> Oh, and a follow-up patch could remove
> drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h.

Sure, will send that out.=20

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> --
> Jani Nikula, Intel
