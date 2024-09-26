Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 873EF986AE7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 04:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF0910E0C4;
	Thu, 26 Sep 2024 02:19:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AcjocyOl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4927E10E0C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 02:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727317175; x=1758853175;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ahUgcoA9AMZC0nJ7nmqQ23HFtO0YLyJkS3ZCnWX6TVM=;
 b=AcjocyOlRttqnc7W89EB2g9sPjw6pk/EJdCMIkgkSdID+PjT8MMv868b
 qms0kj/vT0nXCZSd154Np+r2XRdTYpcMolSiafaWECX2YUn0Xbno/bs4M
 m20pnflYTOFng8RCuXUE9wr4SxVp908F3dh5frWfSgKQhsdegCcABhZfd
 8dL9hy5/zMXyb1tl9Z5gtDUj22rhp1knk6g9eHlnEyZhFq4C44yseDAH5
 DPoiJxv64D+a3vJFG+D2ruPr3PlXPK1YgtrJP+xJ++9pApYujFp21WV3f
 XyLMZXWTG6r1O7uh0rvQvpLUuHqixD09/W4cPPaBqNf3bH5KHPlTZfAFQ Q==;
X-CSE-ConnectionGUID: yO+gC2IyTf+dLFAEujL4lQ==
X-CSE-MsgGUID: 0MhjBat/TfaCyZ5TWPoUoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26206339"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26206339"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 19:19:34 -0700
X-CSE-ConnectionGUID: WQQvhgtLR7qMQMn/5SIV6A==
X-CSE-MsgGUID: bJoudpesRkaIQJh36CjcBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="71984443"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 19:19:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 19:19:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 19:19:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 19:19:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 19:19:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 19:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FIyZ+04stA+t7Dj+rnNr8klVI/ygOvbKjcWwIpo6ydADk+s9rJ6jhC17tHcqYC9FS7fxfB+wf2aa0PXiOK/3NVPlkVP07kC6Y+4LvFHk4881MqSqC7UsE2R2OIKHfxee+xgWw2GBvsdNVHiHVSYX8jYTslgeXzTkaB5r0uHJrZsi01lzTbSScrKAe/ZvYnUazI7b1IbgYLYN+kEyV8xS4HjCiMcMbIjk8lzpdz1V26UMelJ9hiGGVIlRI14CRTdBiIedeYRpgsMXo5NeRXS+0uRDXq93zTwhcjVeVASFmx0xa5euZO4n64aiNhE/L68KdUShlUMJjD9qprecOkytDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yAxE2LFZR5a1mk4XFesf1lf4/7W0/6QVANp4fNbQrUs=;
 b=RL+SWq9YDd5Gm+tagNPOOGc+qwShrOYY4fwmJv4HnKJ5oPG9/1e/sxPOpUqeUF7iNBlicLKVmHvJ2chhTvQ7AfR9EzEEm0BjNyzbXA0pibHIChFG82rhYoN3N92Eq/rSfYrpHQ8wo8A896nyRATg6Pa89Nv1m5vmteGYmeTd62mZJ9mCejd+REPEVuMSSrWsy2im6ecr/CHM7r+A9LiC5qwcXc7Gl/mNtXG0XKxI/8SmuqT+B/w9Cr/QejI01MVMTVxXrVBoruDtWih/PTKeEyamWY1W8eajHmlutMOdUatKKn/dhRkroHEAFGMkNHrUQ4ARdpoOEpBwD2YK36aqOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 02:19:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 02:19:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Topic: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHbCBA3EtryK7M/TUCzfZLII8f4arJgk4EAgAYo9nCAAqfAEA==
Date: Thu, 26 Sep 2024 02:19:27 +0000
Message-ID: <PH7PR11MB5981F877B5F498EE6F2E74D1F96A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
 <20240916075406.3521433-3-animesh.manna@intel.com>
 <Zu1fDJzxiF5GoGhA@intel.com>
 <PH7SPRMB0011BDB84C1D0FE22EC0A0C0F9682@PH7SPRMB0011.namprd11.prod.outlook.com>
