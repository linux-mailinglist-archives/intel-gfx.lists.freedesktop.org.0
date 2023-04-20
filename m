Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2906E9CD2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 22:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC0B10E0C5;
	Thu, 20 Apr 2023 20:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4BF10E0C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682021133; x=1713557133;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iACgPIcWNEvwxqYLrPwmbeu0HqzjfwUh+vnXIfB+BiE=;
 b=Iu58Q71S5Jg3m5v/XwYZYThph3tRJRpvyA1ETs0arLg66sJdfb8m3UD3
 WC9IwDrktDkRjnE4qlbs5yvB66KUj2ZwHQkUbd/Lhl1Vo6bQdXv9zBgi2
 +kf2i4PqOwRlbwp5zp2EFDO941srw4wXo2RSGOTF9mn3Q7MmII4UTxP0S
 lZbB7JRLzrj9Or7yEUIOjdy7H2i7Yo9QfxziurOIHK4EZjzyXS6DVBMHK
 Capn+1M5X3JUE/kMkZpWxouuiS2cbT37/3Mo8EaaAZ/WA0QZ5lv+GoQgn
 AjJd6hV7yf2t75vjE1aAMUnJepp+8Q6LGzSmCBFmkCy2ZQe6RGaMNQp8s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344594188"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="344594188"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 13:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="803461411"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="803461411"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2023 13:05:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 13:05:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 13:05:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 13:05:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 13:05:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S/V/bahPGWXR29+/MsVJ0efo39zU5PZ/Az6akwwhItCTA9RmgJuPWitnnvhzeFHlNPnsKdPXA+qWykAP+qMcklG8sSufhgF+DSPt0BxNF/HXAO+cVFzXyMVX5yciHmRnNK592kaQYCTDsIqm41Be/mapm3YvOdend6oVCpi7kbr0PGZK+YNMgpI5Q/nxYkOT+tyOQktAqHqio3XkrRFeoBiQuKMAt8k79OkLFOFn01M8iBPBMnK6Y78D6SI01VyXuUW4jaqE6pr/x7IY5LRQa09S/r9NDDUUkA5wnPPz03hVRdq7YCPxjd6rJaAG2pRWGG9T07Tq3A0bfFXnmvDUjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iACgPIcWNEvwxqYLrPwmbeu0HqzjfwUh+vnXIfB+BiE=;
 b=PdkMfYfZtTKRI1Mn4KsnyzclPlcZbDvX1F7EisE7BnowYSfZjtd+MHInfvf6qEw1MEtrioR9XpoAAzdpxdiD4UpKQvfO/aC4uDKMqLvDCDHe3y2T+Q5as6sVe8eoLbLGeFzZ3x3UNOpDQ/3EAIjquyDdUvROEqTZbqPt9lPb9irzu6sqDybnaaoxaarKLTeuWcotin8uOwerkK9aC/4yeGUBTxVwzzUG3nXKQCeZR/nrdj3oeULEtbgGAV2TS4yCa8HZl/IcY78GW8sPHWbN7C0aVD3VxPGAmCrAl9UJ8RK202j/afC7PRc59zofTIYYv79IXZ1Nk9dD8TAj4tIAJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB8160.namprd11.prod.outlook.com (2603:10b6:8:189::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Thu, 20 Apr 2023 20:05:30 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69%5]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 20:05:30 +0000
Date: Thu, 20 Apr 2023 13:05:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZEGbBwqfRjtiaecT@orsosgc001.jf.intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
 <20230316202549.1764024-5-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230316202549.1764024-5-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0159.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::14) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM4PR11MB8160:EE_
