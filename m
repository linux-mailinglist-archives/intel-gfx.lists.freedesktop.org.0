Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F01068B4A8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 04:52:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A192F10E300;
	Mon,  6 Feb 2023 03:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1133110E0CD;
 Mon,  6 Feb 2023 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675655553; x=1707191553;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n8F7ykFiK3D32FTPIQQi7p3EkOV1gGAWpvJfKmVvkSw=;
 b=lXO+/P5eFdiin+uxG6ozmSwP/R5wL4l3HUjHq7r9DNVFKeaLWuhugUNe
 lZFdgh42k4xkghIg0JIma0dAjHGOabbeksEqL9CfLGFLlHrCCSz3TweXz
 a23iHlGRPCSFcShPt020qbf1y5tSgWsMWMZ6JtMI/WEF5KZTcYA4WkiZH
 5mK0ggay4PdEIrucGT+WYR39Rw6F4xgnNA9BUXSdflpzzPI4QzCDIdd/G
 IS8qcl5cDYxY9BpvwDuSC7jU+HR9sI6WvBBkYev97x0cmi0JFCRDd0KEy
 CFeUMcIiuIRpcOMXHEH4y+zLl4HHiGG9ikAmIq58juJr78iKPGtC2Ymii g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="330417991"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="330417991"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2023 19:52:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="616316225"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="616316225"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 05 Feb 2023 19:52:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 5 Feb 2023 19:52:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 5 Feb 2023 19:52:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 5 Feb 2023 19:52:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 5 Feb 2023 19:52:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kK90/NPnL8RDo8mGBgsl0Yb5KWL8y11sZpfPwkg/KrIa5b/DQ4fB14tptQ6nlAKIHRoEH9bqjSfz8uHKA1L1v7cmR1AebV2PeyTRl9C91w4yZLbnCf4aIP4zH7p1pnaO6xgmrbvsn5HbM4FREr4jOroKyZBaNQ1gusABdhEtcJxej7sQFT7+PH3F+HXWwcvZ3DfrA4tDq5eCT3kiCIRivsh+R5GDK3mitbu9qrF54v4xaVa+0CbmFtEyQrfijnfiTVVDXaUOEIDhtnSZ6XMmkK/tghzdkeMBqZR8BdbliseMBAT/T7WXcVoOE073Lua6ndwC3e9XTM+M1KsUF1HFPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UeHWSDGFQm4aEm3+sNvsgXMp7IV0r6A5neDylXNQeM=;
 b=DE6kJSej3euEFVm6abiBRNRistsFLy/v42Sq5PiLYOo++VXM0A3fBbuHqtTTHxNXtQZKapQGMN0jaM7xJWRJ8Pe2MOBZn1zcyWyfCGgwZFWOIoZ380kT6JGh29sUtvhw6mrmJVAf3XJIiaU7mKjN4oA3CqKHr/EZSfce+M9OPSIbiCdjiIW6T8KyL7Yb5RfTv0q/GtkBg5b1UUPKTkjpAMWSdQesF5MozRRvtWx9exU1R0ROIj2DlNPBQJoh/GywIw4DVvXO/OJ7FH4mpj8f8GpcPgBDgk6fi7AcZADTf1PNeDGYvVKUtqYAySrK31OtP/9YAy2WHoAZrfn00ZwjSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by IA1PR11MB7810.namprd11.prod.outlook.com (2603:10b6:208:3f3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Mon, 6 Feb
 2023 03:52:26 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::6a8d:b95:e1b5:d79d]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::6a8d:b95:e1b5:d79d%8]) with mapi id 15.20.6064.034; Mon, 6 Feb 2023
 03:52:26 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>, "alex.williamson@redhat.com"
 <alex.williamson@redhat.com>, "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "Liu, Yi L" <yi.l.liu@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>
Thread-Topic: [PATCH v4 1/2] vfio: fix deadlock between group lock and kvm lock
Thread-Index: AQHZOBmQ43ni2TX4OkKomzgfxOFFkq7BTI4w
Date: Mon, 6 Feb 2023 03:52:25 +0000
Message-ID: <BN9PR11MB5276544E7CE1289C6A6FF4098CDA9@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230203215027.151988-1-mjrosato@linux.ibm.com>
 <20230203215027.151988-2-mjrosato@linux.ibm.com>
