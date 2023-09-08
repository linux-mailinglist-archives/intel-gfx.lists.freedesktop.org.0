Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9355A7987A4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 15:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8761410E8A5;
	Fri,  8 Sep 2023 13:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD08D10E8A5;
 Fri,  8 Sep 2023 13:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694178819; x=1725714819;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Y6gamyrdf4lu7j1L0xz62BuzPmnQI5c6Sbursy1gfDA=;
 b=GEg+6+UuKyO9WnhPD2Q+Mi9z9xk826iDGX4n9AnPQcLracOSg1o/xnYg
 4e+kxyKG3zwEqPD2l+PE2+ZywKsa7KmqAdmwBlJljitj0bnRd6XGxFoE2
 JsMfA6mdBho2HUzNa3oakNv+XBoBkJMTCQVsZwX6l5tuJ7Ft9W8q/+19j
 L4wH633BdWKqnXHQa5nFfFgT7Si0EMJ6rmecH/SC+BTTLhSBWg72z0KzA
 i1RDE19awA49aLBotatFW36a5CZJKU+hP/TSIqcAjgh/6nkTtGvR6NC5H
 scw941xlQWHVQaVjI6Dt42OTJ51sTVd4wQtscEwCIWXNUpPQRNvx9gu56 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="377550039"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="377550039"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 06:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857390640"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857390640"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 06:13:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 06:13:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 06:13:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 06:13:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 8 Sep 2023 06:13:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jW4xn4vgSL+WqhPfqlad/ijSf/N/wWa36SR0gFZ9WIFUgdgkb0IQwP/jW1cS5KAU9HP+QY3d1DgqhRWs9D+k1dfpLHEHW+Jy7YgW305jhAHw5hT2PEgcBBjFde94sMw9f1kDKyolgqEQJWWzrqd/nmBZCdpoRIhx/uwet6cLE0b4YDyqKNxrG1q6Fb8U5aTXVnJfdofDGgurJvwBxXzJ6tb/qbhu7VWI2FDkImfoOTqVaEdj+XIZgKrMOCgOemTvCumXre9lqRrT0RykAMDR3cIspC3XN2U+D1CzYGTpbj0RbygMqgvTxRLyokzVc7zqsSyhUufRBZh5ePdN4ukScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fo/LIAlb5Ao/YbKIHwB99wUzAHGA0rqVUHSLqvo2uUw=;
 b=PG2xN0wS22JwMPBSb72asRYO6wnISld6GdMcpHTkQ2jXd0FEnn88mNlZZz+MrOClqTiJX9ARVlhHGGvN/OhkIK62HJ5mmtyq3+8wGFbcAIItFyvoP7HpTs1917x9qHu1/h14EKmi8q5hO+GwftHtmNa7jXR7fw4L8F7TFzsIR3GXU+Djw6+oFcUEk0z58L+lEf1U/tLlX3V/cHnXuIW6P5ysMdl1akiUOiaKT73DfaJuszFzp9lzdYsVfOtOzyB/TmVlRPLORUQ0XNqKxfQON1Q2gYfxvKH3Imt70TAchRPqQuBYodR2dzdfvwHqSEaWcYyt5HjA2fQ3Q2sSMOO8IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 13:13:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 13:13:25 +0000
