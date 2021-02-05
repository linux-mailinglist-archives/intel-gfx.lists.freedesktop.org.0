Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D06310B84
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 14:05:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8F66E2C0;
	Fri,  5 Feb 2021 13:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293446E2C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 13:05:49 +0000 (UTC)
IronPort-SDR: FVabxzAFdO6S/GZske+xV1q4UG+QiZr3UigE3quyNnoN0E0EWZyVC0j1fwFSDKItdLfLuj0iup
 nEcAvb+8LCiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="160587846"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="160587846"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 05:05:47 -0800
IronPort-SDR: Hn3MUciRsr3Ggg5YMg1LYJtLNTaa3sTOTBEGAdGI2S0xYYt0QX6NI4aZVYn1Br78VIGhwbRpRc
 Hf/6cf8lxCqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="434443062"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 05 Feb 2021 05:05:47 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Feb 2021 05:05:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 5 Feb 2021 05:05:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 5 Feb 2021 05:05:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3qAQdR+qbc5GkOofc1w+iCobu0EBe37ygJBhafcZa2WvLlUA+ja6OLeoJrqnvKn1SQEUQjdGUQvjjQiiPQBIaXUoEpn5NlAN7nVRGWCRoefcCVB77/F4YC1qwbKHpRbm0Tv/f3anIPaOgfxT4I/xHyd/M5X9q/MKqO1peMdXZFVOuyaFv2I7babA+9dHULyr88Y+aZ58r6RSJJG5bQYKewy8DpKJo7sa2N/U0SxOZIsKqNzVHqYiWOI4tcM7KrwSNffpnTXbVgnBrtzCPwsHz9Pn6dRF4ImCsIyP4mXf7mSabWb3c5mqOFbAiMPQBhR6zPlEVrBbiGsJxyW9hOQMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmXbBhn2vua5d7yAiPvAEBuXtjjoM0MVbc8Y+xp/D6U=;
 b=HS1ZUX+4cyuyZiTFZNf5SjlpQ5lU2DavHYIfZTiLhVgpN/qDxYZ2iNBhYWwtq6LW57JWaoVxK20pGezNsFu1wQ/cb9IN2qBUXTPRDpvI6/wYskJAgdaYHaBv8pZJua3A9l4Ll/VEXPr4+qfJhBOJALzlRklm4g/kkgNV0DU3yVAAUlUsyD6WMkQ+sO5euIuV9t7PFdjFwm3lVl4jXMMpafjclDDI5qemwTFx1p/D4CD+a61oWHgXZJfZtlgpINsFyr0ChDq4fpJZ2NpihYSduJcVctYXxlI4zZeViMLu23epJuKA8y5/l6m3PyUDvRrSV6ZAlbyePyAnoLvi3kv+Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmXbBhn2vua5d7yAiPvAEBuXtjjoM0MVbc8Y+xp/D6U=;
 b=somqSsom4FM0N84y/LIENCbCumS4jCPn9cPGAwXvUBTbIl6Vd7EEt0A6RMwqum/K1wHuKnOW8HtlUTG8ju1E088s/RaJJhzNp9ueP9Q4JKRqFHGfwOEjagdaPfu8VjHQbmmui7tnkt9Cy6cLCf6jnp+SLH6poXB0Zm4Px2TVZlo=
Received: from SN6PR11MB3231.namprd11.prod.outlook.com (2603:10b6:805:b9::22)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Fri, 5 Feb
 2021 13:05:21 +0000
Received: from SN6PR11MB3231.namprd11.prod.outlook.com
 ([fe80::f53d:cc45:2535:1a9b]) by SN6PR11MB3231.namprd11.prod.outlook.com
 ([fe80::f53d:cc45:2535:1a9b%6]) with mapi id 15.20.3805.027; Fri, 5 Feb 2021
 13:05:21 +0000
From: "S, Saichandana" <saichandana.s@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4] drm/i915/debugfs : PM_REQ and PM_RES
 registers
Thread-Index: AQHW6z6vVntbNGIIM0+NV1nHj0SfJqooq/AAgCD8FdA=
Date: Fri, 5 Feb 2021 13:05:20 +0000
Message-ID: <SN6PR11MB323124F642BB6673B40E2923E7B29@SN6PR11MB3231.namprd11.prod.outlook.com>
References: <20210104103036.1443-1-saichandana.s@intel.com>
 <20210115130110.2650-1-saichandana.s@intel.com>
 <161071683896.19482.14027072347342754368@build.alporthouse.com>
