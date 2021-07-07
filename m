Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E882F3BE860
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 14:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A4B6E12C;
	Wed,  7 Jul 2021 12:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 065C56E12C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 12:52:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="189672595"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="189672595"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 05:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="497847449"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2021 05:52:15 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 05:52:14 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 05:52:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 7 Jul 2021 05:52:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 7 Jul 2021 05:52:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TlBg4AsNFfE/qR4T0IAIsD4qjSx46eA47wgw1V8hUPblO4vJ1ESpR8qHBihKyae7B0dSXDZgP3/P1d7ph04v76HUAJfH9Ot4BrkoYjBobynfegeUIKhZ4jM60HFMbKJM6QbP7phd1l+M1jO3Fmn508kET0EOGHPGpqwfv/txzKiI/DyaB80Ha2N+gt7+P3m9VWNNMQLpjyN0JBaRPjThkh5f9xcPYx0QxXAppiaw7cRPltOFiVbKu92SyMEO9ZpGLiFPH/MmzzU2WRMIqvidz7njx0j55cUh9YJFyFAhhtZfvEPzpKpmet4Wao4UJ9U6rUAGFM93LWXLuOQZiUQrzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmSV/0Qx4G+A/J7S7IrNQtQtcqdGMFEUFlfUJOzk1k0=;
 b=Y18tC6QW/VUKpFF8aTV7Niv/behmEa2TkZc2F/KwGckbZsxYuM57/s/PwHzQu3KPo07MVFck6uHngXIpVEsRP2EhOtCbdlYWUbslgVXFASxlOKGtAms6FKatriMNVXYdcuz6wLM6kEjNtnKBwIax2niOAxVMhFkE1IHGqCrd3ZG3wIN9imlK6PCx/kJ6Yg9lWyDIshD5FSTXFxGSMf8R0YuPfHZCB4DqLw1A7Gn0g3jvhEZk11oxILgczg7c8dyjpTMuLxh6C9xhAdXhEli+opLLX/oehDlcMntadISoS42LLCwDRi1XM9fGZt+cMY6u0IxO84NpGG2pX6yFVi0lDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmSV/0Qx4G+A/J7S7IrNQtQtcqdGMFEUFlfUJOzk1k0=;
 b=ZJrq3JetcCpXvbHN9hKG7BmmlH2MznyA19KZnC8oLwls6XMk7cO3gGU6fmmqS7AfJAulhoXPjKuEz9isqdYijhJ04UnG5ErFlo70nph/cBP9y9F376PtvIXXC+E7Xk9EeYFMPKqKl52aMBI7yytilH++ElVZgnb3QvfhlIJSw84=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA0PR11MB4766.namprd11.prod.outlook.com (2603:10b6:806:92::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.29; Wed, 7 Jul
 2021 12:52:13 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4287.033; Wed, 7 Jul 2021
 12:52:13 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_s: Fix dma_mask_size to 39 bit
Thread-Index: AQHXcwrIUNNs5+gBJkSSqhhsVdRly6s3S7wAgAAmIVA=
Date: Wed, 7 Jul 2021 12:52:13 +0000
Message-ID: <SN6PR11MB34216389566DD56029EA0A61DF1A9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210707082226.945948-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <CAM0jSHNQkGF9OGEJVg5ZTYv1vnr4uYMVgR908pDS=Ap7HPS_hA@mail.gmail.com>
In-Reply-To: <CAM0jSHNQkGF9OGEJVg5ZTYv1vnr4uYMVgR908pDS=Ap7HPS_hA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67dff413-5477-40a5-fcac-08d941460aa3
x-ms-traffictypediagnostic: SA0PR11MB4766:
x-microsoft-antispam-prvs: <SA0PR11MB476691EA9475AA9EF1BB87E1DF1A9@SA0PR11MB4766.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z1vN7izkPbwcu/oNrvfwZlMVmxrNfqD7E/xaHcu7SHFMuuhI5LNeuY9dZxILxoxjh9dJJj6XVBug3bgz0REV74JbopaxVnd/YVXRf1NC7DmPAOxVf3Nn5LSrpoSS045Vc6KhrvIf9lulAPUoZLFcrKK9uDgWETmE/jHWnzQZkH7B6ZGknGFfcjmLZNDBhPG6n1x6c01fPDywmVYq6quIvgm677uhoFM+U97nbzqurLGaBriwm/CgcvYOvuszEvClD1tdpDsCgCYDojcgA8VuB7C+5+JKZvR6e33DCHtEt3YhNo21zngWAaxswv7PsiPxO7xep+rkcznGeEFqyWRnBAsAJtlQU7k9xRmAwdrJmlQGv084RfNY3LBy3slOrLGfJJ+pCnlLBVlkgrvRTdDVAER1IBUyE8xkc0a0xcXXg+URDnZaqGTBtPNv2OPlS7r08JWt5/8Lj0ezIqSaNGxV4TG2HZiNLUKQ9ZGIJu0zhxzqE301n7F7ioKKkpYf7jQwMC0RUJFQE5IrQOxVcmhWJa4sLMOX/oGMtX/poCXCJHMwwfsycdSEy93cxrJOzNcvzkW1u2yvrwVlPKIJLtwYpLYzpQBliMenzm7QLHBC7GWSB+aqdtaWu8h3OH3tKXhsj0aCTBWoQL7e9DnB1mcpog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(136003)(346002)(39860400002)(6916009)(76116006)(478600001)(186003)(6506007)(52536014)(53546011)(55016002)(7696005)(71200400001)(4326008)(64756008)(2906002)(66556008)(966005)(8676002)(86362001)(5660300002)(66476007)(26005)(8936002)(83380400001)(38100700002)(316002)(66946007)(33656002)(122000001)(66446008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3d1TWRwSlE0TytsRWoxdEhFSUxZZzBFV2taS0NoQnpVNkIwbG9HdnRNQUJ2?=
 =?utf-8?B?eFV0eUpMU21PdXQ4cU1VZHJtTlRNUUVBY0N1WnBrbEEzeUhWVGYvakQyWWdI?=
 =?utf-8?B?MFdRalZHTDh3bkxSVkxVYUdxeXBsT09UbW1sM2o4OVF1K3BJSXVpVnFDc1dr?=
 =?utf-8?B?dGVTTUlLTXg4d2kyWFZrQ3k3Q1daWmx6amczVG9NQTVrL0dpZDdoNzNPVmVL?=
 =?utf-8?B?Titqdi9DaUZ3aEhwUWsyUi9pYmdEdnlicy9VUkt3RUY2Rno3a3pVSEJGdmVF?=
 =?utf-8?B?YUhyMTVwM1dBZDM2b3VLWVlXZitsaGp0M1RhZCtNc3Boa1JNRDQ3Mk5TMXUv?=
 =?utf-8?B?RGUrU1NuaFhKa3kxcnhsRmhsUy9maVNHd0UxV0FQdXlHSGJXZ25kTE5jWUM2?=
 =?utf-8?B?M2dLRHVrSjlpM3A4dTZMVXFaN2x1OSsydmlqaUlQbWgrOUhuWDY0b0JqOGt1?=
 =?utf-8?B?dVJZbGVIWnBWL0xkREpwcmtBdnZtOGNZYjhCckJhbzErdS93UU5maHdyQVhw?=
 =?utf-8?B?M0IwbDhIOWkrcEx1a2tFUXorRTQzdmdPS1dBTzh6QjBmMUs0VitlUkNEV3FS?=
 =?utf-8?B?cDhQLytnRWpoQ0c4VXd2YlZrbDBEZW9mNG94VnJKdGRkRUFwYjVtVDR4UEIy?=
 =?utf-8?B?RmlOd2dzUi9SVjJid1R3MDJlOXp6YzdYNktBdGJvRFN5VnFqdGNuOTRKQ2pP?=
 =?utf-8?B?aHpNbUY2MVVTaG5HRm9tUmVmT29xTTFnVFJMZ1liRjJJdHFrY1RTazk2VzVT?=
 =?utf-8?B?YjZPY3VFdGFFN3UwUmxhZEkyWFI5SlpIOTZrZHJKRWlsUE1pNThhTHlsZXBS?=
 =?utf-8?B?MzlKLzZiL1RvQ0p2OXhwSWFKLzdpK01OT2JUY2F1aEtlOGs3eUxGUy8vZTJl?=
 =?utf-8?B?UXNFYmhuUmREL3hhbDZKVFVBZ2tiYU9WZEVqMU9aOFVaV3QwRjE4bmQ4NjdP?=
 =?utf-8?B?M0RnYU5taTZ2SDJQUENZUW8zanBaUmR3bWVzenN1bURJbGJrY0czUDllVzdt?=
 =?utf-8?B?VDhlRmMxUGdVSjNXVVRTQkZ6Nnd6UFhUOVNvNHpocUFMMGJLZVNyTndpZERx?=
 =?utf-8?B?RlhMRmdpSGVGdEwrUnBKUjRJU1cxNlNMNGlsVm5JcVhVQlN4ckZHcGhTZ3Ux?=
 =?utf-8?B?RUpEVHFnWkFxN0lUNlN4N2xiVU4xRVFxSFZ2QStma0ZtZmlWRGd5bVJXZUhY?=
 =?utf-8?B?UnJCV2xnWUo2cElJY0lpRlJNRkhIYW1KQXZySXpTbGQwQW0zRTVBVGpBWUJZ?=
 =?utf-8?B?S1VKMXZpM01PNVFlUU1CK05HMHZ2a3E4a3puWjdSS3NkeE85VE5iY0xteUh3?=
 =?utf-8?B?eUdTb2l6MWU4aTFCWndmbDd0dmpWMTJ3byt2Q2hiU0wxM0dLZWpBc1NzeFNX?=
 =?utf-8?B?dzVuS2FXaXFzL0QzTHBlejNuU0JoVU1ob2ptWEdOb3RiNlBZUEx4Tzc0NjFs?=
 =?utf-8?B?QU9Ma1BzNTMxQnZ4WGVjelBMaE44cGVVN2dsSHl2YUwrSjNYUVRTekhGdURO?=
 =?utf-8?B?YUgvMFJXbGJqejBPREs4OTFJN3F0dTIrc2NRc2o0OEo2L0ZrUnhSZmhvckgx?=
 =?utf-8?B?SDNzUU5ncDRLQjhqN1QzaXF2M3VtZHFDMk1xbUN2a0tYRGZ4aWFKTFE1U1Qy?=
 =?utf-8?B?Y1RsOGhDakdNdjBoK3kzb1o2TG9Vck9aMmZtTTZIVXM5MkZDWEx0WTRtMWw0?=
 =?utf-8?B?bElHQjN4d2Zxa2tyREtWQlBnQURVTlB2WmR2NVRkN3p1Wmt2TVVQVFY0N3FG?=
 =?utf-8?Q?7axszXaaL7L0Oa4CMP1uGNtx0G5K3LmZMayz6OY?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67dff413-5477-40a5-fcac-08d941460aa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 12:52:13.1251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JdZN0dNXDEjUDDCfHuoTuHDNnTV5C73UK7FiFRMZ7n0vyIoms9wXGxnvftV+isxWK7oE3X+tc1DUIMsUBoSmJQw3X1FwuA/oXKserd+w2uM2vLwQNNQmQrafiIth5P01qlFKd4NqmmkrIMKeTJPzoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_s: Fix dma_mask_size to 39 bit
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Matthew Auld <matthew.william.auld@gmail.com>
> Sent: 07 July 2021 15:45
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_s: Fix dma_mask_size to 39 bit
> 
> On Wed, 7 Jul 2021 at 09:31, Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> >
> > 46 bit addressing enables you to use 4 bits  to support some MKTME
> > features, and 3 more bits for Optane support that uses a subset of
> > MTKME for persistent memory.
> >
> > But display sticking to 39 bit addressing, thus setting dma_mask_size
> 
> What is meant by "display" here? Is this limited to the display part of the
> HW? Or just in general any HW access via GGTT or ppGTT?
> 

I am really not sure of in general, but all tests which were failing with intel_iommu=on and passing with off, are happy with 39 bit addressing. 

> Also do you know if this is documented somewhere in the Bspec? If so,
> adding Bspec: link would be good.

Bspec link does not show this, but there is HSD which gives information. Unfortunately not able to share HSD link in this forum. I have copied info from HSD only.
I will also try to add additional details in commit message.  

> 
> > to 39 fixes below tests :
> > igt@i915_selftest@live@mman
> > kms_big_fb --r linear-32bpp-rotate-0
> 
> This looks promising. From chatting with Chris it looks like this is
> https://gitlab.freedesktop.org/drm/intel/-/issues/3142 ?
> 
> If so, it might be good to add a References: tag and add the following
> example to the commit message:
> 
> DMAR: DRHD: handling fault status reg 2
> DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr
> 7effff9000 [fault reason 05] PTE Write access is not set
> 
> Also maybe highlight that the address 0x7effff9000 is suspiciously exactly 39
> bits, so it seems likely that the HW just ends up masking off those extra bits
> or something when doing the access, hence why we might see strange DMAR
> errors?
> 

Sure I will add this.

Thanks,
Tejas
> Nice find,
> Acked-by: Matthew Auld <matthew.auld@intel.com>
> 
> >
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index a7bfdd827bc8..0fea4c0c6d48
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -934,7 +934,7 @@ static const struct intel_device_info adl_s_info = {
> >         .display.has_psr_hw_tracking = 0,
> >         .platform_engine_mask =
> >                 BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> > -       .dma_mask_size = 46,
> > +       .dma_mask_size = 39,
> >  };
> >
> >  #define XE_LPD_CURSOR_OFFSETS \
> > --
> > 2.31.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