Date: Fri, 8 Sep 2023 08:13:21 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <aveetxzysteexm5cqhvlxqzfaetxhkuoa5hcpizwuhjjnnqhzg@akhm4wuyaq5c>
X-Patchwork-Hint: comment
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
 <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
 <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
 <20230908005719.GU2706891@mdroper-desk1.amr.corp.intel.com>
 <ZPqzpNlTWiLrRXCy@intel.com>
 <pxfmwknh5jetgwlqslwnkybdkhghbc6krclqqt6wf2tu3kb3tw@qu52d3etwech>
 <ZPq3pcrxUbEpXLGA@intel.com> <ZPq5PCOiVbbFFTU4@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZPq5PCOiVbbFFTU4@intel.com>
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5582:EE_
X-MS-Office365-Filtering-Correlation-Id: 913ad1f6-6f03-443d-8547-08dbb06d6229
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ISroQQoUxlfciM+hvneNS/Yg9DGLVxtJIEqeT/TO5M0CAOMjgAZp6M4uvoTaXfp48H8M888YFZZ7Et6hNZ0LBDp8oNCX79GA/jc/qSm5CUNeiGpR2XX22TNKe9mM+71YBtqAFK8MeE24H3cs3WyCHmBTFgYZ/kOUzaDi6FfkJ8tbMNMYSBbCFVsxYwNnYvBpqIVEOnkQ73+j4ugge/sWQ7B2Pg1MOGLEvegtjj/6AbnmAuMxKZhgsBJOJmvjO/WnHzCJDEevkuRiiyU1m2D+Jdo5926zsapfVxR2NWAQtEuWk+/ss8/m2mI3Hw79uXqloj13DYUb8xwP6QiRilhHU5WI0QmPSZkOvgc7p+uWmHA1WbpLuc2ex7ANvMGcIJpD5qG6t7AEfUL1Hg9KIhENumuwAhEtNJXHzDWpbRHOi06yKgV7VTFoG+/DUrz79ANIl3SVH7dfn1d0Xzg6w+bjTCeYHlZAJKGE3Yx8K7/TnMH7aluvwFstgsVgeR1uPzxqiP1g5Rt6esoiySQcjVuCO3zecTQQG9u1UeBNVJXVx+2V8xEhLKTXgCgvaIK+r5bPfX/h2zn4Gedx+gQfK4cnfioBneEDAXtOPUiW7N7DeqtrJ3koDvpxsg0CjFPMNloB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199024)(1800799009)(186009)(66899024)(2906002)(66574015)(38100700002)(82960400001)(33716001)(86362001)(8936002)(8676002)(4326008)(26005)(5660300002)(66476007)(66556008)(66946007)(6916009)(6512007)(41300700001)(9686003)(316002)(6486002)(6506007)(6666004)(478600001)(83380400001)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?iNj7WAtaa/CKorSl0s8YK/4WtbzK0G6wxMeMmMijtzEsxUNKhBZIVoXKt3?=
 =?iso-8859-1?Q?/AvbV2q4CaQ4JmA8pfDHcv+75NquwcvffBgDcbdvjTdIO4uwc83StHBxcw?=
 =?iso-8859-1?Q?sEbkiNtehIkGDMrMaoQi+zMDyuWszWma7Q0PGiQjAjPi3QEnP2pP48Sonp?=
 =?iso-8859-1?Q?7y13YSkrKB0MfFWTheEvAjK68dFmc5CmJZVCla6O6Hp5qLGsOzCPdueH2Z?=
 =?iso-8859-1?Q?K7MgcIOy0XnFgT0/s3X1nkcxZZJPgc4UKArfJmxYHB71pBiXlcX8YKZR1L?=
 =?iso-8859-1?Q?9ogGUQPESrZj7mjSfQ94uV5vmARd8SFK7KNLdzJSiy1zz8d63a8zr/SwQw?=
 =?iso-8859-1?Q?zQVPvbLM4M75ZIlvfJrFIp8eSUNmBF3if5f+BJqJL19HW/eQvVkZe/PgvM?=
 =?iso-8859-1?Q?Nmarsmu0D7w66kj4nQrk7UKjUF2VEEWdWHpeD5b9YWYXef0t8nWn20Oyix?=
 =?iso-8859-1?Q?HnsY9XElyTduscMeBqtZK/oyM7gr4CIPjt7RqwmcaXACUyE/dDXwwgEvVW?=
 =?iso-8859-1?Q?+qZnZYpfZ2Fn9sevszYKcKZu0LpG1WcRB00DU3dEsdK9LviFniSIoH96Z4?=
 =?iso-8859-1?Q?ffO7EeHpT1WFfQRcQHgsuD7HC3K/wd9DkiFF7rMtCQ8PFQjFHI/FWqeRvq?=
 =?iso-8859-1?Q?k/o/RqSlic1z/K3Q71J9tpzjcNcKAe3+VnD55rGB8SI18eSkZVaSlGyu7d?=
 =?iso-8859-1?Q?uOza6WxCkbfQtGdSa7Cxta3DyHnZuNA8DCTPz+Mix5b8OstFwDiNK2B4ga?=
 =?iso-8859-1?Q?ldLYnEcpIwn1beogjXRP9W5xVBN0Bis+UArw5/vZLVzbKGGZj++qDPqR0A?=
 =?iso-8859-1?Q?6weOJREFDgitBQLZTFwp0wzuChpP3bxYKQEYpr4KZkclTFFHc7i2VBBRpF?=
 =?iso-8859-1?Q?0Qg5tuDngCB8CGIIzTkDlLJQ/z4AyBGQTHkxKLBw3LqusfR2bHssOxUTZU?=
 =?iso-8859-1?Q?Z7/OwtnGJ1ML0utp4WCafp6d6Z+AkB0vQfQpjStmMKnEKYeU99AnvPXD0q?=
 =?iso-8859-1?Q?OE+qo25QxU+uFEjblhyw8+Rw2coprAEJFnDqCGmemCMTO3CztzjfhUt3bO?=
 =?iso-8859-1?Q?5jqYQwdMxhvZmjPfOJ4hrYvlE9YtpnBxPPlBdfU6wRD83UguD7y9NXREK/?=
 =?iso-8859-1?Q?JUb1pMYSiRjTStQjVynXDTfFiZl7KlxizLTGm2JVhECUYAJnxe8j2/IMAy?=
 =?iso-8859-1?Q?+Q6EWOL25G8Vjk6Ta6kh81jgfiamkW5c6cwzU3THnxAcO8T4GlCli6YH82?=
 =?iso-8859-1?Q?LVVzWmUd/NCsQ+uFXDSw0b6hnNpZ4ng6of/Eu1Apuaq1OrBDB5iLllNisU?=
 =?iso-8859-1?Q?XnqvNE7ONrac6fsgq6u9YwhB1L3+bYhMgT85b2E/fCi5L1alZiEbQLEBoI?=
 =?iso-8859-1?Q?O5Cch6oMxOngsSRNI/h2YnZo0XUeBIJrWz3DUqfDvW4v8CmA0rY5tehwnw?=
 =?iso-8859-1?Q?lap/fvFaehLb6Wbb0Oo9xooIDktsRP/hS8lW5YYqd7piaLBD1hHkbcS8m1?=
 =?iso-8859-1?Q?/2KxNEYfzlyXf3ZEdggpre6VzjWYSRoH8I4fEHZFitEiHpN+I1od6n8nQS?=
 =?iso-8859-1?Q?YDMfBI8KyX8EZyAP6df3Ov3+cijfT0zC6cuXQPU1zMz+DxH3TELNX+vyJp?=
 =?iso-8859-1?Q?TAhCpCjn6QC/KalAeGqvv8GQtWPw/6T3wIJe+lYJCvA76m8VA2/J6tGQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 913ad1f6-6f03-443d-8547-08dbb06d6229
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 13:13:24.9759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 18DtgjhwD3aJL9SOSmMfXYhE4cH1vcS5WkrJAFzmW1a+vqM3nzBtVn/KROXVKDxYDw2aHf6Br3W28V2FglcqycqEb72uBPtyI5h7KyP/Rc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 05/27] drm/i915/xe2lpd: Add
 fake PCH
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 09:03:40AM +0300, Ville Syrjälä wrote:
>On Fri, Sep 08, 2023 at 08:56:53AM +0300, Ville Syrjälä wrote:
>> On Fri, Sep 08, 2023 at 12:51:09AM -0500, Lucas De Marchi wrote:
>> > On Fri, Sep 08, 2023 at 08:39:48AM +0300, Ville Syrjälä wrote:
>> > >On Thu, Sep 07, 2023 at 05:57:19PM -0700, Matt Roper wrote:
>> > >> On Thu, Sep 07, 2023 at 03:43:59PM -0500, Lucas De Marchi wrote:
>> > >> > On Thu, Sep 07, 2023 at 10:04:42AM -0700, Matt Roper wrote:
>> > >> > > On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
>> > >> > > > From: Gustavo Sousa <gustavo.sousa@intel.com>
>> > >> > > >
>> > >> > > > Xe2_LPD has sourth display on the same SOC. As such, define a new fake
>> > >> > >
>> > >> > > s/sourth/south/
>> > >> > >
>> > >> > > You might also want to drop the word "same" from the description here
>> > >> > > since NDE and SDE are technically on different dies in this case (NDE is
>> > >> > > on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
>> > >> > > we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
>> > >> > > also lives on the SoC die for this platform).  But since we've just been
>> > >> >
>> > >> > I'd not re-architect this based on where the PICA lives as it seems very
>> > >> > easy to change in future.... tying the SDE behavior to the PICA behavior
>> > >> > because they are on the same die, doesn't seem very future proof.
>> > >>
>> > >> The point is that tying it to any one thing for every platform is
>> > >> incorrect; figuring out a) which die is relevant to SDE behavior and b)
>> > >> how to fingerprint the variant and stepping of that die is very platform
>> > >> specific.  Art specifically suggested using the PICA ID in cases where
>> > >> the PICA lives on the die that we need to fingerprint but the NDE does
>> > >> not.  But again, that's not a silver bullet that can be used on every
>> > >> single platform.  Nor is using the ISA bus ID like we've done for a long
>> > >> time.  Nor is using the display version.  Nor is using just the PCI ID.
>> > >> There's no single answer here, which is why we need a major rethink of
>> > >> our strategy at some point in the future.  But that overhaul can wait
>> > >> for a future series; I just want to make sure that the commit messages
>> > >> here aren't causing further confusion.
>> > >>
>> > >> >
>> > >> > Here the real reason for the change is that from the SW perspective they
>> > >> > are under the same PCI device and there's no reason to look for a
>> > >> > different one. Maybe rewording it a "Xe2_LPD has south display on the
>> > >> > same PCI device" would be simpler?
>> > >>
>> > >> No, that would be even less correct; PCI device isn't really related to
>> > >> any of this.  Obviously at the register level, everything our driver
>> > >> cares about (NDE, SDE, GT, etc.) is accessed through the same PCI device
>> > >> (e.g., 00:02.0 on an igpu).  Under the hood the various pieces of that
>> > >> PCI device (NDE, SDE, render GT, media GT, etc.) might be located
>> > >> together on a single chip, or may be spread across different dies.  When
>> > >> spread across different dies, those dies can be mixed-and-matched in
>> > >> various ways (and it seems like hardware design is trending toward more
>> > >> flexibility in mix-and-match).
>> > >>
>> > >> The register interface to the SDE (i.e., which registers exist and what
>> > >> bitfields they have inside) hasn't had any meaningful changes in a long
>> > >> time.  And if it does change in the future, the _interface_ changes are
>> > >> probably more tied to the display IP version than to anything else.
>> > >> However there's some important SDE handling that the driver needs to do
>> > >> that may vary based on the identity of the specific die that's
>> > >> responsible for doing SDE I/O on a given platform.  I.e., there may be
>> > >> I/O-related defects+workarounds that require special SDE programming
>> > >> when a certain die variant and/or stepping is present.  There can also
>> > >> be differences in how lanes are physically wired up, resulting in pin
>> > >> mapping changes.  In these cases we need to be able to fingerprint the
>> > >> identity of the specific die handling the I/O (which might be a compute
>> > >> die, an SoC die, and IOE die, a PCH die, etc.) and make our decisions
>> > >> accordingly.  If the SDE I/O happens on the same die as the north
>> > >> display functionality, then using the display version might be an
>> > >> effective way to fingerprint.  If the SDE I/O happens on a different die
>> > >> from the NDE, but on the same die the PICA lives on, the display
>> > >> architects suggested using the PICA ID in that case.  If neither of
>> > >> those cases are true, then we may need to look at PCI IDs or something.
>> > >>
>> > >> In the past, the PCH was often where the SDE I/O responsibility was so
>> > >> we needed a way to identify exactly which PCH variant was present.  The
>> > >> "PCH ID" that we try to match on during driver startup is entirely
>> > >> unrelated to the SDE; it's just a random bus that we know was always
>> > >> part of every PCH and always present in the same predictable PCI slot,
>> > >> so it's handy for identification purposes.  The fact that we're still
>> > >> looking at the ISA bus on MTL today is 100% wrong because most (maybe
>> > >> all?) MTL platforms don't even have a PCH (so that ISA bus might be on a
>> > >> different die that we really don't care about at all).  For MTL I
>> > >> believe the NDE and the SDE's I/O are both on the same SoC die, so we
>> > >> should really just be making our decisions based on IP version and/or
>> > >> graphics device ID.
>> > >
>> > >I think ideally SDE would have its own IP version/etc. we could
>> > >use to identify it.
>> >
>> > maybe some future platform
>> >
>> > >
>> > >I'm not really sure why we even started down this "fake PCH" route
>> > >since we never added that for BXT/GLK either, and they managed just
>> >
>> > it was originally done for the discrete cards, I think DG1, and got
>> > extended to the next ones. Differently than BXT/GLK it doesn't work
>> > at all to try finding the ISA bridge as that would end up matching the
>> > wrong one.
>>
>> BXT/GLK don't look for the ISA bridge either. Well, they do, but
>> they won't find a matching one and thus we're left with PCH_NONE.
>
>I guess we can also blame bspec for this mess a bit since for
>BXT/GLK it actually documents the SDE registers in the north
>display section, whereas everything else that has SDE registers
>documents them in the south display section.

yes, in the bxt/glk it looks for it, finds nothing, and we handle the
PCH_NONE case throughout the code.  When this was introduced for DG1 it
was basically "oh, we can't follow the same pattern because we will find
something and it will be the wrong one".  For LNL we are going the same
fake pch route introduced by the discrete cards because SDE and PCH have
nothing to do with each other and we can't of course leave it as PCH_NONE
as that would actually go through the BXT/GLK path, that is not what we
want.

Lucas De Marchi
>
>-- 
>Ville Syrjälä
>Intel
