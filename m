Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE599B23CC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 05:13:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE4B10E0D8;
	Mon, 28 Oct 2024 04:13:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CG85uYZg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEB310E0D8;
 Mon, 28 Oct 2024 04:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730088785; x=1761624785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aQSEQaqRlwv2eDyeqj7yPhrCi2GMdLTZAiuu75cYk+Y=;
 b=CG85uYZgGI63hwzvB/gPBow4whBH052wwDYY+8o+xAN46sJH8Rzk114G
 kVh8wUmkf7QY9NBHADx0UIqU3GjklKSTyNdvjjj7trAHmBGOt8k9jVJan
 obhskjyBLT3sd29DOVp5HkTrCutv+OfFM1FCMTehasU7bZfibP+4JebAV
 99tq1e3FhAcedP7v2iCIADDaOI1OqaYyNtAMxzZzMrGEVyemvHjY+QMUm
 9IeK7EwnDeb6T0cygxcpgEcrpjP3UUITGB4OxNERuYViMVjXxB3oLEoXI
 zqVzWCblGUD+eg0YRozVEKMfRh3bFmUVbgSZzGaq1c5gw9RY/aGLrox3G A==;
X-CSE-ConnectionGUID: +2EoHe3iTGGh2+DaGsg6kA==
X-CSE-MsgGUID: ca+04v1CTaOAhLqJV5rGNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="32537546"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="32537546"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 21:13:05 -0700
X-CSE-ConnectionGUID: T8qDWlpySgigu8cj3f5CZQ==
X-CSE-MsgGUID: ouEwQVKjSzGRjH0ZZqt7bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="86260907"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 21:13:05 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 21:13:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 21:13:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 21:13:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fwja8fCobG/jRqZmpYDP1plZ5NI9mDjgkpLXQuo95j5QdTt1lA4oRGqeKILzgnmE7/G70Ka7sMJQhEDNocnOg0Qrv3WuYBm2mTwYxrS3qKYdG2dK8OBoxgXQZmwCTXIyNFNNie/e6x4mWPlMoSKE4aX1uVhMx08ZwaWhVmEIeueCq3MwuaEj1Sz1bB39t9429UUpITm/Mc2pZ9UWWfwYq1HtEsQhXezs2OSv36R8FMV6AdUciadBbR+Ng6r4nb1DSK7KYuCIZQAihnUFGJ5DjNGQxIUQDi7LP75A7GSacxvwajPKjWR4mQamf8NiWfE6uVCqHm3XGgKx+dD7dHK7fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UC5psWJljjWqlAJW7w0SRz+lS1CrVOReelius0HyImU=;
 b=ot9Dbjlm59N/le3vjvqo5ZKkvPYxb0NYpMSM55Ji9J+GicxQ3+qQ03YqejmAoPBS77aEWfYBZTFuwmGZdv46DuO0Rdvwh+qGC8KQI+A+Gdycof5fUDU+D32iEKGYB1dGWj45xyIWOjGZ1Da5KhxGh2qcOq+btKF6+guXKWU/BB8eLOGK5CKpTZFaxei0qfJNNIga43XGPkEnNJvEVTxpLwfkEJoHL03t3RC/5uH1ch2zqgmaXwMJ/AWHEPR6glIQiRNCkNsR14ve46rB0yyz/zYD9sK5pC59aSlj4KdQLxsyB0RxAaGabtrSZnYAm7VfDdtpXd6XTtKM6BejC3PBzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7692.namprd11.prod.outlook.com (2603:10b6:8:ef::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Mon, 28 Oct
 2024 04:13:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Mon, 28 Oct 2024
 04:13:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Thread-Topic: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Thread-Index: AQHbJqN8EaBEVQhWEEqGgUK1puSZwrKW/t+AgAARyICAAAswAIAEddmw
Date: Mon, 28 Oct 2024 04:13:00 +0000
Message-ID: <SN7PR11MB6750715B18C8B45800A9EE56E34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-2-suraj.kandpal@intel.com> <Zxs40xP4Bo33fqe8@intel.com>
 <01ab01ee-8a41-404c-bd8f-548c4e7ee296@intel.com> <ZxtRINBKqu7aEz6L@intel.com>
In-Reply-To: <ZxtRINBKqu7aEz6L@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7692:EE_
x-ms-office365-filtering-correlation-id: 3be8f209-a836-4e35-0395-08dcf706cfe8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Fb9nS1tT4aOD8YF1uui3YX+zqTbIX/UI4cQxjybQd6J1pl9XVZzrfhY8Qt?=
 =?iso-8859-1?Q?i9ObzqHknImOBB5mtQ8jM5GXLKtsEv6VBVCVkzHwD1uo2aVFn4wdVihsAH?=
 =?iso-8859-1?Q?kRcxESp6YEX847L9TVYIvCQqKfSHxog+4OELVeFno8M01HZ4fLdVtB0jIv?=
 =?iso-8859-1?Q?0gTz6vU8EpsZVcOw3rjEgvNOXlJ3CAUxwbITkq8QVFjzonEjsJtNJ//e6j?=
 =?iso-8859-1?Q?bEuKFTRVjp1bRG7RrFdat8Xz+hrdlNtKAwSCPCcUPq2iIIsBKjn9rBQeBX?=
 =?iso-8859-1?Q?OVwxrUaWsp/IjQ0eruTirPoujy431a6OTqkfpuqqCMHO+yPeZ25hmZIlFs?=
 =?iso-8859-1?Q?we1GXbNThIUSgKO8Wdf1+50TRmW8VsKw9bSdygFrDZ0pEiAc4uV6BSN9sR?=
 =?iso-8859-1?Q?y/wLsiv7leAhwk+eor95kEblYyAUXUo6fUB/o0zM970mVeXqcy/ALD/xFt?=
 =?iso-8859-1?Q?AJvhlbV1NfezfDUKCIvk4YXfqB0yaWWfjhLmJYm27Gi9tBV3SG6+ktpoZM?=
 =?iso-8859-1?Q?1WUoGUYfV9kfDhYBOY+p1fHUWIk7/mIMZCBzBMVgAMxHNcLz7InDNTdFJz?=
 =?iso-8859-1?Q?GEiTLNOV9+8b8pr821TawSqpMRua2Vn4SVJbAQHmVPlNM0ymlgFaMihhLP?=
 =?iso-8859-1?Q?XOW3yUilF1OsvelsH24P5aUKi+QePXu/1Rt28M2T/w2+3hfze0ufEuzwQ4?=
 =?iso-8859-1?Q?LCEj1duWvnrNtw1DMnhNxsDBVSdUEq3Y31lQptnXOxKCRr0q9xlVYt407s?=
 =?iso-8859-1?Q?19hXNCu7nxIE25JggX6o30bb/lJnmzkx49rak/tHTh+QZiy9WXHMlBvQuw?=
 =?iso-8859-1?Q?wvn2aoIy1R+XL+tRQ2mYX6vy2R5PsT3WQ27kCQBDyVrffQtYQfDVAGCNoh?=
 =?iso-8859-1?Q?o07vKjdq0l/1VyrYPMVWdDq14cG8AifnKXaKKkdL+c90V60+fh0mPnGAfK?=
 =?iso-8859-1?Q?BugZwGJ7zXYzDKlub7sqWad2pifw94Rc6mCdL5Acqch7RZT7F/s3x0LChf?=
 =?iso-8859-1?Q?W5Eb1l6pJXzqxkT8BHJD1Sj2kcPmXK99RPrx55rjmGTqfBMiCfsNEtxAul?=
 =?iso-8859-1?Q?5NlF8tla/14Z0XCZeNPxpB8Cq2fDLAYlmooet9vSO5kzgim60P6aQ23EZD?=
 =?iso-8859-1?Q?qksGZci7QUMQXbPwAa68QssgcLe003Fc7r9duP/fxqJjfMAZ1HI1f6BxIu?=
 =?iso-8859-1?Q?Q3m0RE3a+rWS4SXiHWOIE4mLT4TqdU83l+Q8BohkAN3wUaUt9N5lMewVKK?=
 =?iso-8859-1?Q?voFHCXiDUBakGrLdxd2o/h9oIkGSWIPUW7nYgPs1/Wb1FIFCa1UV6MJ4zw?=
 =?iso-8859-1?Q?6Reg+D0Vn4TpKdi99dAkb1x3/bHgGChwSmdrAulhbe9WfOm5o8Mx3hDQDE?=
 =?iso-8859-1?Q?bfzFXOFGUnw8zRQtzSskX8TvNZSHqJ8HGWpkrHji2Wngul3+E2b0o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?7t8IqG89pTP4ipS5b0aXUqqSjo87zAu7kYjZagiya56P/LLlUBsoVC2Vrc?=
 =?iso-8859-1?Q?x2ou4uuFH1XG6YELKP0HAHD5DxjLipUHtksu0V6rQGoxk43Ryy/0E5mDrg?=
 =?iso-8859-1?Q?VDa6OeSzNoi6n/LMAIUxxij3Exb4Mlh5YmRExpLDllDkUi0Uk/rXBfrb0P?=
 =?iso-8859-1?Q?xKJjYq0NsnK71RkRteVLMUO4BXMrmYzBFxkhuWgHxSN+PgOO8M9utuQN+s?=
 =?iso-8859-1?Q?bKtvX0ku/oVlfGFRkoJkLUHWs7BFS1bO0IkL/1xVKiToTjuQJ1SBXT3t53?=
 =?iso-8859-1?Q?kFD7kEVi1aEiiawKFPgp2++W5JBv1+XFL1c1T8XSmSphzgEtcUmGz4Nfa+?=
 =?iso-8859-1?Q?HDORpZVVEiUyRCnUhzTtNjg4GySle/vSFBAxq6AKMzIiejgGVJMtUxONe7?=
 =?iso-8859-1?Q?tMOBkYjhLM110AqEIICJdVferITYxKIZT4KtPntFeXLrLo0rr74vF/agoZ?=
 =?iso-8859-1?Q?EvI1znL3lyglTLZJ+zHZM+EHkIwAWR+rwYugYK4gn1zHZVanG/Tj2X6s8o?=
 =?iso-8859-1?Q?zPQHEidQli1aHL04him3V4egIlo7+CCeNsVcaC6WwddySj5HDnKXZ66oIX?=
 =?iso-8859-1?Q?tOyxDg4Gw+Fj54PyHzzhTeC2Emz1jtBT+UUdpcIM0D4QxiQJhmHJHoeIEU?=
 =?iso-8859-1?Q?xrhDb2l/fMdEAHNY0pTvsjLztxB3OTXNK4QE50INMH5vTaoCVsbDGDWuWB?=
 =?iso-8859-1?Q?aTI9MuHAamrzR3fNcIdJNXwkQG+Yu+e18g1pKpRVBPUB3ZSpE0Cef4E6Ix?=
 =?iso-8859-1?Q?9S2s2HBrys0CdQ+xiADR9Q4NsllIOoMPA5sL26Q7Oq1CSUSaBbVpI8w4b3?=
 =?iso-8859-1?Q?lksztraSi6lNp3D+tMI9+UEfZx/ICqx6mhYZ5JXoidyDUFDc8E+SxxBFy+?=
 =?iso-8859-1?Q?tos+1gDCgGbCQq7qz81+vY6a8VdjW43oklgsih9m/x2xII+Cu/UD051Y69?=
 =?iso-8859-1?Q?jseIh/dAk/lSO/U4zjUHSX6DjBpUPLIWRCEWEaUqCSEYGduk4xnFOQfHP2?=
 =?iso-8859-1?Q?pqLGbCUUmqfdgc2iqImo0euleG1ebYfksJ5FDGzim0ZLPxjkmct77/O1+e?=
 =?iso-8859-1?Q?5R7LOc2wtTa9/xAQ7B7SLyvUbFIPgEqi7iOtdiKyevdeZB0uc9I9RsH+Yi?=
 =?iso-8859-1?Q?528gdnoYRb70/xwowZkIL3Hb4Jbp+W9sZDdGKqZbrPNFnKNmkXM2iS8/CA?=
 =?iso-8859-1?Q?novRyQ1IMtOukwsSQ7Xr3IDk5W4rRYacORi+U7xk+pMCzU1Qyno1VcA8/b?=
 =?iso-8859-1?Q?e1xRGB+SehfX8Bn7FMV1K5wYW41kSO2BGDNS5+l37kwo+jTxKIhx9SBCQ0?=
 =?iso-8859-1?Q?v2pUQeMBYvvVnrkQQ1ipboMeww/Bv0/gmY9NohsKwRh58kQfai82VHL9Ao?=
 =?iso-8859-1?Q?dsbqSkHplYhs54/8SyFs/gW8mS+R/+QbZAbfqCxZkCpxKxuoo+U86wtPDn?=
 =?iso-8859-1?Q?ET++IwUPTHdzZ2SYC/AmTFdOkKVEaPNLDbGHYhxoNDfwg+4GIg2vdnwb7g?=
 =?iso-8859-1?Q?WMfANSHOciN7OZAv+pQzA5KmwqnQmRnhNnvMwLadh2adsLeQJRo5jkl1eE?=
 =?iso-8859-1?Q?kS6Y1BTyKjI243yG+XVsM4r6vu7QzRNHwUZRc8AqgEa1es5frVIAIet153?=
 =?iso-8859-1?Q?TDzx4bnUalgDtDoIKw/9XL5WzA2m6W3R9S?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3be8f209-a836-4e35-0395-08dcf706cfe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 04:13:00.9205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x+Ia0JZgpMyfrxD40sp7gWGwlbx3w9/WDKn/iIYZT7W1cOZwPdqFK/lo3upWXeTde84iQxRTb7hHw9MPSDCQMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7692
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
> Sent: Friday, October 25, 2024 1:35 PM
> To: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and w=
idth
> limits
>=20
> On Fri, Oct 25, 2024 at 12:54:45PM +0530, Nautiyal, Ankit K wrote:
> >
> > On 10/25/2024 11:51 AM, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Oct 25, 2024 at 11:31:32AM +0530, Suraj Kandpal wrote:
> > >> Fix the plane max height and width limits taking into account the
> > >> joined pipe limits too.
> > >>
> > >> Bspec: 28692, 49199, 68858
> > >> Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in
> > >> intel_dp_mode_valid(), v3.")
> > >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++=
---
> > >>   1 file changed, 16 insertions(+), 3 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > >> b/drivers/gpu/drm/i915/display/intel_display.c
> > >> index ef1436146325..fc578af4f394 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > >> @@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
> > >>   	 * plane so let's not advertize modes that are
> > >>   	 * too big for that.
> > >>   	 */
> > >> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > >> -		plane_width_max =3D 5120 * num_joined_pipes;
> > >> -		plane_height_max =3D 4320;
> > >> +	if (DISPLAY_VER(dev_priv) >=3D 20) {
> > >> +		if (num_joined_pipes > 1) {
> > >> +			plane_width_max =3D 8192;
> > >> +			plane_height_max =3D 4800;
> > >> +		} else {
> > >> +			plane_width_max =3D 5120;
> > >> +			plane_height_max =3D 4096;
> > > The joiner operates on horizontal lines. Why would the vertical
> > > resolution change here?
> > >
> > > And this is breaking ultrajoiner now.
> >
> > Yeah this will complicate function to check whether go to ultrajoiner
> > or bigjoiner.
> >
> > Perhaps need to have separate function for max_joined_plane_width()
> > and max_unjoined_plane_width();
>=20
> I don't think max plane sizes have anything to with joiner. In fact we sh=
ould
> probably make this code just ask the "primary" plane its max dimensions a=
nd
> then just multiply that with the number of joined pipes. Any other joiner
> specific limits should be handled elsewhere.

Then moving back to the old method of just having width as 5120*num_of_join=
ed_pipe
And height as 4320 would be for the best

Regards,
Suraj Kandpal

>=20
> --
> Ville Syrj=E4l=E4
> Intel
