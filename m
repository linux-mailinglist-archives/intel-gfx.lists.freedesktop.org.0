Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 047F883C5DE
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 15:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8446510F8EE;
	Thu, 25 Jan 2024 14:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670DC10F906
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 14:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706194786; x=1737730786;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KuqvHgmCrw8WFstxkShlta8hxE3jjDLL022OKJRIubA=;
 b=jS6rHmwFQOcvKZvnxHuzs4CpwUVE7AYRCqqMOW2vn7M4t1LwPcXd3Uj3
 mBIBAZmYDzOFYHIGH5bqXbc4HNmf9EuJd9A+nBb6nY40cfc0pDxWJfROt
 TM0wJ5uRIcGRpJtb4ABxiOK/aZeXR9KTjV5/kUSPnCWnAjr+c1/i/m8IO
 2EDhyk1mGztfwNWgaErgNJ7YvNbdOPCKS5k/u00ZSfMpwzXnIQXgBly5r
 bDetySQHBAtchoYIp6sF7gpDAf8NHrf8sA9DzIA3Kgt8JLoYbIKNVi9iH
 twkp2HQ4RrFDemFE/NQCmO2Gj18iVdAMzokgoi7UzU62uQnWdOIswwpl5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9559974"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9559974"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 06:59:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="857096346"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="857096346"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 06:59:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 06:59:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 06:59:42 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 06:59:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TA475YE8b8N8lXRTBNzA316rVpAK/1mdNVzPXiPcA5jhNpWk8nkw11lMy8k3N1ruc74v3s7a5gFljmWJGSB/GMJlfJhEcYPqkAaOS6HBwQmQvyQLDDaEDWanEgf4phEHGo/iZ+CMHz+ewv/kTnf2qNDuhdVKfX+HMyRQzCL7mNlGo8lDcPHvnOWrZ7VX+CuOFtDPF8bbulCuuhOSMRcH3Ga19dkHDfszUbWzlt6dFrd/mPPGRxy8VxAg0ghAuq1o5rdkUx5Q27ldlqXKeXWQjEoxq6Em4SCFPtufQvxh5BlUSJB93nWmD153xVg11KO4ecHil9RMtCCBJhREOvJYoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JNJ6nGDYGjjkslVcJELNsswrseV7QnsxY/4a2LGv9Yw=;
 b=nFihTxfYK30RM8NfvWftnXB8KuHNJGYcGZnZz7aiQEUOVpCj+du8lVbTUQn55FWY2pRpJ7RwZQAdzMhDEOxoKd4llecacvMYM39eQ8PWDGIm9brpZFSMJAEiBMJ+u1qmAQD4YOqwz7VxN6q0xWygAdlf5oHKhlT/Ld2PrBVnfBiAMK4f0mMtdcPPFL8paQSEQapwFePjc297Af+zFd4f0hPR0HjJTBgd/mgbX2GgFzicj0Ey/+p4TcDcsloBva+sC+Vi5ufeRSbbgSj7Zyoz5Jcme7PZytaggkIjZslQtoObCqnCTH7SfKoeDYElUvvH+H/uuMUjVyoJS38cjHIvMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 SJ0PR11MB5213.namprd11.prod.outlook.com (2603:10b6:a03:2da::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.24; Thu, 25 Jan
 2024 14:59:39 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::f105:47dd:6794:6821]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::f105:47dd:6794:6821%4]) with mapi id 15.20.7228.026; Thu, 25 Jan 2024
 14:59:39 +0000
Date: Thu, 25 Jan 2024 15:59:36 +0100
From: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Message-ID: <5vc6jcw5u7ljvmxu4slj7t7jos4mtdwzrqzc3efg2pha7srnao@y3mwhwdmjg3c>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
 <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com>
 <ZamwS6sLlEdJRv59@intel.com> <ZbIk9Kwx9f552dyl@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZbIk9Kwx9f552dyl@intel.com>
