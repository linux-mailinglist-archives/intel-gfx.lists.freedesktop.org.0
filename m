Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BE59601B2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 08:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2919610E271;
	Tue, 27 Aug 2024 06:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lL4PpLBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA1510E271
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 06:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724740224; x=1756276224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hfi2VsC5hosSOKSewJpzHvwkefU5GPRtLPti6H6nzh4=;
 b=lL4PpLBH7nJ8yxsFmMKgR091N1IkPTDYRl9vNI6UC+VwKfZujbxYyPvg
 /cdbux4tgopS11MylSDmnjdEoIGKt/3HNnB5IJ3tZ0e0FteczA0iaaLzx
 0eSiptffApRGyRvC6P+LjRl6hicAhNXoZoQdCn5BFeWO2MQpPvqUdyaFX
 u2PYtLJoCTTJwJxSUkbxGp/5tRvpXACRnKMl3ljBJ7sfGXKHRkOlNr2vv
 b7cHkYRkJx13sixS9XiY9zT5HPDQ8WQmd73OUiUkPbrG9n77KYIWuPJm1
 ak+Stl1+RKxywvmgSYzZvJRj7VQSVI952CPbpUPC3FBJo8BAxC/YKGjCM A==;
X-CSE-ConnectionGUID: AMlM95HcSGuKMfofPO9UpQ==
X-CSE-MsgGUID: e1IP0XcMRxy7mE/y50TuNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="34605763"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="34605763"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 23:30:06 -0700
X-CSE-ConnectionGUID: xtdbI510Ro6k/632SEj4KQ==
X-CSE-MsgGUID: pQpjNgPXQni+Bpo6y/4RvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="62735509"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 23:30:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 23:30:05 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 23:30:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 23:30:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 23:30:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fzH3VUVvY4aDmW+dPbhNxaByKHFU7qWPwpRzRIg9rGnYcSF70BTZlW955S98ioL3GTlcSRYhsavew7QhdESGH6oRrjja9nfYQnGoMcqGwzMozMzHmcT6N4Rhsii57rLL6Uh0jdLmxUO5vdKcaXhEGwMdznHHTpGjjcAzqNs1r+I7X54pJ/r8ZaMUCofNfrm9L8We2Z/XMvhmezscaPqp7lGsL8L51FelU+IYqNDLCASoz/+UY9OsreGbdq9AZi9bnA4TvioBOlmsQM77kBUZmuK6dTsxc9zoPk4ZmUPuUdEfoKlQpQAAAIz+Ggh126k+SY7vNWdkpVM69YmxukyviQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4SQU6sUXVWqyjHDE9kJAtqG1tLdvKesXknhg3aYMQE=;
 b=d+8dwjQTRXD0L7AUN0bWw4sKQ8LczFwO0RwAwanSsTkOeo0ve7+vW10hjMcJwRXukkmaEx+3PKa3Wjc5EscwPTeoMHKpS2KvE38VGNyjOqcPkJZoJ8+n8oxh4ZpUBwINt6/faU5qLg4djSpK7R6bfHZ3xZsNa7oYASBczx6nzOZYkeWc7CTcYkuqVMdL3y3G3cKWzyDjPXSkS44G2lAwmAkjSfrY28N6dLCYWvAZHNv6G7blPvvJUX/7/LmmMYtKD0ZHfz16pZAA33K/gSP6/zHe668u3wKBynfDfiTVuzStiRfp6DFJzBqgV+Zjgdzah47Z4fhefXHBHbzoHAtA0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 06:30:02 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 06:30:02 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 09/14] drm/i915/dsb: Introduce
 intel_dsb_wait_scanline_{in, out}()
Thread-Topic: [PATCH 09/14] drm/i915/dsb: Introduce
 intel_dsb_wait_scanline_{in, out}()
Thread-Index: AQHaxmpYlblwBeO4rUO/iwIzmWJehrHk6mRwgAAL0ACAAADSAIBWEOTg
Date: Tue, 27 Aug 2024 06:30:02 +0000
Message-ID: <PH7PR11MB5981D4B5F128880EF26D654BF9942@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-10-ville.syrjala@linux.intel.com>
 <PH7PR11MB59813B125C1B84675C19F4B7F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZoU-6IcMrtXa3FC_@intel.com> <ZoU_mFGYoi4yYPKo@intel.com>
