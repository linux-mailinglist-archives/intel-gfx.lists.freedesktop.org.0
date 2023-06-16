Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2734673266A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 06:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F7D10E599;
	Fri, 16 Jun 2023 04:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764A810E598
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 04:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686891276; x=1718427276;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ghbesCW01VLlJS2WuAsVUG4TT8cRVMX5MVlvSzawErY=;
 b=VrqPzTtTzP/Vc8pZo/pXvBmjHZvMVamW1mMj1XKDCpqC1aI7mV/2OGGH
 76EC1+md/8ANEJ8FdyXfjIK7jGg4LFlzP6cUCbmksExL2i6nPFVf4Aepn
 shgR6wF71+9gYX9+AmRGFKVY1G2sK2kOdlyOH6XFh2D4sjHYp12UiZ6yP
 A13X8Px20/3Q9s/5GPFnI5XOBS6X+BEBEQycLB2Ypb4HMWNn/0mGXon22
 xhIMl/1E6uBWtfo5t33ckvdtIppQ+dZbYxMkIBYjxZOA60yS5brbhD701
 AHJxAdSaB9mJmIy2SmBuQ6PUisdGngUqlAjqgZCRPRVW2jsJOnYnYYkcW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="357990548"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="357990548"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 21:54:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715861505"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="715861505"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2023 21:54:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 21:54:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 21:54:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 21:54:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 21:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P05SABfKqnrKlajJ7rcV+SMZJl7YNuBMyh8DZXw+/8063v4wFbjWsM4/BUTkhMVnj3gvrjqMOhgkbIFLb6JIchWB5/oUpTouFqe428S0bHz+sJiR+yoGpvq63M+HaQ3qnJ3Bu5x+vJddVTp3PKakGSf9bx8q39TzAe27w2iJJOflXsxMaGbQuiunsKoYB58WfzjItWgB1+ZLIRMO81qLHk6MGT2+qZVx1AvOj9C0ikAV5QCxk3j1vISMARD/JXMV0n3tTrwS2DH58vNS+ZmAjDmphiU2FyLHIv6GOeMJwKFTx/ewB4YLmmoSBkFq7m6MKavSEfm+4F0RRokG3FkeNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QdXnptdUiP4D0gyyYTtinfZhHkGzxWiB3vo/eVqIh3w=;
 b=GqgaOlx3udgLCIuULnJZNKhb3CUB6iBg1n46lU/zQlXmH6mhK30TBWX052zG06G7EKgtkChPUcVslJGu4ZhxYggIADAKlUJ7O/W6zOKRix0Q9gWtebtTXFzrv9PHpSmJb7hhkEF8QcJfRIwq5CG52lcd1s+3J0rbg6Z3jLspVtZnq3CE8dpuD0lv1FvP68x+/3IYcTXxCG31bOMBNM5Cs1U2OwFYoi5wdMJiFim40DILMn1pEdGdSRS9PU1X9K1SSKh5nYhFlL3elt1sX7J4mKN0c6WF3/y9y4RyGTyxhFFefDlO4DIEy9C+VLwi6mXgToAHlrV1r15Tg2IhTuAVLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by DS0PR11MB8136.namprd11.prod.outlook.com (2603:10b6:8:159::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Fri, 16 Jun
 2023 04:54:31 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::367:74ad:3f83:ea96]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::367:74ad:3f83:ea96%6]) with mapi id 15.20.6500.029; Fri, 16 Jun 2023
 04:54:31 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