X-MS-Office365-Filtering-Correlation-Id: fecf909d-1d7a-40d8-e3ef-08db41da96e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DecJTZ8SBPFdq/koUYK2ozU3KmQe9SWgDXJpZd8+TZw0mTkoPCXkGmY+RqOwTYZq5VXO2fCfiK1LwoxQNshMbflwKH01KT7X3AR8jYhV+Wj3UwJunz/VBhCHx9Dq7v1McT1sN4+MhYm0JMY3nYr1arkcgWhUDgMtZSU7JJx8pLjt+1DkbRdiwXayvLBOLP6Z7RQDTC7ZNhByCjK/eaxivx/P/qwU19BQ/J5EDgHP7aQaJk6E5iMKVI8aZj/f9SYM1JKk6DjwiBCvNM5G1N/Rr9SUf5zkYBS33ie61mV5evSRl9+xZzgsgfIn5vbXRQb2l/BHu+zfpDYm7tI4psYJPJBnlnzjavp1FRO0072MJNexu0DzflMVrkFRqLFdSFrR9lerM/nr+uf9adZg4iTNpVsQxTWgiv6RN205dBShVqkL7G2YRhfQ7orZFQsfug0FF8ev+EplO+EV+GLkRGWWaRMyKTM2lP24/dKBln7bdasNY/wEyZdB8a0jrOkWxZoPZRIjx/zTRGM3hlBxkdfSAXRgklz44PQD40giiJfHvTyagUWNukmDP5UvIboC27Z9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199021)(83380400001)(86362001)(107886003)(6506007)(26005)(6512007)(478600001)(6486002)(6666004)(4326008)(66556008)(66476007)(6636002)(66946007)(82960400001)(41300700001)(316002)(8936002)(8676002)(38100700002)(6862004)(186003)(2906002)(4744005)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnRGNXMweUxxZFRVcmkyeXVETEZmcDU0bExOTEZXUUpyZVYzWHExREJncnVt?=
 =?utf-8?B?bkZYL3dPc0xxZ2JQNVRpdnBLV3VNdmVFUTNwVlEyQjlZSVBOVDBuNUZHSkFX?=
 =?utf-8?B?cWcxRGdtNHJTditnMmF5WFNLdTJjNkFVVnVwaXM0WFhrWkUyaC81eG1JT1c3?=
 =?utf-8?B?VDZFbEIvZWNKQno3YTJXNnlnbFF0Y1ZDR3YyQ3NjZU1CRlJlZmFTcVgreFg3?=
 =?utf-8?B?aTdiTis2V3c1UUU2algyN1RodGxzeU9WWC84LyszdkFYdnRxdFE1a0hJd1hH?=
 =?utf-8?B?L05xeEUyNjBKWGo1OEN1NmZ5NzZrOXZGNG12OEkzNmR6QzQ4RTRpdzFkdGVu?=
 =?utf-8?B?MTRlaThuRFJ1RnQ5MDduUkNtYWJOOVNmY2tGdlNwTmg0Rkk0VnFzY2Q0VmZ0?=
 =?utf-8?B?NTZjNFB6VFgrTE9UNUdIcC83Y0lXa0piN2p2OU5LcUlPWDBmVkgxc0d1Slls?=
 =?utf-8?B?WkEyaEd1a3JZU3Vvb0FvUHUrQ1NUeHJmWk1oUm5rWkVWaGNXUG5BV0Vabnkr?=
 =?utf-8?B?OXpNdmJKQm5QbEpXdUJJM0ZGNTVweTQxL1hIU1ZFUzdWM0V4TzRrSlJqeHF3?=
 =?utf-8?B?M1BEajRoMWl1T1Vra0o4T0JhMGlNVzFCTlZQam9RT3R1WUozZ3JyQXJjeEZL?=
 =?utf-8?B?b1B2TzV3dUovNTF1Nmd5VzBvdTZVSkFMck5nKzRtci9adFVSeFJTT0p4emV0?=
 =?utf-8?B?R09wUGFjRWg5T0Vxa2FoRElueHFtZWZONjg5KzE4S2JhZmUwbWRPRnlBaUJ4?=
 =?utf-8?B?ckd1eDJObHJCazNwbm9xMnBpUjI2bWhQMlB4STREK1UxVGFJMnd0cGlIS3Rq?=
 =?utf-8?B?YmpFaDJ4S2FhN210UWpYNENIbnNodFhpZTlsbWdXdjYvaXk1dCsyNkIvQWZn?=
 =?utf-8?B?RU1DL0NjMTc1V1JDZ1dKWWw2Z2lMemlBSHlaTjBtRXpGaFVMZ0JNRlFuMFR5?=
 =?utf-8?B?eTVWK3dqMFZUbU4xUHhYcmpDQ3ExazVRMCswN1dyZklIZmdiVldHb3RBOHM3?=
 =?utf-8?B?OXF6K3RSWHVFLzNXQld5R2JjczNmR3ArT2hneWxtS01pOVEwY1oyUzhYWGVI?=
 =?utf-8?B?N2NkWHhrczZDMnZsSmUrZElhWnZlbVpXd0dGem9zZnZXMWxReXZaTUI1QnFY?=
 =?utf-8?B?RWJLRmFXUnYvZGZoU3RjYngwTUdEenVzWVROVTM4Z3llVUZzNEx5WStUUVdD?=
 =?utf-8?B?cDhYdG1KY2JORG9DSUZMNWM1OFZUVkhuejBKeVVyT2F3WWtmOVRDcktUSVJq?=
 =?utf-8?B?K2l2T2dlV3JkV1phYU9odUc5ampQMFZhZHdINVdhY1RtZVVtUHFiRW90TXRt?=
 =?utf-8?B?NkpZUElLWk10ZE01WVhCUHZYdE1wa3F4NWt2N2FFdHZ6OE9YT2JzS2g4RjdM?=
 =?utf-8?B?WUFFTWZkREFWZzYwSEZLQWx3Q1JtVU5UWkFJdCtXZFBIWHk4UnFRY2FtWENS?=
 =?utf-8?B?SGtDalp3c2xHdy9acjh3VnAraDRIZEgvNjdSbE9QTVBzSTZrcklHcFdnS1pn?=
 =?utf-8?B?Y1NyYzlYNWIzcFlmMExTMTNpR1BOck9HN1VBVis2SlZqWExiZUJRZFZ5TXY4?=
 =?utf-8?B?VnhrTVQ1QnhIQlg1TFRFUW1rLzUvTHQ4RVA5MEMweTYzaGFHemx4VHFEODBn?=
 =?utf-8?B?RU9lTG5TRDVsMmh4bWoxbEtlR1BHUkhicEpsZmJJUDFQTkhraDdiZUU1dEU2?=
 =?utf-8?B?ZDZZOHNhbHRsS3YwRXYrZWhJUE9TeEdYRlYvWTIyVTVTYWNSc1BocTE3Tm13?=
 =?utf-8?B?dklRYktFWHNzYnBaU0s2OHg0M1RvQWIrMlNQU1ZWN1FDU1RsL0hHdWJlcUN5?=
 =?utf-8?B?WVR4T2k5NkppTmsvckRoMkwvdDRhR1IvVGk5V2x0c2tpbWFvUlpsTnlrM1l4?=
 =?utf-8?B?NUUyR1B0OUFwclhqWWVONmx5bHgyN1pwYkZoaThnK0k5TXJESFlTQnU1ZWVL?=
 =?utf-8?B?ZC9YMXU0UTh2dGZEd05oTTZVd2lXK1kzWm8wZ25nMER3bzNEalBvN0M5OG5H?=
 =?utf-8?B?VloyTFV2aUEwNnlUU2tzbGhsT1RLTk1ZNm8zSlZGMU15a2xQWHRma01JOFJS?=
 =?utf-8?B?S1AvejlkUHA4ajNOTWVCNmhFWkplRUJoVjk2bkROc3hRby85Y1hJckJsdnNY?=
 =?utf-8?B?ZWVsV3QrNjJrWlUxejVTdzZsQnhibE0wVHRrSzgvaG1Ob1IzcWNGaVlsaDJZ?=
 =?utf-8?Q?Pnd+FkwfJfEWJd5tihhhZrM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fecf909d-1d7a-40d8-e3ef-08db41da96e6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 20:05:29.7288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UhniLZplhUdHd3CT8gTgYhT5VEwHN/N0GtA51a/+THKGaQ7qwNRPxI1bR+P01DNVjncT6vuwkMPe0C4mQ0DrZpYQTlrdy6EWlpUiPeYA4WU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8160
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/mtl: Synchronize i915/BIOS on
 C6 enabling
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 01:25:48PM -0700, Radhakrishna Sripada wrote:
>From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>
>If BIOS enables/disables C6, i915 should do the same. Also, retain
>this value across driver reloads. This is needed only for MTL as
>of now due to an existing bug in OA which needs C6 disabled for
>it to function. BIOS behavior is also different across platforms
>in terms of how C6 is enabled.
>
>v2: Review comments (Umesh)
>v3: Cache the C6 enable value for all MTL. The OA WA is needed only
>for A/B step, but we don't need to check for that here.
>v4: Rename to mtl_check_bios_c6_setup()
>
>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

This one's already pushed with the MTL OA series.

Regards,
Umesh