In-Reply-To: <ZoU_mFGYoi4yYPKo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BN9PR11MB5228:EE_
x-ms-office365-filtering-correlation-id: 8e7e280e-d1c5-4b74-e4ed-08dcc661aee5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?/N5M1xONCJhYi5Zxh5W7epFsMRQZsz85QsixjuyZL/sEzeKdYdFd/SyNO5?=
 =?iso-8859-1?Q?uTS1RW1qEJ5fJzSJdZeE0hfn9Ua+i9O04XWEMZ9PogoZg14CBFryFvpisz?=
 =?iso-8859-1?Q?hO73w+aaJbZuukVTIb/SbitTCdw3ESiqXF/3kWq35aDyfhB8P/9VdfUXwk?=
 =?iso-8859-1?Q?5OU7ESk6U5zzgo9Wte2sUBmjS4HMDaJ14vdUfRDlcuNl9xUWzwEoL2VV1A?=
 =?iso-8859-1?Q?XH6dVfJUVv4NchaztUk8uhKmJRs1CRhc1PQYejc9OvCe9KAzfZgA2CuDqG?=
 =?iso-8859-1?Q?uYdxOTPtYBPA8xSvkmTotPadf+QoKeKxoXi7UeJI2VSTRgyszf3UpXG+o8?=
 =?iso-8859-1?Q?Lyc56rrUZL0omXJk9DciDwgibXrwj2EzePZzaep60kBttJEpN7oEXKKRme?=
 =?iso-8859-1?Q?qc6N5LOni15/Yg3xkNsew2SbC58CjMVhtpTMRtAx6xnndbKDjDKpekwmFi?=
 =?iso-8859-1?Q?z6tDgVJoRz5fhNbGXJzvUZBQlXdNefA3zv8NnhrNhWN4fBT24FlgfeJwpU?=
 =?iso-8859-1?Q?yFCOWksSRlyRtg58xaCabuJj13QK/HYWzfx1j5/B77DlW3cmB8x6Ym9Lgo?=
 =?iso-8859-1?Q?WPVDtrBe8MNlpIL94cY2WpTts9qnMijEORsBSVqEK7+LPBJzdR0Blm4dAY?=
 =?iso-8859-1?Q?zNiBuGh/TjTRJZ9+juKbl+utXe0eRv6j7XrDJSEsDOT4R7GfrtQ/rfYoh1?=
 =?iso-8859-1?Q?QbVV80mhhBBupakDvdA4eS1aHg0KQ00RVRHdtpMtS/k/KOGj/G+IoFU/d+?=
 =?iso-8859-1?Q?OLIrgGqrlut5T+9DK0yvRGF9yXmiu6C3w2BeWBzI3hdlrwtXttP4Kb3S/U?=
 =?iso-8859-1?Q?uqxm2X8wdPOaAN8FY+WBlwaydBq8KrJ2hZADXDudBBedYKBRhGav8TGNR9?=
 =?iso-8859-1?Q?UfmZ57ZvFjbVvM+haM6rgznYQTGUrI4+DJM0npYD2lUcuFEVydIeonKYwO?=
 =?iso-8859-1?Q?sOrJAQ/Y+HZ54xklqnkKaQJ1IEx5pOq1uXA+IEQ+dBTqy4/FvIJqopxVBl?=
 =?iso-8859-1?Q?4Dw/Gm87iRkI8bwFEnMB0hA8ncu8fOCSKW46J2vQJdFuSSeRRGsVbnzg8o?=
 =?iso-8859-1?Q?WSgkHtnpUWywpskSWB+/KAQzweRuWETBqzLjaq6mIHu79KEs/WokqM9u3s?=
 =?iso-8859-1?Q?f+iD8Kb+JetX+ThalggdhggHBrIafdl565LRgTJ3HXc2PXcYa2J3MUNpxP?=
 =?iso-8859-1?Q?qwne3UbWhmXp3+nuk6/UKHwS47J4O8Ivm1dBowMr+5H3t1Fs5DLaZbORb8?=
 =?iso-8859-1?Q?j9i7deJHC+An32SavGulvXpZSoV3PCdUBhRA9wWOmZF5/jmcHBC9la3Ds/?=
 =?iso-8859-1?Q?LvWa2TnL6JhNOtWu7ADq/u+ZXKxsx8qleYsNyrz/d5SyfZTjq1Id25rPrE?=
 =?iso-8859-1?Q?HtBqPEVuFSXx3dq/roBQcwWJrl54hdSJK9tQUBsdozHYlVcv+p6CmXh+s1?=
 =?iso-8859-1?Q?MPM8k6YuWtb4bpxqI2DkMP2Ti9ARYG+elmyuAw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HjgFUtkUW4E+tABjjHMkGUPpmLP5X6dRGNBdW7Nr2t/0wnTnzPduv9Qb+s?=
 =?iso-8859-1?Q?7pB1pFWecQDXPt+4Aahfh5ZVGlZI7k3SI/PqBMEVSv2Tld4bFgo29TjYqz?=
 =?iso-8859-1?Q?iQUiSefrsdV4PBi8U0EvOj/xj/29QAM6uqgKJN+SRqV3gCjEWx0KbNEv2B?=
 =?iso-8859-1?Q?tUUlcf0K3Z4pFHdVNer8+VbZ4vLTJ+kWySLn/FJZNQD6AKsS6wMCwMM/1L?=
 =?iso-8859-1?Q?cFxrlfJm4KzpcEtmNSNiHS+9sR9USc0vo1FE+2oxk14UD3B4lRWiVNvYke?=
 =?iso-8859-1?Q?B6DXt29mjGs9kHn3cfom35ztGQ6Wg3KGa062rHIzpmzKMjMYjwkuhz675L?=
 =?iso-8859-1?Q?ymiNH2OhDBCG9sfPk4/UYdW/1L31jtisZhVOi2/c9cDQDOtfhM4MC/heJc?=
 =?iso-8859-1?Q?B6jnF8VhSBq9IBfzHaKH0PITxyvS7J+mbRBUPbgnxgWPuFuleXoq58QUPy?=
 =?iso-8859-1?Q?Xl7AZcdHir/wn0uREzRwkJoLB8o9M8HpdEJMCIfqDSFb/X3Xaq9dnqb+vl?=
 =?iso-8859-1?Q?Ur+621/MSqcthjwoYrzpLi7y2loHjuvDwdAZByMqSYJBS19KxP5ldAlZ2Z?=
 =?iso-8859-1?Q?6ewTzPoLVMW1ZQ6iONY7iBWa8+C7AZhI9okJIxV30GFPnehfn2IeCAJg6d?=
 =?iso-8859-1?Q?AqCDO9if63NAnTwKb9F2LJCsB3WAdYB/EuQ81g4MJqeSUO5E4Iq9hU1YE9?=
 =?iso-8859-1?Q?uLT8vCgh3O0l2qN8PoMg7K5Ov/k9P//LDOtXSfSPIzBPTQ3LZn3dYrJsyu?=
 =?iso-8859-1?Q?jakZPYsAsuFsyRTSwzmF9UGvXKODTP1ozfvUHjotWhW9UdYEhrhWN6Ybb7?=
 =?iso-8859-1?Q?zsJmepcIHRkJFo5p2oTFHHliwUesZRQKejVsRu1J1bBF68ZDskI8Q+EoQ+?=
 =?iso-8859-1?Q?CPjpEXAVXqYgcG1yH7g0d8jnbeVPg9qSWlsOkr3Ja3E7DfDWd7Yf2PqA42?=
 =?iso-8859-1?Q?NDuyyV7Izfxl8RyGGq9KGV5br143bSdCGxe25yQ5t/GkuPVR6AOshWBssl?=
 =?iso-8859-1?Q?fjwsjUoa7klc/ycx2yJw0+V27BCLFFqgwF0Xc40NDyIZNuAOglc9n9bENz?=
 =?iso-8859-1?Q?ASoyONTieSN2TmVr35mKRO/OTT+JoXh+R7WixpC5+CnMMKad1dqrxZkvlS?=
 =?iso-8859-1?Q?8xJhbLOB4blDYmcfOsLvN6DQjyqWLgyD3JFnnvlb7nSz6hqlUvkoNMyvpj?=
 =?iso-8859-1?Q?zQJcSBaNlh5Jzqu9qd6PawNKGO2/Xtl62HgzWrlYEXUH4SDJ0Fd1K9Cyzs?=
 =?iso-8859-1?Q?vZBTqJbloaRr26eGFbMPfznwGKb4Z3tSyMIyRsts/tTecxYuNqSAEVn2Ir?=
 =?iso-8859-1?Q?7sPvP2uZEJxsKDMy+PGdcoSwiV67x4KgbVkLOgDWXa5GTF1IjzPKUZj/bg?=
 =?iso-8859-1?Q?4BdnPcT8zb72MTKdABNIIIqFFVkoKTWKhvJnk9XEEz0eVp/a+KWVKqg7G2?=
 =?iso-8859-1?Q?SZsGYjgfbzqIvMBTf3I6K0usRBsxGKKqlPCKz3niUeDGZKxcDozbDQtwVA?=
 =?iso-8859-1?Q?3D5QWgAlDjc9fTiLuBfC2m4iuuPUuxEYZVljdKSUUGh/Ejjkpn5ANLCOoz?=
 =?iso-8859-1?Q?0i5AOmhjyp8LQ0YpT2jzy0iDTUZj9N4SGzfWJvkILG2QesDHvfpQDQTqB8?=
 =?iso-8859-1?Q?Ofxk6xzG9B27UkeHiRmY5tMIYKT1m5xi1+?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7e280e-d1c5-4b74-e4ed-08dcc661aee5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 06:30:02.7982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SvbA8jqwu7tr2w0AltGk2dMFU+8NoKAnOB1i0o6LXzW/wilNWqzxJWcJ4my61ebH4xoWPB8UgE+ACj2JDH0joQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, July 3, 2024 5:40 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 09/14] drm/i915/dsb: Introduce