X-ClientProxiedBy: FR5P281CA0038.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::8) To DM4PR11MB5373.namprd11.prod.outlook.com
 (2603:10b6:5:394::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5373:EE_|SJ0PR11MB5213:EE_
X-MS-Office365-Filtering-Correlation-Id: d8e0630a-4dfd-4329-fa0e-08dc1db640eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HKnG/88XxzJx2dq6V5+J9Iw+zm89N2yDfbytg0SesebM+tyZAv5pxYzpXkBmSLVnvL5Gy6xSU65n9H23JCalzu0gGRGFYyXuUmCMppf63FZHQOy1tKq0/mc8lCZ2S2ajeZ2zSRCS/mXvevUpWVA2TTrhzF36LEDu5hggXcYHql6QpSFBV2Wnr1hciQUoMkphtQ58vGmUOkL09tXGXQuEHZEOIXgARb+Gk60KdeNucgE26HnkAVimZhAeu+mq1Qua/r9w/HwZqJfN3x6heYLnFY+PTtHcCnjYIbplNFxjyUX9GUWs1fnxweQfqprWRWLYqCY44io8PFPUHQAf0nY7OiCnBngvY+bGCmMuf+FF5LICGvYNfhgJzkGsw5orJzCBIeFrfPIy9G8keQTL9I/PSE3yR9rBictOhgC2TZwJy3ntTIZGMx5LuQUSHHb7h5RSwdH3QoHRb6/nlrr9ivIzpIAKqRUry+OYzYZpzeWmHHtnFPT5m1QwHFWU7ZBiB00mpanJii29KDbZpwyEYRN1IdMjo1D68epfHbvFb9gBZeoSfsS1zDiTaiDJ3zmYuZv6h3/3TyysJeVhla23Tlyms7wiH7ht91YR7XeW4uxtPYlf2AEs1Ht13dWmKa+OwvMW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(346002)(376002)(366004)(39860400002)(396003)(230922051799003)(230273577357003)(230173577357003)(451199024)(64100799003)(1800799012)(186009)(26005)(8676002)(66946007)(66556008)(6916009)(316002)(5660300002)(66476007)(33716001)(6666004)(8936002)(66574015)(4326008)(83380400001)(6512007)(9686003)(2906002)(6486002)(86362001)(478600001)(6506007)(53546011)(82960400001)(38100700002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFFyazNYWkZnMmprQTZjWnBkaE9YQzluNmRJSHBCSm1KeUZncUlhcEdtQll3?=
 =?utf-8?B?Y1AxQWJHdXdNN3hOSWFHa2RPa0F3Z0JyVzVQRXRCOHFGRm9nWnBFTHhPdlJC?=
 =?utf-8?B?Z0RkbVlyVGdoTGpINS82NUNrckExUXJTOHNWRWM0UW5GVS9PQWV3Sks3bGJi?=
 =?utf-8?B?ZUtqQ2o5RGNNM3B1bk56MnRZd1FidWorcDdPZXJwZ1FqNkg3aDY3TWcwbDJl?=
 =?utf-8?B?cHhKaC82VXRuRHJ4TDBCdUNIcURwRXhRWWNtRlBqMHBNZ2k4RW8yMUh1UUFp?=
 =?utf-8?B?Z1QyUk9OR21aN21wanhPU1gyUXhKZzZFT0tNVTE1RWRQT3RFa2FiY2ZOWnFi?=
 =?utf-8?B?K2RVRlpYSWI2OWRvclpzeWN6YVNYRGlxbnEyZ2NDMTJHNmZVaHNsQTlzRVF6?=
 =?utf-8?B?VHBneGk5MGwvRlczU0NrS1loTFJLUjE1MmJneW1kamk2R0M4M3FDODc4RXZl?=
 =?utf-8?B?VGNQYXRSQnpwZ2RPemxuYTBLUTZUcEx1N0RQN1Vpa2FBYW1lc2tSbUVVTzd6?=
 =?utf-8?B?dUFjZndDTmhsOGZrM0YxR08wKzVHanU3QlAyWFFIeDZqMVRURjV3M3doR1lZ?=
 =?utf-8?B?cTQrR3MxeDJiRWNSUUVQMFpibVlYblVJSG1meU9ERDBwYitNdnR3Tkxwd2o1?=
 =?utf-8?B?QVJJOUhUS043c21uVUo2VWlLVDVVUjlaYTBQUDlreE44OS9ZUHB2aFQybS8r?=
 =?utf-8?B?MiswejUva3FaZTJKVDVZcVJEci9tZ1hTdXBHbERJdG5jMW42UUw4VHhaOHE2?=
 =?utf-8?B?TFFHOFVqNW1mdGtFSys3NldEWWpGeFRmM05SMlhmbnR1Q0tqL2V1aWFJNXFX?=
 =?utf-8?B?NjN0K1pTQWNlZ2dDeHhRWmhFWFNiUEJyVDE2dTA5K0RZbkRuajhOM3JJMytu?=
 =?utf-8?B?T0YrN1JQb2JnU0NlNDlOSHEwVG9QOVVTUGNnelJyb2hRbVVCSE4xTitUZGJH?=
 =?utf-8?B?WmsvZjFld1cwQmVUZ3FQMkhOaHBMS0d6eCswQ2lsR1RoaEw4ZWMwOUtIblg0?=
 =?utf-8?B?VUN2anZGaDh3Nm5uMlJkNmNLeXRzUm9mWkl4Uy91OVIvN2RCeFZZSzZXU1l1?=
 =?utf-8?B?NWhpVE9IMFhHL24zV2FNWFVsWmpSbjNUNmFRZXk0aVBZMS8xWmY4SENZclA3?=
 =?utf-8?B?NmNXSXFUNjZpZVpWU2dVNnpUTlhBQ2tqcTlROEo4bmVuT1FiQmZ5TDJEQlVh?=
 =?utf-8?B?Q0hBK3RUTnlwaTRlNVJ3WWkxQ0dCZ1UwNFZ2bHBCenpwajlvalV6YXFyZUpa?=
 =?utf-8?B?WlJmTTdOVlE2USs4Q2NrajNlb3R1ZnlJMTZrS3RpMnVFT25XbEg5bVp2U1ho?=
 =?utf-8?B?aW05bXVwZ3BPMWx4d2c4OTRFSWtwNWdTZExSUGZvak5Bby9DQjRZRk9aeVBG?=
 =?utf-8?B?L3BrYzVmSVZoeVFUM0FVVzJxQ0ROK1p5a29aYXpNMkFhOGhpcVZzdS8xWi9W?=
 =?utf-8?B?L1JUakkra3E3NnJFYUt5WkhUZUlOZEs2UDExVUJpQVhIRVFPb3NLaFprWUEw?=
 =?utf-8?B?L0ptYWFQeHluUmNVK0d0STFNUHBkUTRFREllc3BYb3YwZTJJU3ltMjJ5MDNR?=
 =?utf-8?B?Z1RwZUFyTUNYa3E3R2FialdjbHE1RDZhdHg5eUpLaStHVFFQNGpUdFhNOW9z?=
 =?utf-8?B?VGpjSjJrWXpqU2QxWjhpaDJjNndDMHFnUFp5YzM0VGxKY3Q3bUNpY1Z2OGl4?=
 =?utf-8?B?TVVkbWUyMUVNbkdaUzh1NGF2ZlFZOHBmK0xGN0pXbUZtNFM3VHl1TEhSSGZF?=
 =?utf-8?B?azJkaUtVOE8ycU5rZ3E2enBoYkh4YmNseXE5NlJvTXVoU1cwSHdvWForMkV6?=
 =?utf-8?B?WTdiZGZEZWVUOWdDWU1lcmVETWg3RkNSaHY4Q2dYVDJ6S0NZTEhhNUZ3dC82?=
 =?utf-8?B?WHN6VnpxNHYzczBmcEJaMWlmVSt1M29BUElzbXUrSXNpREdJZzVKTHNkM2tz?=
 =?utf-8?B?dVFCa25uMlE0Y1gwZFNLc0trQi9iWFlocUIxNmJybVUrRFEwbUg5RlNZaEQx?=
 =?utf-8?B?V0sydDVhUEZtUHFTQkU2YmFyWmlLdzByV2V4YjZWejRHODRpbzRwY0xLSVlS?=
 =?utf-8?B?U1plODFNUk05Ui9HYmRkdG01cXY1VEZXcHJydEcwcDZQVWlKMml4dU1xdVl2?=
 =?utf-8?B?RmJsdWxURFNEZ0NtZ0V6UjFuS3V6VTBFN1lSMjh0dE42YlpuTzEwWmRNN1Fw?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8e0630a-4dfd-4329-fa0e-08dc1db640eb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2024 14:59:39.3054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gh3utXF7R3pM6mJoG3YfC/ogkUXnPmmQgBViFYcc6SAPUhr3I+B9pAbpdOStdbR9TNByufeizo5CazUfttYAuAfXdHr5pg4uhruy5dZY1TA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5213
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 25, 2024 at 11:08:04AM +0200, Ville Syrjälä wrote:
> On Fri, Jan 19, 2024 at 01:12:11AM +0200, Ville Syrjälä wrote:
> > On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
> > > 
> > > On 1/17/2024 3:13 PM, Michał Winiarski wrote:
> > > > On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
> > > >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >>
> > > >> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> > > >> GTTMMADR) there should be no more risk of system hangs? So the
> > > >> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> > > >> necessary, disable it.
> > > >>
> > > >> My main worry with the MI_UPDATE_GTT are:
> > > >> - only used on this one platform so very limited testing coverage
> > > >> - async so more opprtunities to screw things up
> > > >> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
> > > >>    to finish?
> > > >> - requires working command submission, so even getting a working
> > > >>    display now depends on a lot more extra components working correctly
> > > >>
> > > >> TODO: MI_UPDATE_GTT might be interesting as an optimization
> > > >> though, so perhaps someone should look into always using it
> > > >> (assuming the GPU is alive and well)?
> > > >>
> > > >> v2: Keep using MI_UPDATE_GTT on VM guests
> > > >>
> > > >> Cc: Paz Zcharya <pazz@chromium.org>
> > > >> Cc: Nirmoy Das <nirmoy.das@intel.com>
> > > >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >> ---
> > > >>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
> > > >>   1 file changed, 2 insertions(+), 1 deletion(-)
> > > >>
> > > >> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > >> index 86f73fe558ca..e83dabc56a14 100644
> > > >> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > >> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > >> @@ -24,7 +24,8 @@
> > > >>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
> > > >>   {
> > > >>   	/* Wa_13010847436 & Wa_14019519902 */
> > > >> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > > >> +	return i915_run_as_guest() &&
> > > >> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > > > Note that i915_run_as_guest() is not the most reliable way to decide
> > > > whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
> > > > hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
> > > > If it's not set - the driver will go into GSMBASE, which is not mapped
> > > > inside the guest.
> > > > Does the system firmware advertise whether GSMBASE is "open" or "closed"
> > > > to CPU access in any way?
> > > 
> > > Had a chat with David from IVE team, David suggested to read 0x138914 to 
> > > determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset 
> > > 0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074
> > 
> > OK, so we can confirm the firmware is on board. I suppose no real harm
> > in doing so even though it would clearly be a rather weird if someone
> > would ship some ancient firmware that doesn't handle this.
> > 
> > But that still won't help with the guest side handling because that
> > register will read the same in the guest.
> 
> I guess we have two options here:
> 1) ignore non-standard vms that don't advertise themselves
> 2) try some other heuristics to detect them (eg. host/isa bridge PCI
>    IDs/DMI/etc.)
> 
> My preference is to just go with option 1, and if someone comes across
> a real world use case when the vm is hiding then we can think of some
> way to handle it. Trying to come up with heuristics for that without
> anything to test against would be 100% guesswork anyway.
> 
> -- 
> Ville Syrjälä
> Intel

Option 1 can work, but there is a heuristic that should work for most
cases.
If we can assume that on bare-metal, e820 memory map excludes the stolen
region (it's marked as reserved), we should be able to do something that
looks roughly like this (warning - not tested, just a pseudo-code):

static int is_reserved(struct resource *res, void *arg)
{
	return 1;
}

static bool _stolen_is_reserved(u64 addr)
{
	int ret;

	ret = walk_iomem_res_desc(IORES_DESC_RESERVED, IORESOURCE_MEM,
				  gsm, gsm + gsm_size, NULL, is_reserved)
	if (ret != 1)
		return false;

	return true;
}

if (i915_run_as_guest() || !_stolen_is_reserved(gsm, gsm_size))
	fallback_to_mi_ggtt()

Similar sanity check for stolen being reserved should probably also be
done in the regular stolen init path - currently we're creating a
resource named "Graphics Stolen Memory" somewhere in the middle of
System RAM when i915 runs inside VM with native device passthrough.

-Michał