In-Reply-To: <161071683896.19482.14027072347342754368@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [103.147.99.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7d1cc91-9328-454b-fd56-08d8c9d6b180
x-ms-traffictypediagnostic: SA0PR11MB4542:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4542EDA62A3CB5A3F5A42D89E7B29@SA0PR11MB4542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9bRhpmvubbNRdXRiiBwKKcq/8YJDG0mVS5dSVod2j/RgHWOdBvXLADxLCv1Eo3gvU5AhD1jhRRh7k0d22ST5qySkRO3AaKVXYyxx4SqiKqjxPwP/c8WV+Qdal5cjoptnrQ+JtdXPhOoOoLotR4hbpEG7Z+Af1nxVZGSvoc+/0IqIURogEbBVnpRdIFxypfXb4SAS8ypeUbdt4vVNUluEfbxQez8WjjMjviZsMHWvpe+hBRBIvngXtGAUflDtyR5DuKQh4mR/DWlpfPr79iGEE1rB+Znu6uhxCxC9G2iWEX8gUq6/8Jhe8w6yoQfDWv4xO7pgLu3ge8hUWkNRhe76tCEZp9f3tGz7nsr9fzGrqII4glHhr4XTW/MVeSjcy6buzbUJKPSTwILesXwUxKfdPAS7T4mcq240Ag186EGXFenmcSazwueT+GzNdG5WaFRJE5nyxTO2iVO7PwV0MGYz986dj0xsFD6T+7ywCtlA1TEDW24cqT8SBGjvvmtIOI4dZALHxVBp+eoj8OX8G+RC5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(396003)(136003)(376002)(346002)(86362001)(478600001)(33656002)(4326008)(66476007)(55016002)(26005)(8676002)(316002)(110136005)(8936002)(6506007)(9686003)(186003)(107886003)(83380400001)(66556008)(66946007)(66446008)(71200400001)(2906002)(76116006)(5660300002)(4744005)(52536014)(64756008)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?L3B0VmlxdGw3ZDhOajVJdjJiUEVoZ0x5ZmVLdldyNGduNGNmOUFRZ0xEV3FU?=
 =?utf-8?B?TUdzREhJZmF0RXloQmxEaE1zQzdOMHNKdGN1T3FYOWorZlpLR0xUSUJGTnpJ?=
 =?utf-8?B?RVBYNWNoOEVJOGhzc0pwYWZyVkpxQms5bW9IS1N4eThHY2pHbGFTSXMyK2dY?=
 =?utf-8?B?V1R4amRxOTllaHRDMjFCR3V5RjZuNWJoNWgrSWxnR1VqS2pjSDFHZHBrRzlq?=
 =?utf-8?B?K2N0ZjZIdG91RDYxb3N2ME0rQUJxWUlEd3hIVjg5K2lsS2dSelBFdDZVVnNU?=
 =?utf-8?B?Y2JEM3lqcnB6Mk5oS2d3bW8wUDNDWHIvcnM4cTJhT2xxNnJWUEhTRHlMb29r?=
 =?utf-8?B?YzVYSnRtVnJraU1LYVU0Z1c0SjQ3eEVPdENIVFdYU2NwWFZnb3ExRXk5dGhL?=
 =?utf-8?B?OFlUVm01d2xYOE9KM1V0QTdNcDl6MTdsUmEwUXhGTXdOQlFiR3dsVWVBU3RC?=
 =?utf-8?B?eVNvY3RDTHE5Y01tN3VLWXpzczJZQzJ5RzVnc1p6NmpGU0ZwdWp4M2dZb2Va?=
 =?utf-8?B?cGFQT0htb0cvZFlKckcyeUVBSmFnREZlUEU1YXoxcDNCYTFTKzkwbm5XVzVJ?=
 =?utf-8?B?aVUwV1huRDFyOWRKT0hHRC9xOVZKYXRQK1NDeXBjYkNYOG5aa2JGa3JBRUoy?=
 =?utf-8?B?VTdJMG54WjJHSTJNOFY5aTJMUUM3UlVMNmVucmUxeEo2VUlCeC8vbktpbDRa?=
 =?utf-8?B?alNOZE02SlY5Q3VpR0N3QjgxMGw4cE44UjhuYS9zZ0M1L2ZqZDk1UVY4Mjdn?=
 =?utf-8?B?N0ZoT290cGk5Wis0aUhnWEVuZXROZUhYZGIwMU8vaGJEMXpqZEFiaHpqRlF4?=
 =?utf-8?B?YkRXRW81aWRZekNvaXVGZGVZRFB5OWpOeWZwMnMzUGJCMzZiUjNCL2VuSGxB?=
 =?utf-8?B?NUFRWG80eEJrZGVGeERTV1RHTzlTWW4xQnZOTDVQSHl5OGhUOWFTTHZSZUVI?=
 =?utf-8?B?MmthVW5lZ0FSQjNQOEtRTCthbmJGMFh5OTRlNjc4RTcvVnRYTFFSNE8zWDVu?=
 =?utf-8?B?ZUNBblM2M1hGajV5VHljUWMwQ2kySWxtbktqMWMzVXh6d3JreGFVcmNucytq?=
 =?utf-8?B?TFlIa1BJTDg2SDBFTWtIZnZXQWVtRSs3UTV2YXQ4U3NOaEhYMm9DL0xHQkZC?=
 =?utf-8?B?RnNZSzZuUlR4V0c5RHlXYnEvNTF6ZXB5S2FlVHR2OTJkT280U0J1K1FwblZD?=
 =?utf-8?B?MmR4MzZiejQyUnBmQVliTUlxQmxCVCtJN2NRTTZaS29GQ0dJVU93UFg0NEU0?=
 =?utf-8?B?eVJudWkxWmVvb2RsbXNjL21EY3llaDBoaGc2QmYrajBCOW1tQ0Y1VlFZMDQr?=
 =?utf-8?B?VCt6dWp6UTY5Sy9HQVAvdDhBenNJdnRmNHFMeS8wRWxFaGtVclBDK3ZSUmFW?=
 =?utf-8?B?UnFYaE1KTlBGTlJROUMwcFVJUDFMM3g4MVFSeWd6dGZpemI0VzRhdG9Mb2dv?=
 =?utf-8?B?OEtMNWszZ0t2Vk02Z3F6bUdqbkYwSXQzK3l2NWhRWWRtOTZQcjZQUU5WZ21h?=
 =?utf-8?B?SVhIVkp4cXZMcXBuQ1hWUk9NQUhJelBHbGFrV1V4T2xYd3hBY05DTnQ4eEtD?=
 =?utf-8?B?NVJHWWhDYlphN2VwbHgzY2w5V3ZIVUFQd2pMZkdMdWVBckxRMkcyblpVKzBP?=
 =?utf-8?B?Q2p3RnNabFNjSVhDbGl6bW5ZNE8vTy80N1hoRmlUVkNwNzRCNW9nY0ZvZzBn?=
 =?utf-8?B?VW1aamZNZTVTamFOQ2hLYUtTTlEzaE1ZZWRTMys3M0FhcVF1dzIxR1pNaVVI?=
 =?utf-8?Q?XhelqgWWkN8wSnQGFqBI6pDUihAJ/p0dXyPS/oh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d1cc91-9328-454b-fd56-08d8c9d6b180
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2021 13:05:20.9860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cXsaVHvDFzPXitBrphjI7c9MGxJF+MrjZyTF91n9yquXFL7Jj4z//46qmum89Xm/N0robG7FoKq+PL0YeqSn4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/debugfs : PM_REQ and PM_RES
 registers
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Friday, January 15, 2021 6:51 PM
> To: S, Saichandana <saichandana.s@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; S, Saichandana
> <saichandana.s@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/debugfs : PM_REQ and
> PM_RES registers
> 
> Quoting Saichandana S (2021-01-15 13:01:10)
> > +static int i915_pm_req_res_info(struct seq_file *m, void *unused) {
> > +       struct drm_i915_private *i915 = node_to_i915(m->private);
> > +       struct intel_csr *csr = &i915->csr;
> > +       u32 DC9_status;
> > +
> > +       if (!HAS_CSR(i915))
> > +               return -ENODEV;
> > +       if (!csr->dmc_payload)
> > +               return 0;
> > +       DC9_status = intel_de_read(i915, PM_RSP_DBG_1) &
> > + PM_RESP_DC9_READY;
> 
> A read without waking the device up? Wait until IGT sees this.
> [wrap with with_intel_runtime_pm(&i915->runtime_pm, wakeref)] -Chris
>
>Using wakeref, doesn't allow i915 to go to suspend state, further blocking display DC9 entry. Thus wakeref IGT test will fail.
>[S, Saichandana]
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