> intel_dsb_wait_scanline_{in, out}()
>=20
> On Wed, Jul 03, 2024 at 03:07:04PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, Jul 03, 2024 at 11:37:33AM +0000, Manna, Animesh wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > Behalf Of Ville Syrjala
> > > > Sent: Tuesday, June 25, 2024 12:40 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [PATCH 09/14] drm/i915/dsb: Introduce
> > > > intel_dsb_wait_scanline_{in, out}()
> > > >
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Add functions to emit a DSB scanline window wait instructions.
> > > > We can either wait for the scanline to be IN the window or OUT of
> > > > the window.
> > > >
> > > > The hardware doesn't handle wraparound so we must manually deal
> > > > with it by swapping the IN range to the inverse OUT range, or vice =
versa.
> > > >
> > > > Also add a bit of paranoia to catch the edge case of waiting for
> > > > the entire frame. That doesn't make sense since an IN wait would
> > > > be a nop, and an OUT wait would imply waiting forever. Most of the
> > > > time this also results in both scanline ranges (original and
> > > > inverted) to have lower=3Dupper+1 which is nonsense from the hw POV=
.
> > > >
> > > > For now we are only handling the case where the scanline wait
> > > > happens prior to latching the double buffered registers during the
> > > > commit (which might change the timings due to LRR/VRR/etc.)
> > > >
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dsb.c | 73
> > > > ++++++++++++++++++++++++ drivers/gpu/drm/i915/display/intel_dsb.h
> > > > |  6 ++
> > > >  2 files changed, 79 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > index 81937908c798..092cf082ac39 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > @@ -362,6 +362,79 @@ void intel_dsb_nonpost_end(struct intel_dsb
> *dsb)
> > > >  	intel_dsb_noop(dsb, 4);
> > > >  }
> > > >
> > > > +static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
> > > > +				    u32 opcode, int lower, int upper) {
> > > > +	u64 window =3D ((u64)upper << DSB_SCANLINE_UPPER_SHIFT) |
> > > > +		((u64)lower << DSB_SCANLINE_LOWER_SHIFT);
> > > > +
> > > > +	intel_dsb_emit(dsb, lower_32_bits(window),
> > > > +		       (opcode << DSB_OPCODE_SHIFT) |
> > > > +		       upper_32_bits(window));
> > > > +}
> > > > +
> > > > +static void intel_dsb_wait_dsl(struct intel_atomic_state *state,
> > > > +			       struct intel_dsb *dsb,
> > > > +			       int lower_in, int upper_in,
> > >
> > > Lower/upper keyword maybe confusing for during
> intel_dsb_wait_scanline_out(), maybe good to have name like in_start and
> in_end, similarly out_start and out_end.
> >
> > lower/upper are what bspec calls them. I decided to stick to that
> > terminology in lower level parts of the code where we actually deal
> > with hw units. I used start/end in the user facing api to make it a
> > bit clearer that having start > end is perfectly valid.
>=20
> I suppose one could argue intel_dsb_wait_dsl() should still use the start=
/end
> terminology as the input are not yet in hw units. Shrug.

Variable name change is just a nitpick, with or without fix,

Reviewed-by: Animesh Manna <animesh.manna@intel.com>


>=20
> --
> Ville Syrj=E4l=E4
> Intel