In-Reply-To: <20230203215027.151988-2-mjrosato@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|IA1PR11MB7810:EE_
x-ms-office365-filtering-correlation-id: a3efa97d-95bd-48c9-957f-08db07f58f8d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mFpftxVjTM1cI95Eku2fvO+Kkt3LDvBQC8JomH7Y188I/BOI0AqI1SKT106N3nran1cqH7L5dpTjsNirMw9c/Myj4S8DMkx7xRySTz2sChyc/XPiivOsLwjx1ALDxhnPhgkjbWrNuONC9Mav68zWJe5T6UnDN5Yha7k6C0EXs6mKYtXnKrx6OnbygPtpVkOWWx11a9jLuBl0VIIrMk/Vo3TeOiuKt1BQhvh5vmcgr+bt8fjdnxF8x72IVvxtIA0O3H33trHdRSzUSKPgbxwiTZPWlFTXV9HBOk/w2XUX35oOoxtCiS9FO/Fr+MLwR/QTqVOoqyVpwX849e3wzwegj/hJMNRi2uKbNcEKhm76Lb0nihQHJ19WKMfAsOF9NRWHG2TW6zh2jTGEUxtqv+fd0afFS3y21rdT6pYUIV4SjfoLsXvztExlk3Q9tqWeWQyPjJuvij3FDSjbfxxX0RgAuN2Ju82iR3vG1QKq2DvYPloLvAfc5MzX1YojPQObuf9X4Ck/Q8HtRHiW+vNSuYeDl01k9dDG7LNNHMyw6tU7vccX8hknHC0xZ/7wbiShOnBrkgaMiwW0dz1kUgode8v8KE4ctF7+PblcXdyg0twbqfxeX6tCr8JwdUjdVpHhb8CjWSceYv5zdXDT6HZG09nWKDaEI5ZNAq5QDyorJCvGDvBGBOw8qkw66zfIlUial2Th4DKOgWxXlmLmjTXHXLrxhQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(366004)(376002)(39860400002)(136003)(451199018)(7416002)(5660300002)(52536014)(8936002)(83380400001)(41300700001)(86362001)(38100700002)(38070700005)(55016003)(82960400001)(122000001)(2906002)(186003)(26005)(9686003)(110136005)(54906003)(6506007)(478600001)(71200400001)(7696005)(33656002)(66476007)(76116006)(66446008)(66946007)(66556008)(4326008)(64756008)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qzOXEKbR3h0De9cFB1Ojqo6ukMV/tBpxWVlMyJV+mEcXJa6mLQ0bYV8AXPe6?=
 =?us-ascii?Q?q/bh1GIUPx3lwTZLEYvlkMxpZ1VY2f33BaQfEoNMG6h17oNVSikOnopAsZf9?=
 =?us-ascii?Q?lUi0MoypeP4w2iuwtP7XrV6nh9DqaNNF97ZaWFFEq/+B0Fntyw6SpmWsDPFC?=
 =?us-ascii?Q?MYNP5TCj/z5rwUJgfIJnoBLpvDHOz9xKFk9y7OTpBHCrMl+/uhVFkiK4fvs8?=
 =?us-ascii?Q?1Y7ZISQ8vur4zbIV7yskgC0UnhCgumwNhWJNE+bMYYlsnYpTMmsWOYtRGfg2?=
 =?us-ascii?Q?2WacG2m4qXZsqNtGOI+IXRkejxy9MescAgM87FonyzGBi/g7WBhaSHlmqdQX?=
 =?us-ascii?Q?wnYJmOMXXIpp0dxAPsxQoRtOlc0jBgvbX/xd/DDOUPvf09XFKRLQ4RT4REan?=
 =?us-ascii?Q?jp/m6TFJcpeNShC7gh/QaSzsXW5DuD1u8ilrL711hgE5WGP+e6w+1Fpb+BKc?=
 =?us-ascii?Q?ZccN8v11UhsrqxPKmxS+Yppw0q9B8gUI2UClAIRPRZe7fNEMISN1rX+lkeX4?=
 =?us-ascii?Q?TTRXQwJiI3KmAOFWKhv4MhkNNdrZOLCNGQsrERfr0wCQ2csXaQRYPSsoZiaS?=
 =?us-ascii?Q?FYSS5kxzsD3YFVBby8Y+hjFci1bj1uwRh5dXw+KPnkYyXa1FrA4GXSMjCNIG?=
 =?us-ascii?Q?YXE9mWOPGcSzANxUQPCeRMF7QhMpgIYQ0uflD0m5duXyqbfSnu+vem+UVfIX?=
 =?us-ascii?Q?Icm48lgVLHOu4Q+foWyrL7g8uEFUrrK4YLTYH1BYNzL5JMOEcKtMbS8g/Skk?=
 =?us-ascii?Q?24Q9ksNTMNy+kUkJQojrpkcP8bb1YFbewwgpmvlm9L0znN4IbVMrM8ZGfreh?=
 =?us-ascii?Q?U0PoeHoC4CE3UGI5m1Gunysfg0/YWzTRg8KpsGpOLhyzMHsTzJBPADUiWyX6?=
 =?us-ascii?Q?J2YBQNgBeb5gPyXjv4EVUedHNlYoY8X5k7uxaayf9DUXYStQW1jhAgv0TrnG?=
 =?us-ascii?Q?eEzYnyVWr2MZfE0/8UYkGOa2SCHm6vrwKww4t4Js99LSRpuqIpIyqy0rIck9?=
 =?us-ascii?Q?zPuYXoz22068UeQkGuwtJHEz2DnCxTDUFF2K2PC1OMAFJQcQz6t1RuwjlJZq?=
 =?us-ascii?Q?d6g/FOZLVqaLq0hIFstKwtjSIOQnpVfmlbly/+lnowYblBSLOPtjeOqK4dZD?=
 =?us-ascii?Q?cyqTQO8zboKk26IAaTrnGwXDCNZAPwhNZwvZ5Z5QTLDwTQFEYsaHOdq40Gck?=
 =?us-ascii?Q?rFBQiWMBZECu/e9H0dlVmfgxwp9N/y0hKhamhzNRflXk3DLOR8lMVZG1svm+?=
 =?us-ascii?Q?MNoHqeDeHLZrNi8XSCYJU0vF9FAZtcoMjbWMh5fZDp13HVkMaCoLJfL2iAUc?=
 =?us-ascii?Q?9Y98PjKSFVqXfvUl2w2O6bJ5/mUfvoyeIfCz4Yy/43TjhpIHMfKfurDZEDZO?=
 =?us-ascii?Q?8w8NtSr2YYylDg0N3HYFT1v6YhwtLuQ+WKP9nm4QyAMFikrHmUy6QWK7oFde?=
 =?us-ascii?Q?A74bhEtxfif0cUSIsLrcAI9xEGqATZMfgzkCBE52Ji3BpLKLPDevyb7V6nO8?=
 =?us-ascii?Q?BHby6mZCwX5QOcnfdegT6bNBn6vYFuZ6X5PrSz5UNqbm0cQgSj2g9PzPAdNU?=
 =?us-ascii?Q?mdpoNCBBzKgX0rM7RCOS5ZfXlac+3DPG2jLHMhVr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3efa97d-95bd-48c9-957f-08db07f58f8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 03:52:25.9704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2PpKrX7m2gVyJjUxUaGPMJAPKy9sRHKf/e6vfrS4MwPf05NkD++dx85DgYK5IR2jXfL9y0Hi8cCZM8oNBFpOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7810
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] vfio: fix deadlock between group
 lock and kvm lock
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
Cc: "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "jjherne@linux.ibm.com" <jjherne@linux.ibm.com>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 "borntraeger@linux.ibm.com" <borntraeger@linux.ibm.com>,
 "frankja@linux.ibm.com" <frankja@linux.ibm.com>,
 "pmorel@linux.ibm.com" <pmorel@linux.ibm.com>,
 "david@redhat.com" <david@redhat.com>, "Christopherson, ,
 Sean" <seanjc@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "imbrenda@linux.ibm.com" <imbrenda@linux.ibm.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Matthew Rosato <mjrosato@linux.ibm.com>
> Sent: Saturday, February 4, 2023 5:50 AM
>=20
> After 51cdc8bc120e, we have another deadlock scenario between the
> kvm->lock and the vfio group_lock with two different codepaths acquiring
> the locks in different order.  Specifically in vfio_open_device, vfio
> holds the vfio group_lock when issuing device->ops->open_device but some
> drivers (like vfio-ap) need to acquire kvm->lock during their open_device
> routine;  Meanwhile, kvm_vfio_release will acquire the kvm->lock first
> before calling vfio_file_set_kvm which will acquire the vfio group_lock.
>=20
> To resolve this, let's remove the need for the vfio group_lock from the
> kvm_vfio_release codepath.  This is done by introducing a new spinlock to
> protect modifications to the vfio group kvm pointer, and acquiring a kvm
> ref from within vfio while holding this spinlock, with the reference held
> until the last close for the device in question.
>=20
> Fixes: 51cdc8bc120e ("kvm/vfio: Fix potential deadlock on vfio group_lock=
")
> Reported-by: Anthony Krowiak <akrowiak@linux.ibm.com>
> Suggested-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Matthew Rosato <mjrosato@linux.ibm.com>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
