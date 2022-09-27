Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EAA5EC224
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 14:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B7610E900;
	Tue, 27 Sep 2022 12:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C20C10E900
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 12:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664280795; x=1695816795;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0PL82tJ2dhpTqRWlU/nXJ3TSv7bERWjrNVs4Wz1juDA=;
 b=DtCo0DN0a9Yb+kL5ay2i7By7fYc795Np9aLK1TPCKXTRn4EkB1o5cdWH
 7NSzZLbU7DT7XKf+n/DCoa3blDtz+1KERFadsXzG93FuVj6i7DdLgQ4xO
 Q6j88DyJ23BZj198t/oMkSv7b7/YbiI9HrxCdEqNBWdb4DCGkE/syFT70
 mcyNnxyzaVvDo7mSuQEnhyVbaxskWAte24EWpKN85vrR/yjpI7w3y9mAB
 JHVNNVWDc9tXmQ2QJheARD0aNFlvM18QeGuD80BY6W6yyvWCzcXawHTRp
 zLvkwieRVwJKBx0ATM4ZMR6eHxaXi7kTJnQ/8yUQ2S4q/+BTTa6ymr+U+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="363138728"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="363138728"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 05:13:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="623736549"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="623736549"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2022 05:13:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 05:13:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 05:13:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 05:13:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gXHhze3A/bWgL9MqpOIOLCpawovAoORjDrg0v8p1cVxpXnj+rI/6YdZUbhm97p+1wHS92D0qXGBjrI3rkrK9AYyY509ABwI7OV9TRl7XyG8ZMqSYlKgKj6Nkk1xEGFWRa5F+iQ9EM7RfrUfwP3EBwPWLvbdW431kCXKALgvnmapy2ksL8Z8nQe+WVqz6AjziBbMS8CiD8/4UGIpLdKUkRJhBSEkEtKMBtAgQguVMPQYsEcAA9dZDlo4UqO1f7YIw5hV3+xogCHC1fG5rBOqBp0K9aA4G1K8/rTsNSUKwkCrlwFSSmuFSp1axvRjHVOktWh75ZJpk3Et5BrU+IWxSbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfPtXyOJ0P4soUK9kaY+SKWioj8QHqBKJlFjezRdMLo=;
 b=gfJT3qObUAOkU5SurrKxFABNztFWd5X3ctzC3hOvLvzudgJ5efkNkb99e/AfTgi0q/unGLkdB+zpSdXwABv2EWRI9rrmQsm9J/qfnH3e4KKcLe+lr/Mp00uHWayGUKdmD+oi6CvVaBU8MGaUuHeprfsOX+E2wtlSYRl64b3d1S8hWnmzc+1a5qePYZGnxSKBbh+A4lU92R03WxWC0H4gqqmtJ8xdu48mbCKmqX8YL0bupbIK6qBPFr4zkOW24hFUAC7k0zm/gwDYgiS1M7022bqh7oUGvK4+oRD3Q+7QB0lSAibJAwUdP9F9EU8mHHaeEse6Qack2rJOlIqb2GM+Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 DM4PR11MB5245.namprd11.prod.outlook.com (2603:10b6:5:388::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.15; Tue, 27 Sep 2022 12:13:07 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 12:13:06 +0000
Date: Tue, 27 Sep 2022 17:42:57 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Message-ID: <YzLoyWgKIUvjs2V8@bala-ubuntu>
References: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
 <87bkr64du7.fsf@intel.com> <Yy2H2bG07Vqf8H6D@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yy2H2bG07Vqf8H6D@intel.com>
X-ClientProxiedBy: PN2PR01CA0233.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::12) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|DM4PR11MB5245:EE_
X-MS-Office365-Filtering-Correlation-Id: 40c1492c-5add-4813-f03d-08daa081a2a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5GSuxhc3pmBs4pxCUvfkszHMwFUpOXtm8MCkwRZjrJ1hzuNhJj7WHnzPRxdBtoU3A20dP51t7HkENJzJUmTYZVHC1EYBrKMiPIdLNMFvRUaRsYwGlMb1E+gMDQGBlVZYFy3Q44quw+yxExMQaBpYWXdDrYo4aqPtP9oFnwd1yoW9ALkKkFxbPWwHe+8B/wJBlx+CyXUYPJdfE9f7rNQDOiNyxSNdygArLThle0K1I+7nvfl0urQhflyx7DTMBL+9g9o1YUA7XekzT4LvWURbmITUjnmYsLYrCkMKYOJA72785mjysZEwTz6mriFue0w8ePNcH100Oy+zg3dHWzQ4kSMSF3EELyHOj19IWq0akNmQM7+oygytNkG89u2oSz4rc+0HHvOBhQwOsvjXNuf8XKwdi1WeNT0L7MnIUGJHgXrZooNdoPpPp79MLK7kw+ABPVK7pXBDH2ilXopLUNdQzYe+TKbDXKgRWn2XC4snw2/9H8Zq2u+g47ULCgSPIykRlkAxWrSPcaH2+HiZ0FC3HOhScLOMf5YjNXud935IfLCx621BxwhWNBjvkF1kQETIOK4l9WG+R5HRB8fu69pYDyM86d0FsoZMKiErHRQx6fOilY+aAYkTS4LFJMkp1DT8lGRihZZbpgfpZk0vAaB2EDH0asD7mblpTPKd83PaOM6/FOdE4GyUZy8gp2hVrr0j09a1Gn/KZUd6Z3X8xNPWRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(376002)(396003)(39860400002)(346002)(136003)(451199015)(66574015)(186003)(82960400001)(33716001)(6666004)(110136005)(4326008)(316002)(38100700002)(2906002)(26005)(53546011)(478600001)(66899015)(6506007)(6512007)(41300700001)(86362001)(8936002)(83380400001)(66476007)(66556008)(66946007)(8676002)(44832011)(6486002)(5660300002)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVdDWTJBNjBZUUpLcnZHdHcxMXJuY1J5OUkrSjQ3Z1RsWGkyek1BTEU3d2FU?=
 =?utf-8?B?S0xvYWxtcFhFRjBiZ2ljYUx2TUZzUlgwVS81aDN1b1lkS3ZUWENOZEdiWk0r?=
 =?utf-8?B?MEcwcDhjeWRKbU95V0ZSdWJTY0hxTTRYOFBsNkJCa0ppdmVlKytHeVhrRW1s?=
 =?utf-8?B?OUg0REh1Z1lDd1A2RjdaYkRDaXZWQk9uUUJHUWxvVEhUR0xVMG9lNVZsT0pt?=
 =?utf-8?B?YXAyd0xIU08yLzZLNG80TFpJR2xHSTZpa0FZQnhQRmFDWGtpaG45eU0wNnZo?=
 =?utf-8?B?ZUVHc2tQUXFsM2t1bUVnOWpENlpYMDFiSkloejV1QlJqVndhNzdNRTRrdE4r?=
 =?utf-8?B?RnAzbjRuaXlmdU83bHVCdWlvQzdwd2dKYmdwT2pKQ2N5N3JnR3c0TUIyYnV4?=
 =?utf-8?B?OEhTd2ZabEkzK0s1SU4wb0FiU29lQ29qdHA0bGQ1WG5NaVAvdDN3U0t6V1BY?=
 =?utf-8?B?UVQ3S0l5VWhDbnBSdVZyK05KamUzQ0tONTZYV3hQZmQ3OTlXVEpwT0Rpbnpz?=
 =?utf-8?B?MkVobXdlNnNaLzA2bW9YNm5MK0drcTRoUTN2ZXBvMTFBY3NvV0dYQWJPVlBh?=
 =?utf-8?B?U01nTTBlblNUaEF4dXJsa1ZYS294VnY4TU1pd3Z6ZDZ6SW8rcVBMeFMwVm5L?=
 =?utf-8?B?RVlxQmJQaE0xbjkvM2dqZjN5WktPNWdBa1h0NGo3eHRYNjZ3Nmt6eDhScTdU?=
 =?utf-8?B?TS9TYkpoSUxiaUlVaWJNTmZEMjFob3FyQnNCaEJ4RE5PMGtjY3hQL2JjbTBM?=
 =?utf-8?B?RnNFOU8wQ21td1lWY2Q4VFRIWTIwcHlVYlNkczY5NHZKZGtqZVdsNHF3L3c1?=
 =?utf-8?B?eHUyV256a3ZZYzVta2g2UXJZcjJPOVVQdFRHSlV6aDl2VlJac3YweUJjVEF0?=
 =?utf-8?B?SmlTN3VOSW5LR3BwbFdqRDJYWWx1SytWeWcyYjhUdmNuWGU0Z2pOUXk3ZXR3?=
 =?utf-8?B?QTRLK01xQzdhdGFxR3E3clJvQnM0T0ZZa3VER2xsWGRBSkR4OGxXenk2S3V5?=
 =?utf-8?B?RHBQU3JEZFM5Q3czMEN5OVVxRy9ZOUY5TjMwcUdpOWR5THBaaUt2T2V0NUlV?=
 =?utf-8?B?VVNrUHdESVQvaWJmanhYM2drWTBLdDdYTGxNRjRJcFZ5Nk1TTEVVdE9peDFB?=
 =?utf-8?B?SllHM3NvbTdyR21pUFhPd01IRUQ1QWlvaTVCTXBVUXV6eEFHaHU3THQ4bVRL?=
 =?utf-8?B?MVppcGEwMW1BUko1TndJcjIzZi9OMVE0VDI2b25VL2JUYUs2NmlIUnBOc05u?=
 =?utf-8?B?OC9TRUo1NzhDNWZJalc3NDgyQzMxQk9sTG5YOGR2dzBzelFjbGhrZitXZG1i?=
 =?utf-8?B?MzRRM3lYU01ZTHdER3IzYzUvRFRUeEY1bTZPNjM1NXlUVkY2UWFTOC9KQ2xt?=
 =?utf-8?B?ZEJ4V3pNMDNyWURuN3JzUEFhUDVIcjRaSlRzNEI1NENNVlFDdEFvSUw2eE1m?=
 =?utf-8?B?MlFNTGtMM2J0eGpFanI0VitKK1FyQm5wMW9EeGM5bEJZYlluSTN0S09OTVNz?=
 =?utf-8?B?bzRiTkVyeXFjMEN6eDRUMnczNkc0UGJtNVEvd0I3cFhGNHRyRzJHcDVmb2F5?=
 =?utf-8?B?NEpJWStIditKaTBGeVVmL1JBZkU3MGFaTWM0UXdnZDNvS0dMdG5JZGRiUXAz?=
 =?utf-8?B?VUJIalJYYUdQZkxtOUJzVlRUaUZOeHczdjRGOE5wbVJzSDZvU2NKZmdSVW5F?=
 =?utf-8?B?MUcxa2NyeWxjU014Q2pKKzVST3hmbmpoYW1aMFhWL0hKck4xaEtYR0k1UFRH?=
 =?utf-8?B?OUhlK1BhRXp0ZmVQR2M3NEgwTVdkVkJSUlZUcTZRYmVuOFZhMEVtTFM2V2tv?=
 =?utf-8?B?c3pqbE8yRzRJQklOMmZNK2FVNDR1WkdwMzZocHhiZlBDSjArSHBrRWkzVWlw?=
 =?utf-8?B?MmpxL3ZPbjJxM1dKYzZ4WVdtSDFXWnlmSjRoTEQ3NVYwTWhabGcybVhvRllx?=
 =?utf-8?B?TWxzV3U3OW1Ic0ZVZWV5eU02T2xRYTc0VDFqUHV3QkhlSDM4QWhrVHpHSDhm?=
 =?utf-8?B?elI2VUdUVmZqbldOVlNiOExBUG9naTVGWlNqQzVEcGFNenNhb2ZlMGhtcTVL?=
 =?utf-8?B?NlhsZUhjMnk2b3huM1VXajBVUURPaitTVnFUZi9VRStIK3BGV1lFTUtkKzc0?=
 =?utf-8?B?KzdYeitnZmpNL3diZkJxN2VxMnhSOHhOVnJuSkUwZVhlTEVUaEdBbjM3WklH?=
 =?utf-8?Q?9g3QwfpJ9mdideCyY+PspaWxzjwutLCwbBw0XNPfAp9r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40c1492c-5add-4813-f03d-08daa081a2a4
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 12:13:06.7540 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HnmYp7GdUPryhIHZHHGP0vyOEgBc5QAhbBCTJgXmnZ1UVe/9r6gfvaQTDRMuQxvm+FOsfWdC+nSeeq8K5JQgXQVrSsLBbfot3eFAMbPJWNobJizAuEvs0ZcItISp3dez
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5245
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't use port enum as
 register offset
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.09.2022 13:18, Ville Syrjälä wrote:
> On Fri, Sep 23, 2022 at 12:52:48PM +0300, Jani Nikula wrote:
> > On Wed, 21 Sep 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> > > Display DDI ports are enumerated as PORT_A,PORT_B... . The enums are
> > > also used as an index to access the DDI_BUF_CTL register for the port.
> > >
> > > With the introduction of TypeC ports, new enums PORT_TC1,PORT_TC2.. were
> > > added starting from enum value 4 to match the index position of the
> > > DDI_BUF_CTL register of those ports. Because those early platforms had
> > > only 3 non-TypeC ports PORT_A,PORT_B, PORT_C followed by TypeC ports.
> > > So the enums PORT_D,PORT_E.. and PORT_TC1,PORT_TC2.. used the same enum
> > > values.
> > >
> > > Driver also used the condition `if (port > PORT_TC1)` to identify if a
> > > port is a TypeC port or non-TypeC.
> > >
> > > From XELPD, additional non-TypeC ports were added in the platform
> > > calling them as PORT D, PORT E and the DDI registers for those ports
> > > were positioned after TypeC ports.  So the enums PORT_D and PORT_E can't
> > > be used as their values do not match with register position. It led to
> > > creating new enums PORT_D_XELPD, PORT_E_XELPD for ports D and E.
> > >
> > > The condition `if (port > PORT_TC1)` was no more valid for XELPD to
> > > identify a TypeC port. Also it led to many additional special checks for
> > > ports PORT_D_XELPD/PORT_E_XELPD.
> > >
> > > With new platforms indicating that the DDI register positions of ports
> > > can vary across platforms it makes no more feasible to maintain the port
> > > enum values to match the DDI register position.
> > >
> > > Port DDI register position is now maintained in a separate datastructure
> > > part of the  platform device info and ports are enumerated independently.
> > > With enums for TypeC ports defined at the bottom, driver can easily
> > > identify the TypeC ports.
> > >
> > > Removed a WARN_ON as it is no longer valid. The WARN was added in
> > > commit - "327f8d8c336d drm/i915: simplify setting of ddi_io_power_domain"
> > > The ddi_io_power_domain calculation has changed completely since the
> > > commit and doesn't need this WARN_ON anymore.
> > >
> > > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > 
> > I agree with the premise that defining platform specific port enums such
> > as PORT_D_XELPD to tackle differences in register offsets is handling
> > the problem at the wrong abstraction level.
> > 
> > I am not (at least not yet) convinced with the approach of adding
> > platform specific mappings in .display.ddi_offsets. The main problem I
> > have with that is adding yet another way to deal with different register
> > offsets. We already have many, and adding a new one isn't appealing.
> > 
> > Not that this *is* different from .display.pipe_offsets and
> > .display.trans_offsets which are actual *offsets*. The solution here is
> > actually misnamed; it's about indexes, not offsets.
> > 
> > Finally, even if we were to choose this approach, this should be split
> > to at least three separate patches. First, pass i915 to the register
> > macro, no other changes, totally non-functional. Second, use the
> > indexes. Third, remove PORT_D_XELPD etc.
> > 
> > I'm still considering alternatives. In the mean time, please find some
> > random comments on the details inline.
> 
> One of the earlier alternatives proposed was some kind of declarative
> struct to describe each port, which would include separate indexes needed
> for different things (among information on the type of DDI/PHY/etc.)
> I think there was some attempt at something like that, but IIRC it
> tried to do a bunch of other stuff too so it got bikeshedded to death.
> 
> I guess one key question is: Do we need to freestanding DDI/AUX/etc.
> register accesses or can we assume the encoder struct is always there?
> That would dictate whether we need any magic in the register macros at
> all, or whether we can just trust the caller to pass in the right
> index.

Wouldn't it be a big restriction to say it wouldn't be possible to read
the DDI registers of a port if it has no encoder struct associated with
it?
AFAIU from the driver, encoder struct would be created for a port, if it
is enabled in the VBT. Can we then assume that if a port is not enabled
in VBT, there would be never a need to read its registers?

> 
> Oh, and the other key question is: Is an index enough, or are the
> register offsets going to get really random at some point?

Looking at the DDI register offsets through platform generations and
also at other parts of hardware where register series exists, it seems
hardware tends to keep the increments between register offsets fixed,
though it may change the size of increment.
So I think we can assume the index would be sufficient.

Regards,
Bala

> 
> So far I'm not aware of any changes the status-quo in the forseeable
> future, so not really seeing this part as super urgent compared to
> the whole PHY mess, which has been much more volatile in recent
> times.
> 
> -- 
> Ville Syrjälä
> Intel
