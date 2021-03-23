Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F76334576E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 06:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152836E08A;
	Tue, 23 Mar 2021 05:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236DD6E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 05:44:26 +0000 (UTC)
IronPort-SDR: TRlfCRmQZ4RLjRG5DUkACArmAgVHCA0cFHGWVraHy7oKaRMlSAEFZHCJ/WgDpew6RUhKGM2iK/
 gumXcJVM3Cag==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="251764395"
X-IronPort-AV: E=Sophos;i="5.81,270,1610438400"; d="scan'208";a="251764395"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 22:44:25 -0700
IronPort-SDR: GZAUkLkf2NVJPF+CWGSBNT12YN+oybgyjWHvw4pvdL9Ckw93CQfwl6MKM+Rv+uPOCiZILn20h9
 +PAt7zeumWXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,270,1610438400"; d="scan'208";a="592855924"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2021 22:44:25 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 22:44:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 22 Mar 2021 22:44:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 22 Mar 2021 22:44:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZSJgCoD7KAIQwHL7FMk1z6+SJ6Zm+UoCHh9n7qVxsaH4zOcyVHj4G+fioqnkEZNWWvsv+igUaLA9/fGnHGsRGSk8X3/4aB+IdCNres1pJLUN9iREFrsYxylEVw3VhazXFsK+7FA+A0froP/a7fk73IydxuSKcAXGDazLTA/AwuzPpGFZx35wkLOWmq7kYI4u4TBh2N5F8r8EMSeXTPycaHz8XT37hA1eBXcM8BuqX+Vpq2TP3RZAgD7ULVt6AdUQ4i/BJWDsS8B5LIjpttQgQKToKmz2iibVWH7rPMSocYrz4/35imhlWPQNYfCby4N5yz7jVeDrAF2LLrN7ceoM9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EPduEEbIFOoF3hLgqTsNmZIYALBI+RUhexQIYlv17JQ=;
 b=bsK8nxv6FG1e1ktqNyPZ7G7WSpZwx+cVJb/xF60zDm02LG9ds0EOwZeyce1FqintPs9wu6E9TWoDF8hwDi06ilDqZoNH8d715mMSEqyWqNtz5zmaezfDNwxPugJD8X59Vqh1KxbiLaEOfkJYevZMHEIRjKmN8He5ul3CA402aoZU/82Up9+ywzptg813jUGnBLBCWM3MawQVJLFl0PBh3Zm4GGyNzvcpXoK+G4xFkqUrVZNT19NG3OcXuQXd0aL6l/Owj/pJ9gchpDG32KG3WqgMjdmlLeQSXDWPKuUuURB6wtcBVs1lEGEdpcz7rZ6BY4cFDOE5VL+2/WbGp7chaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EPduEEbIFOoF3hLgqTsNmZIYALBI+RUhexQIYlv17JQ=;
 b=cFbWXZksdun/nytLlG3N6cbc9Kq7LllXuvrMrhVn/DN43vHRpy/lMxlu8yQ9KOxIWyrc3cBnAts+utC/bZzJ5iKyXsuuZ4LH8ci0SQrqy3CjtuHxpAgMFP+6B+fDb+pM6pUIuVdHOdkJ1XxNGGWu9R/CBOC1I0SPKg2yB94569o=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4924.namprd11.prod.outlook.com (2603:10b6:806:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 05:44:20 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::254e:4fd4:a263:8a77]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::254e:4fd4:a263:8a77%7]) with mapi id 15.20.3955.027; Tue, 23 Mar 2021
 05:44:20 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: add missing PCI IDs
Thread-Index: AQHXH1s2fozpER7AXEGC0OpZVXXaPKqREBsg
Date: Tue, 23 Mar 2021 05:44:20 +0000
Message-ID: <SN6PR11MB3421B99B6D629A36531E5E0FDF649@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210322202730.1066559-1-lucas.demarchi@intel.com>
 <20210322202730.1066559-2-lucas.demarchi@intel.com>