In-Reply-To: <PH7SPRMB0011BDB84C1D0FE22EC0A0C0F9682@PH7SPRMB0011.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: d99af4f7-50ea-481b-aa98-08dcddd1a5d8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?koZwINzrTrY01fpLOFarlaNCgiUF153v+65Uaz51BPLblbkvM+nLvkFaP2?=
 =?iso-8859-1?Q?46kVD8gMvnK7n+Z4Qq5K3xauMxgTKimysEECvuMwEmGoHqClSWH7dSJz3A?=
 =?iso-8859-1?Q?PFboFrKW5iZrfP7hIulOUZdXQlZdsJt0cWDhhiSzcuYXmcvXcmqQZm8+jC?=
 =?iso-8859-1?Q?gtjAiStKiywuhpKu7CbAHSHdmF/wdSypFhA1QdpwkqcJeHK689mgOARBSj?=
 =?iso-8859-1?Q?gM2Rb6ats5UVqM4lSOJHZayTrDkATb+KawzL/6e1ox3FZ5B1B7xpHJtzM2?=
 =?iso-8859-1?Q?iPRiFtJUr+TrI31i4UgyHnDgHATlqGAfgWk6z1JFp+HuxLTPUgWLOlqVGr?=
 =?iso-8859-1?Q?+GsQlO82IpS52urqnM3EkeRJCP2PJjraxIWOwd1kHJUdNvmKxBcM1dwXS9?=
 =?iso-8859-1?Q?S8RjEltj0tBkQG99CNVgWuGdFdWIFvIoUflEoiY9VazA2Mo1YdLhByuKG/?=
 =?iso-8859-1?Q?Dq//Atfxc++vkhhcK2uVIc4g4/NWlRl4JfgDVJWzraq5B6nV1LgczmnBmp?=
 =?iso-8859-1?Q?+ZpqS1fGcN3x7zoiaBAxEmIJYbewGYmDSCWuURaxPsPkSy4n4MZP6EB1/6?=
 =?iso-8859-1?Q?hgSlHdhxiIiqGt8afSfwZH5y3JAvj7TBHwhvjxZNI4f408FgnRtaz6sxzf?=
 =?iso-8859-1?Q?e4iIbY4ev2QaRZKUOe0h3dgVV5I7XTinvQWKqOKoB3E8cMDuhag7ZnGmed?=
 =?iso-8859-1?Q?vaQWzX5loQbuIcLFFU3IuMlfqlCPdKCCU6EW4fAAilSNmhNtkLinatrExc?=
 =?iso-8859-1?Q?HShfmUHF9qo8gmOghJUmNyqcCNfm5UqNGEzm0BNPXxksxZmUPwojhGFWWI?=
 =?iso-8859-1?Q?ysfdA7qj24oMly4q22SK5jSibNNV6VBuuetrKYogK/yQOuUX/hXijTRUJC?=
 =?iso-8859-1?Q?iEtzdZV/FKCEWiDa5F2y2DqzmUl1Eo/mHVnDJCALnvH6y82zVU+6DMGPqi?=
 =?iso-8859-1?Q?PyecFsRb5boRGoTO5u+FA6dovt7AUXZe7iJfNM88jDrTILCMuWI9Kui6Wm?=
 =?iso-8859-1?Q?eAgsnmRd9JxYQaOzlmcZv37fIJvcoI9AQ1QsWWlrqCJKKdNVnRx7ZrdZzX?=
 =?iso-8859-1?Q?Nsc6qloH98k3sRZb6T6wLvGe21UkY2C/oAhiLH+BF5Dhl749Gfp0qIXSv9?=
 =?iso-8859-1?Q?ZMfNf0o3vbR+UvuGPy+lBPQW6XVj/rorNG71DnDTauB8DETEk5yPzcTPIY?=
 =?iso-8859-1?Q?pH+nUueS7k640dB8r0IA3QLTbE4W/IZPCLZlhrzFcwuKqeaqZHmKlmrKAv?=
 =?iso-8859-1?Q?HsgJ5gFxJz1o+cpw7PAWIpGoJh4U0aR1BhwK3GKDZbybVphmVrOaouOn1s?=
 =?iso-8859-1?Q?RrlHv0GBPbn2HQeGs7hIif5UP4RK/mJr8pTgFI7EXjH4p/7/kmHOe4RrV2?=
 =?iso-8859-1?Q?cc4qayZH1PAIyccwmHgusASJEiudsmNw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lVlR7q5ws9KeCVpNfxkgi4NDdTpo/ZmkSgzAsjCHD05nsWfkICP8BToZ0m?=
 =?iso-8859-1?Q?DAqb/vkPSUpcKWb3M1Xf66qkRnh8sCKEWSCK45r3LyUvyTCrpo93Q8iOS8?=
 =?iso-8859-1?Q?J5Eg+gnCmFwrx078TZ6xTkpWD6KXqbZdd7AyPv9zMvaoIYYY3npVsnnwaY?=
 =?iso-8859-1?Q?fDp/aMj23U6aYOlrDq+QtYj3XIpTucyMWBkud6svFWOSZwz18cIWEvJgeK?=
 =?iso-8859-1?Q?L57HAnUrODgcIKYnH4o8xkp2l6HGj993169/NoqKO39ZVL05v6FJtDKBCq?=
 =?iso-8859-1?Q?WDS3pnp3WjCbmfzmLdBhyE4YYcPlTPtqiYmnffBGuX9Ui4V5abnrX4WAm0?=
 =?iso-8859-1?Q?vogn2QtdGuZ+8/qcHK2QnK5dgbvNLp6SDFcQOdFMdbYieNJkdNJlRUuDaz?=
 =?iso-8859-1?Q?U8aYyR7diuV9m4ZY0A2o1ybdxNt5I7dcrOrF/dsEMuXnDh6Py7mvPNhzdb?=
 =?iso-8859-1?Q?jfonvGcwMS+BnqOHZHDvSQm0K5tzzLSH30dFrrBSFxlMh2DoXyq9qp7Una?=
 =?iso-8859-1?Q?NrR6DPzXfFcBAKIyUKI1ToaqsGHQKH87uc4ME5sWyzOZX7Sa9Go0O6rQ2w?=
 =?iso-8859-1?Q?q3794efp+BEzrZAGNShA2O/ENd3/lE2fSoVjsqdiD5VmfSrZRb4lnNwwTr?=
 =?iso-8859-1?Q?LEVB6yhW5wH7LLTL5oG7HH8Cn9iLyc4MMwoSBbdxA/JR54H7oLzv5APgT0?=
 =?iso-8859-1?Q?941vDtOdUEDM1+H/LR6Fv7vGpLNMYQ5682irma2yHS4WTvclW6oLrqdDlO?=
 =?iso-8859-1?Q?Ar7IBNXUGxTKY29lFNzDjm2ob9xCu/gyT3QDDlFb459GcH0H0QsWk109uw?=
 =?iso-8859-1?Q?Ov0WbTgAPPr5PegtjAboGBPiAcaAHGxDu+Xf4XFD8sN2jG5P9MP5XhooYX?=
 =?iso-8859-1?Q?MhEsoLHR82TyrCs8KKASM1OrCqnvVChnvVyRWUnU4sEqicYBgsMmKwDHJW?=
 =?iso-8859-1?Q?Da2ruSAK9oeZJQJcF5pegYcqP2kX3BlZdfhPr0O71MX6A/rDsVaCUfN8SJ?=
 =?iso-8859-1?Q?o6sD/7f+IOglnnqOva1Gz4XoizhCdJ5tacvChc2psUF1+iCdaVO2B/0WI5?=
 =?iso-8859-1?Q?8IICEEmORWkMfz9m4y9FOm5M75fxOWnJblB1nOe8P0b/IZOzeP2fTnPHdD?=
 =?iso-8859-1?Q?qlYEIO44sKZrf0Vd2KsX494bjsviL2xUHfpATUyoj0OLXd3miKrB+NUamk?=
 =?iso-8859-1?Q?6I1KLFExBK5I1CQ0OUW5Gkb/AmOuSEympijqEi46mQQO+WNZYeAW82mw6D?=
 =?iso-8859-1?Q?ai4HvaCqltSy4e0BIET6JlJYXg+oHMNq4A64sHIlqUIjy/AXFswZAGv6oE?=
 =?iso-8859-1?Q?X0M1bMN/PKOECdsBQI9jbj6GoN3D/a411zpLa9RHmvTFI//zStGBeJ/SBW?=
 =?iso-8859-1?Q?PFEaEo+y75RnVespaMccTY8B7g4dnrTzQgoBHweDOixu5Llvy264sGinZF?=
 =?iso-8859-1?Q?l5djLImbb9gH4c6yFrCGp1OwVKV3GtIbRu8+KOq7WnFTL/hfq7J2OVW7hO?=
 =?iso-8859-1?Q?pS8630aSvD/ZwtA7Qkw02+DuRk51RATs4c94ueF8wCkzfDLlKo8jvyjc5H?=
 =?iso-8859-1?Q?/OCCz4pyQCqe8R9ImlO7sdwFUHgn2sCVzXKPaBlX03h5GFRxt75TMw8im/?=
 =?iso-8859-1?Q?LVriqtcdDMaoSnEeSZCLX6hvZ8NmlM0Iigm8veYwiAIvsGJ2hh3byVzEaz?=
 =?iso-8859-1?Q?SirgZbgkvM0H9hLhS70USEC3KdXnA4fUUj61O79Q?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d99af4f7-50ea-481b-aa98-08dcddd1a5d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 02:19:27.9611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AsJk+yZiW0x0ilpdRDvwdGLvM7To2sU4u7Z96gDGS4XvwQ41FNhg32wzKYrwKxVJ+ZosQh/d9bYcu/x3/icTOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
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
> From: Manna, Animesh
> Sent: Tuesday, September 24, 2024 3:46 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: RE: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay
> workaround with VRR
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, September 20, 2024 5:10 PM
> > To: Manna, Animesh <animesh.manna@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > <jani.nikula@intel.com>; Hogander, Jouni <jouni.hogander@intel.com>;
> > Murthy, Arun R <arun.r.murthy@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Subject: Re: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay
> > workaround with VRR
> >
> > On Mon, Sep 16, 2024 at 01:24:06PM +0530, Animesh Manna wrote:
> > > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > > W2 are 0. So Program Set Context Latency in
> > TRANS_SET_CONTEXT_LATENCY
> > > register to at least a value of 1.
> > > The same is applicable for PSR1/PSR2 as well.
> > >
> > > HSD: 14015406119
> > >
> > > v1: Initial version.
> > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > v3: Add WA in compute_config(). [Ville]
> > > v4:
> > > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > > v5: Move to crtc_compute_config(). [Ville]
> > > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > > v7:
> > > - Corrected code-comment. [Mitul]
> > > - dev_priv local variable removed. [Jani]
> > > v8: Introduce late_compute_config() which will take care late
> > > vblank-delay adjustment. [Ville]
> > > v9: Implementation simplified and split into multiple patches.
> > > v10:
> > > - Split vrr changes and use struct intel_display in DISPLAY_VER().
> > > [Ankit]
> > > - Use for_each_new_intel_connector_in_state(). [Jani]
> > >
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 33
> > > +++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_display.h |
> > > 2 ++
> > >  2 files changed, 34 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 111e61eceafc..a0bd29b0d29a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2529,7 +2529,18 @@ static int intel_crtc_compute_config(struct
> > > intel_atomic_state *state,  {
> > >  	struct intel_crtc_state *crtc_state =3D
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > > -	int ret;
> > > +	struct intel_connector *connector;
> > > +	struct intel_digital_connector_state *conn_state;
> > > +	int ret, i;
> > > +
> > > +	for_each_new_intel_connector_in_state(state, connector,
> > conn_state, i) {
> > > +		struct intel_encoder *encoder =3D connector->encoder;
> > > +
> > > +		if (conn_state->base.crtc !=3D &crtc->base)
> > > +			continue;
> > > +
> > > +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> > > +	}
> >
> > Why is this loop here?
>=20
> We can drop this loop, it was added when this piece of code is added in
> encoder compute-config.
>=20
> >
> > >
> > >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> > >  	if (ret)
> > > @@ -3940,6 +3951,26 @@ bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state)
> > >  	return true;
> > >  }
> > >
> > > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_st=
ate,
> > > +				    struct intel_encoder *encoder) {
> > > +	struct intel_display *display =3D to_intel_display(encoder);
> > > +	struct drm_display_mode *adjusted_mode =3D
> > > +&crtc_state->hw.adjusted_mode;
> > > +
> > > +	/*
> > > +	 * wa_14015401596 for display versions 13, 14.
> > > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > register
> > > +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled
> > with VRR.
> > > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> > substracting
> > > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> > crtc_vblank_start
> > > +	 * by 1 if both are equal.
> > > +	 */
> > > +	if (crtc_state->vrr.enable &&
> >
> > Another case of the do not use.
>=20
> Ok.
>=20
> >
> > > crtc_state->has_psr &&
> >
> > Does that cover panel replay as well?
>=20
> Yes for panel replay also has_psr flag will be true.
>=20
> >
> > Can this change dynamically during fastsets? If yes, then you can't
> > use it for this, again due to fastset VRR requirements.
> >
>=20
> has_psr flag will be set if both source and sink support panel-replay. It=
 is
> applicable for psr/psr2 as well, but if vrr is enabled it will not be set=
. I do not
> see any dynamic condition will change the has_psr flag for panel-replay.
>=20
> >
> > Did you actually test this code? AFAIK the fastset checks should catch
> > this and refuse to toggle VRR with a fastset. If that's not the case
> > then we have even bigger problems somewhere...
>=20
> Have not tested the code due to unavailability of panel.
> I will check fastest VRR path once more.

I could not find a scenario for which VRR toggling will be blocked, maybe i=
f I missed something can you please let me know which scenario VRR toggling=
 will be blocked.

Regards,
Animesh
>=20
> Regards,
> Animesh
>=20
> >
> > > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> > >crtc_vdisplay &&
> > > +	    IS_DISPLAY_VER(display, 13, 14))
> > > +		adjusted_mode->crtc_vblank_start +=3D 1; }
> > > +
> > >  int intel_dotclock_calculate(int link_freq,
> > >  			     const struct intel_link_m_n *m_n)  { diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display.h
> > > b/drivers/gpu/drm/i915/display/intel_display.h
> > > index 7ca26e5cb20e..db7bb5cac2f5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > @@ -429,6 +429,8 @@ bool intel_crtc_is_joiner_primary(const struct
> > > intel_crtc_state *crtc_state);
> > >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
> > > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > > intel_crtc_state *crtc_state);  bool
> > > intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> > > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_st=
ate,
> > > +				    struct intel_encoder *encoder);
> > >  bool intel_pipe_config_compare(const struct intel_crtc_state
> > *current_config,
> > >  			       const struct intel_crtc_state *pipe_config,
> > >  			       bool fastset);
> > > --
> > > 2.29.0
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