Thread-Index: AQHZoAzPZ0EDLmynIUGprKW/ywzb7q+M3SYA
Date: Fri, 16 Jun 2023 04:54:31 +0000
Message-ID: <9d9433c1f656ca76ab8befd6cef2a63db9f868f4.camel@intel.com>
References: <20230616043950.1576836-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230616043950.1576836-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|DS0PR11MB8136:EE_
x-ms-office365-filtering-correlation-id: 7a339422-c09b-46b6-0fe2-08db6e25c5fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q8U/YKHWCOtENHfEEBsIjtBO2KSizMITgDrHRE5KH6m9kLZqpickFnnIWilJbWyqovGAO3iC8b+FMbyrK6b8vzKCqOzPC3OL93tXrNtZ3XetRfJeSMbbTZDfBItEwVyOC05/3JnCPAAALshLKOfRSESyqgwHQOV4I3EN15rLv73A9xpOLkwGL1LWVynvd9q6r4h9PmolKYkFUMkcnohj1vcWoXiKqZpRKddzU6ZardAl3wF/m+GISQjucFNFv3tvzeqxh26HFZ/1QTYYXsJ+7tfkAlA1CL7WEedoBzQApLMhX6qR0WfJggkuLRykFyl788XYwnXChO8kk9CZCUbLQeVqKEgmVyrVMKsD1f9wCPPuAfoqLFyP6ytHKWzCc7c4quAUekdTAJQ/3+B0eNugwi86vMgH3M6iPJsukF/aIPh30Eo3mgjtinnbNb94S6Al7nJ0JYTq5JC+8QOiuvpnphBWdrQlAUHhCt72hrLcRCJeHfPwWNDGN0BbY+rpjEnMYlXZNmXZNUipxwhEYVoddrAwVPHuKU+wqbqDrsQuEhbA+ReXwSZ2DuMhmTGmhm8UCCDS8Mpx6FRgmB8w7ZiJjn1vwnkM0aicp6LtbRpfsjGgRyIAz2RGS/MkR6bK51n7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199021)(478600001)(83380400001)(86362001)(107886003)(6486002)(71200400001)(66946007)(4326008)(76116006)(54906003)(66556008)(316002)(66446008)(66476007)(64756008)(91956017)(82960400001)(38100700002)(6512007)(6506007)(186003)(122000001)(110136005)(2616005)(8676002)(8936002)(2906002)(5660300002)(41300700001)(36756003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?PzsQ1mUTUnDUXSKo+c4BnF06/44aHefQ4jvE6Hj0aMnw6mpWuoVkBzI1k?=
 =?iso-8859-15?Q?syZe7k9g4ZMBzv8DDJUyT44PFWCZCW+hi/P7w4vaF3yazbpqGWVxAP/zM?=
 =?iso-8859-15?Q?o7CUs+If9s5YgY2mrbyOuP/0U2lIQRaND/dohbUeFHmkhOZNy6mF3PnKF?=
 =?iso-8859-15?Q?UJUimIQ1iCbgsYqPd1uS09ztj3ml2gbxK/cGyZop9JcVKLpPVQVbxTyCk?=
 =?iso-8859-15?Q?bEyFIKj2jrv8oS25ubWXoNdcnhgEvLelQReCY6SKI/BVevlJRyrNHuQ+B?=
 =?iso-8859-15?Q?AxkMmtKLrccMYIqNaaEFkJnm4BkE+TlHs347k23I9xmwO2KfRUQRCZv5I?=
 =?iso-8859-15?Q?r+v8XgTDYzjW5r3nM+33F8Ay16BVtolUTjaaXdaoju4nAEZAcXn8M+GGa?=
 =?iso-8859-15?Q?v0nVQk3CuCC+4aZoPnlKUKFlG8GdEHs4criK8LLor7dNX7g+taWwG4o8Q?=
 =?iso-8859-15?Q?de7dS5ZWUNlJ+FZq85j5Ec5ID2NtaptOXfuu+oTmyZreU8a9zHpfgTaai?=
 =?iso-8859-15?Q?dBRMIoq7SfdeI2X1C7qGPmQn+LULAvV33Xn6pJyQYG/VXVnBb/idfYaW4?=
 =?iso-8859-15?Q?+sRFpgo8IhOnfOwl2k9c5EQPuW2UAJ7CXXRJtn+HwiNFBgyPZjWc/HPJE?=
 =?iso-8859-15?Q?qwdkCTpsDg10nBk/KKP6y/HOf3pDAdP9iTIAS8Q3B1ADXVwMJ2fJBoYTL?=
 =?iso-8859-15?Q?MGz4BSOyL9qAW4WXaI/ihimBA/6inK5Y5O8lE2iFXZEhSE2BUb4/VWA0U?=
 =?iso-8859-15?Q?zV3MLf3AHuXct3yyfH3AmCHL0Ky2Luc4KiqBComEsrtbuHt6A9HiAzh0b?=
 =?iso-8859-15?Q?TaGKfe25ZNDIox+51GUFUbrwsWzDuFbCr18cqClLMQZ8aB+otbe99XQWG?=
 =?iso-8859-15?Q?rAWekLKQFaDQM1Yf7oZ1NLdbi56s2XqQJWpFKl5IxVSsLOIAJMXN1EP3w?=
 =?iso-8859-15?Q?bjIdy9494cJvqgzgt4bi3Kn279zJtnfMHHNIhDc++1NPchghZ7JRumGar?=
 =?iso-8859-15?Q?hqXbVq79VXKwHFrKBaZ+3t0pS06vCzi/B7uzy9MkaTnzYq2RzNEgkCIy5?=
 =?iso-8859-15?Q?4q+YHja1R/vkWox/WpDTcfm5+lyjS0moTwlzGdr5yagH3JuM8Bxja/FUh?=
 =?iso-8859-15?Q?B1uo2XJmoVs85DNkYy+vHsC4qK9hz51PFxwQdI146eI8ddm50DIkA4MsY?=
 =?iso-8859-15?Q?6jidX8EKJl/gHoK1m3KTRcOs5RIOKD1CFNU4CXt2+nke6ngWHqejSsAqU?=
 =?iso-8859-15?Q?ARuoBfF491KkSz49fK3RecKpq4yFmo3YQqR9OjpKkUYJBChoHyE8Msj5x?=
 =?iso-8859-15?Q?Lo1yzky7+d8OfaeUvQw4X/w6SvGy1C8GmA9l4qF9lDVpwedIBompaaToO?=
 =?iso-8859-15?Q?+ft0pc4IfEkydemIJtC+z+YD095yttaX8ksXG8f1eBmmKgtre1nHo/oPX?=
 =?iso-8859-15?Q?4jX+UkSd97jIRcEX2bQQfmS4HihuLnOabXbhSeSABdz6g7qBhFfIZqE1r?=
 =?iso-8859-15?Q?wT5yHc5EKlJNUUw5durRRhV/S45/yDJ9wRucYHGX8Rv3uZ8IlqU3WayHO?=
 =?iso-8859-15?Q?f8d+cPOZFGNRpkdhIm+cVNzBYq+/AjCSZzgvg7R9BCBQoZBo0WstrLuS2?=
 =?iso-8859-15?Q?+QH59y5VB/fUNhmmGxTyMBPkVEOfWkzhPYY9rgrTzIJQ461Z+in8vRjuF?=
 =?iso-8859-15?Q?BsiKkOpGVi6QYK16yc8q0h8XBEjRQbkYBv+zl+LXeBbbduyVK/ameQACv?=
 =?iso-8859-15?Q?wBeFk3kXGBFZul5mAwY6IqfkH70hMXU+0fkD1cZ8mtq/uuK94yzfxI=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <F05A623876C59F43B494D556801C7B1C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a339422-c09b-46b6-0fe2-08db6e25c5fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 04:54:31.7304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TE1FIK+FTEfVAIPxEMRxYz2AHCJ2Vj8si5lG8I7RIbKnhnYKeEFTi+1cHVfArzuBL8l6T8yn7cGgDKl0QmdRPW1a7RF33JJAwZvp2TkYcjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8136
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
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

Thank You for the fix

Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

On Thu, 2023-06-15 at 21:39 -0700, Radhakrishna Sripada wrote:
> Driver does not clear the default SSC for MPLLA. This causes link
> training
> failure when trying to use 10G and 20G rates. Fix the behaviour and
> enable ssc
> only when we really want.
>=20
> Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates use
> MPLLA")
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f235df5646ed..1b00ef2c6185 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2434,7 +2434,8 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
> =20
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> XELPDP_FORWARD_CLOCK_UNGATE |
> -		     XELPDP_DDI_CLOCK_SELECT_MASK |
> XELPDP_SSC_ENABLE_PLLB, val);
> +		     XELPDP_DDI_CLOCK_SELECT_MASK |
> XELPDP_SSC_ENABLE_PLLA |
> +		     XELPDP_SSC_ENABLE_PLLB, val);
>  }
> =20
>  static u32 intel_cx0_get_powerdown_update(u8 lane_mask)