In-Reply-To: <20210322202730.1066559-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [43.250.165.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 810ace79-6a59-498f-2f1a-08d8edbeb4dc
x-ms-traffictypediagnostic: SA2PR11MB4924:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB49244FA0FDA525DB0A62B8F6DF649@SA2PR11MB4924.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9PYCZK9jtxrihj/i1WJRtq2OFwKvWCc7QxBmo5chAPzIskEeJSJRdpID10PywRpFtkEMqWRT/3BnZ/DQ2Gr+q2REIYEecKH9qwZDKTumHU0uPq4iszp+ARd45jA36O2HRRyJuRWtMN88/GLzwGereM0QElO6kL+kUzsh+uSbeSQnafDakmLSCFxp5Shk90dDCschLcY9qCXuHpugxIUqwYu7/JxbGv3ETIcHnqS5m/QRA4q0QFqCIPW7fXQ/UVhacWryk/GQm8hvSmScZROF5CvHIDzOfPI7EKm8pJ102YVDNR1cSG34TemjIdZJuVxRHrp4Kz+oa9QbhPv47TTk0Qd+rg0ZoLibKaXzAk2EAan728mw4lluUtSt9WFiGaYpxQ+C77D7jfmAVNZY6fR7OsnFLuWKH/mFh208tU0556k43CdpmCqxuEYIUo0dupcqkRk3OPz83ZmDm+Oluc9Mm1efjtqDGL+syta2aqM4rYz8/90mUhDQJu9UtGlJ723PCMX00abe81sAnlO+YQDiSz9kEFmuCfOlZ24IeyP04ir4ZZu466aq1/CHMuuZKqjSIytSpMDutcmQ96lStyrD69p4IvAc+EzPf9KMD0Ef2DKkaEohiu2gZa+ZZQletP4laCUNpceN9k5tam0XL5nBqAF1nLT6b9TU9P5fR+YLr7fJMhoEm6eiEXpUAB+CNimnLXjd8QkTiRA8xcgo+JgGwdY+ywLrYfWU0x9aJzsUtso=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(136003)(39860400002)(346002)(396003)(6506007)(2906002)(966005)(53546011)(8936002)(38100700001)(76116006)(478600001)(52536014)(71200400001)(110136005)(26005)(66556008)(64756008)(7696005)(86362001)(9686003)(66446008)(66476007)(55016002)(83380400001)(316002)(5660300002)(66946007)(8676002)(186003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Tfz/XGz04o/kkhF//HjQEUlu7lie5jyz5WGCAByp5YwPYXz2PojBQSgyiXJq?=
 =?us-ascii?Q?W/GaxPty2dXxVJIXl0RbSPHmGa8xbEazvzxYsaTP9naNa+zVms7lWAM/jVip?=
 =?us-ascii?Q?UesXxXwKR3YzgSq2O2nPQM8OG7dsdxFyhKdQl32lQHGGXdmehrYwO8BMAzbZ?=
 =?us-ascii?Q?K0kptxcvW2MFAL1nruCdFZ5mMcMRnQeyRersDbSjFX6lhdffoQQx3O1YSV12?=
 =?us-ascii?Q?fXksWxO0MJVjMGJKTn+n0lTc+tle5id2uP5Hv83NfhWvD5UlB5DIX1hritep?=
 =?us-ascii?Q?GbSFEynvmgbeSWfkjAWiVpL4eSpL2hObSOrJEiIKjKJ8UknmKBfAGpwB1JuI?=
 =?us-ascii?Q?oD6iIgYzHgveqMqja1CfHWZGYdylsKpoj638qBZFxBwprPLimHNz9c20hvr0?=
 =?us-ascii?Q?68Ecy9m1ULfJNKjh9GSO2mPLlNX0DTc6ZUxEGutlqCYOcmtB9VccIfOAOfKZ?=
 =?us-ascii?Q?mSWR8u1kDgtljL+iBj8CK3PP8Hegmxbkn2qaHD44Bjy6T0KRJRYGeVISqei7?=
 =?us-ascii?Q?ETFbzM4SNReCxZcmosNAUeqzLp5HQfWkVvmtxDWn98wrDKwrhY02vuzngI6o?=
 =?us-ascii?Q?t1ZLQek6VCZaPnh3Ru61B+P7t0DL3ijExFNp6NA7HJeoVl5kZAiNl7T7kADG?=
 =?us-ascii?Q?XfTxDltqmevxtwCke8qPuTKkBysiCNXv1OgNK9VYkzah4fEfBIsSWEitJYRb?=
 =?us-ascii?Q?pufz5WWey8/5ZOIO65LrSOdKIS2qgkrHh9t9I1l6uGz3KX8KBtSPeyJhufHa?=
 =?us-ascii?Q?6Gto3ukLg6upKwYn0lH6h3cbR8l0BkYXo3CIUgW7i1KC5N+p94ykYW7ioe6K?=
 =?us-ascii?Q?QmlIH6gAKbmate4LihvNuBJSeYKC0jJk8bNE6dnAmwd+MrOlLpaYwz6s3afl?=
 =?us-ascii?Q?PP3JvqUU7RxDsiKulpa/pTQLOvCq8tq6eiBZJx5jlFSNBlLRkuu+Q2TxIeB4?=
 =?us-ascii?Q?5ESrKdg59B2pWT8zzBiNuhE+//RA8jjYOWg0WrO8/yspiRrm8+2Nuav5JBD6?=
 =?us-ascii?Q?0HguWANSnnNDWkIJF2gxreDAn7fDvTijZu4dWaqyj8JQtqvz7ImiJWZtUnnG?=
 =?us-ascii?Q?tAWc6qggVZr/7VCg79DNKHN592S95/MMQDpxW/AgMpLiCR7fLzQ7qPtPi3Ns?=
 =?us-ascii?Q?Jlz/u8JUereox5EQPBtl2RBxHzWcWh1zo9E/Z+pg1iLetYgCoInyQzJ7gmG8?=
 =?us-ascii?Q?J1bdTM2EwAWf5t+EH77VdDSbKXyW7B++4AOj4h4qt2w8x7aXp5zd4s0fKp+W?=
 =?us-ascii?Q?aAIK2VUeSOV7tgCix67SzVE90L4Oprjdbjf/dhNN4XMx/zkRxj6rjJ4xQEgS?=
 =?us-ascii?Q?TLpFzAC/xwU8Z3BPj18ZlwpP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 810ace79-6a59-498f-2f1a-08d8edbeb4dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2021 05:44:20.5673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 31fHfgseuaXbXraY8iOD6GqObbw/09wZcJ+3My9RSuYwh+l4i0zTeH3UnAUDKhjGBTs0/wRy0MGB84T7RCxZmdg0LaFUXh4w0eG2AI4nvhQ/5fwAwYMWmRKzFLJ7ZgmDcr1dg0H7KaZjhqQB/m6TsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4924
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: add missing PCI IDs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lucas
> De Marchi
> Sent: 23 March 2021 01:58
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: add missing PCI IDs
> 
> Synchronize our PCI IDs with the list in Bspec 53655.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  include/drm/i915_pciids.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> ebd0dd1c35b3..3be25768321d 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -640,6 +640,8 @@
>  	INTEL_VGA_DEVICE(0x4681, info), \
>  	INTEL_VGA_DEVICE(0x4682, info), \
>  	INTEL_VGA_DEVICE(0x4683, info), \
> +	INTEL_VGA_DEVICE(0x4688, info), \
> +	INTEL_VGA_DEVICE(0x4689, info), \

As per https://gfxspecs.intel.com/Predator/Home/Index/53655, these are still "Not ok to upstream". 

Thanks,
Tejas 
>  	INTEL_VGA_DEVICE(0x4690, info), \
>  	INTEL_VGA_DEVICE(0x4691, info), \
>  	INTEL_VGA_DEVICE(0x4692, info), \
> --
> 2.31.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
