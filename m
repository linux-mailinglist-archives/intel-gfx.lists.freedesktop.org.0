Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA596BEF48
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 18:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3324510E3DD;
	Fri, 17 Mar 2023 17:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7E610EF5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 17:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679073132; x=1710609132;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=6G0KvaAE72c8NCWHWzezePedqyUISq3q9B9d85JAwSI=;
 b=HES0paQzVT5yjSY2jKEKHsanKdJPpHBneQb9RiNYqHQZjA/NrDRN0ueS
 Y5daodPr46ZWBgPvQ0NhK+tgIxIYmfx+xSmW0jpseJb5Qatrcr1X5UZSC
 LgjANm0VyoeHVEhCIo/rGWy3yCjrPYU0CZzzSUDQAHH6Yg+PnbHrBDukI
 dU+5y5JOR5PcjKvWoDqkFha+2vWd/T5/S0qCUIdjlGIz4qeFeZQUg+yRW
 GTedOQ5guFC5MgVQqttUukR5+7KJeyB3JMIu6CwrSiXggpNDsYk8NZH7A
 cNxvJL5gFG++kaeyIdCuvLX2JjCzCc7uYCTIEZ5hxpkIFJ3V/KmkyIfxy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="337017095"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="337017095"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 10:12:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="744614158"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744614158"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 17 Mar 2023 10:12:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 10:12:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 10:12:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 10:12:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nipDzQfDxfGfAqVP0C8dzQMxRV02YByC8JpUsvBv9jZCqOgJxuSVM7BvWdkML7Puux6GX0I3P6ljlLjnsEOq4B0TM1QZbOeFIKiqYQuB5a+ZzjOF8w5hjEmw+idcgDVFYtIp1fecD2SUiMPM4OIeJ2gMuSEJYPrMSPxBfImu1Aj9kqw8PHVmbHydyaOqiWBPUodyOM4ReNW49BiU+ovHNewuN+jeycKBQao07ItfZI1x+Lh1WoIoTBUWcTagByEQQQY8lyRE1bfIEVt6Ch7zg0i7JG5/4sOkCpo9djTeC1pi/Z/G4G6/bzhWkQcr1KXxqnN1D0hvlHY7U+AAqqYo7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LkXVGSQ125nl5jeOrFJjN6FxMNw4q5nTWvgLTxvYbGE=;
 b=PRp1hLdUuPsgiIoID9MXu8sqHuxu80tlflUw4v5vYXquUlpJVWwN/UCYR6fVhjocYTfTWlWDvix+qztptdnNmicZk7NQ1DgBtSNrOU8Qu9RPgHxQdNC5lvKsuYlqPBShLSIn8KImxEsH8yL8ba0SIcCAzJR5A3CedFvWqazxNDWYh1O0h66P5F6whYq86JEMzB9C9C/RJR6pORKkqZH0+DHKyAYttFX4/ntRjurToo0hlAI0cU+7+UkeDJxzuX7pudQyRrFz6D5gPohnvadCIYOpq9kS6ht0xiRxI3Ji0kSVYu/XDONbA8PzEiDH6OQ2FNCO6n13v7bmTwnW8y0y+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB5374.namprd11.prod.outlook.com (2603:10b6:5:395::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.33; Fri, 17 Mar
 2023 17:12:09 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e%4]) with mapi id 15.20.6178.026; Fri, 17 Mar 2023
 17:12:09 +0000
Date: Fri, 17 Mar 2023 14:12:02 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <20230317171202.7nyudie5yxkg2o55@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR05CA0012.namprd05.prod.outlook.com
 (2603:10b6:a03:254::17) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB5374:EE_
X-MS-Office365-Filtering-Correlation-Id: 97098807-2b7f-420f-ecbb-08db270abda9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ldYn9vOFVceTKkJWPPV2Dpwlgmx9b1nYeqNqnUViKtMEgkp58Dnj11IG2956173YpkaBT2N17pZw2c+6X6drmN1T9rouQW0TU5x6win0EGvBl/idNh5p4J6dSz6+9KlVRigklswq4oiY/f9o2vu2U9MkrizbOWXp1FbQhrE+edsJc6HQkGI9i6W3E+1fV9C7U16XXzRimAkeVrloPn0Twi4reBWVylcEcj5By2nH565MI3mr+WiiGavC2nn7OaeZ5UZ8jrkiCYxT2H7Jx4W3SRrG0TIyxRa9jn1Rps+a3jWi3YriCF7uAAO8jBaf+SIHRldM03tMayeznw8v4RSZod9cgWpEOvKz0guNbr9/ue9LWEuwtQgMO5tE2wg8rplX0wSHx2YfVPbemTCtzE4fcfNni/5JYKroF0LhoDoiJrefBQTbqMs1nE1UV/NdPyeOBFp4tk2NJtnkgqUU/VuapsPD4YBKTp+otCPryGkd9+nJ/Q00rhs8MHxQXoK+ElR5R0GNWARpyKDiaFnK8NqIx+I6iX5Nk6DAUClaLOZM/BMikCx/AUP/7RG4Pp59HoaeZfcNxHhRqzOXTlpyXR2jlXrRN3DqI4nTOT5rmQ+JRayu3wFUewDeP44d8URgNDiP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199018)(4744005)(41300700001)(5660300002)(8936002)(2906002)(44832011)(86362001)(38100700002)(82960400001)(66556008)(6916009)(6666004)(6486002)(966005)(66946007)(8676002)(66476007)(6506007)(478600001)(33716001)(9686003)(1076003)(26005)(83380400001)(107886003)(4326008)(316002)(186003)(54906003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m7rJ8z6r16pEOUk1+2TmY3dGe2UFzkDuEFC8Pv6WabuICwjnqMRDdPC7A3xv?=
 =?us-ascii?Q?fv1KZZEEO93o8oMUH6u8UUYpmZSR8iP7RrHt07fXYuQu1IwX6pkF8QtO+svI?=
 =?us-ascii?Q?o9heNWDMefk6JBUY7lwpTkHJJRMOeS+ThcFbG/AlS0zQ9Twzw58gc1DjTBJh?=
 =?us-ascii?Q?ME8U8GBRbapHJ6P53+KE0qASUVMppVK0/aRup/NH68HdTDNlcRBohw40iy7s?=
 =?us-ascii?Q?2aqzVR2NdBzEKaLr64AEk9rJ+VxoQWrDUzJLyDqHlIqd/xJYMngE4ao1sBOH?=
 =?us-ascii?Q?+ieHpE6FJRIOfp4zGQNm4jKrRZKC5saw//c6Mzy1sFWrVRz4/uxaWJfVezfE?=
 =?us-ascii?Q?ZO+fXeNhUgoLt8NySJ9Gc9veBtDX21Zj14fAsZy92kcjVxE8MV5UDLR/BPXq?=
 =?us-ascii?Q?HoIVArhOJF1HNcL4m80Qe4Jeyt3IheF5oEP+Dv4SKSWhuQD22Sb/3IeK5ksy?=
 =?us-ascii?Q?u2KX0VArrdJE7o2II8ln1iC7kq5kHeyae81W5EF5yeFsIHai9lXGJgZTWAkM?=
 =?us-ascii?Q?5v1cG6Bw3cM2FW/hvQhDM79UakBXS7hsDcn/MQvVbRsFpQUqnj1v2u/Af1tx?=
 =?us-ascii?Q?clFxnjl2jI7OiHp55xaJOFOi6m7dxALd6POleKOJUbx2ffuhKzsQxg4liMOa?=
 =?us-ascii?Q?7/1Vz1vLYbjtHcb5Azi/nDC1+xP31bF1KYotdNO3Maa3THbIyT8SrrQZtsbV?=
 =?us-ascii?Q?+abE100bd9X0mG3CmWFDqSsFcsK/Q5wUA7PM+JdwR0nQVbDSUqcTGovJAvbW?=
 =?us-ascii?Q?6XbydHgoqAcfP/gy3K8IhGKEM/14bHZ7eBbrTl2emQ8q31wsodkW/4qhpkOE?=
 =?us-ascii?Q?IWwToDyF6iOBXcgevuF38ecVgVu24pLtysl+0iGkdz0Z5HUW9S4ASOOQ4Cse?=
 =?us-ascii?Q?MMG5yDHWB+UngafVgjpPIeAUs37jOgxMhxwjI/WucymNkq16ZOvJO0nml4Rf?=
 =?us-ascii?Q?UueprGyR0Gl+e7xxKwaBgBlB1cz92kxXAwTv5aSqofz85nFcGLgRScTOZfn8?=
 =?us-ascii?Q?Q5ab8j3uglWxlFmaMpMMLY+DzI5N1WfEqVEwBCp7VA49r56Yp9EdSIqAROVl?=
 =?us-ascii?Q?sCGjY1VQA2mAno9Vt0Iox2xkS0XdaaWy6UWOjxZHy8eFfLZQkbY+b1FG5xj/?=
 =?us-ascii?Q?rckLLjWNsCBDFIeXsj/+P2wG/6eIm7JmUxo7dtjc7+j8E2erPJ9rkAPWxKv6?=
 =?us-ascii?Q?yhP1NTR85Ha/OxhMK8df3wimIjnpX6r5XfSYSCzws+anJgRHOqljwOcpdT+Y?=
 =?us-ascii?Q?szySvCKEDJ4lIAmhYJ6oKpKVAg/1iRiHtzL45KT0wspwVGnSVLD+1xO+Hpvs?=
 =?us-ascii?Q?iSw0B1FjON1c7jVnVOyxY3ZRvPpZs8fAvC68O7U8TInO7QjLBlo9J/lbXCS4?=
 =?us-ascii?Q?9fVJZYZT2xaS09LfqL3BPUruyJnEfWRPsOcjEi1+akMYpW+RxO2CMjt9dCDF?=
 =?us-ascii?Q?FYWOAByrDW/N4+/YMN/caLcsM0SHrrNEScMZQhVt9nMJN9TJNts8GkvnrhTg?=
 =?us-ascii?Q?vr197gDswiyrt8+uqgnn/ZedvaWzp37DQ11T4BvL/Gdik2F6uUg7NrCUUEB7?=
 =?us-ascii?Q?Rk2Ikt4qQije327gJ6Q+H8S4b8FhUSEuc4olYE+JZ+Kqg8gImB1dzfPiTKS2?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97098807-2b7f-420f-ecbb-08db270abda9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 17:12:09.0586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2SW8/HIIplZA40ntdWieCHX04jZC7tLbgUz0rut6ahPh5zI+btt7v23Tw7Nm6rRU4SlqHNwnhtwNaxRuVquPpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5374
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for ADLP DMC v2.19 and MTL DMC v2.12
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
Cc: kyle@mcmartin.ca, Josh Boyer <jwboyer@kernel.org>,
 intel-gfx@lists.freedesktop.org, ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit c761dbe804f903cc2df81f251d367cca285eca06:

  Merge tag 'iwlwifi-fw-2023-03-13' of http://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware (2023-03-13 09:20:47 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dmc-adlp_2.19-mtl_2.12

for you to fetch changes up to a18a444bfbd6097515272f587b86856a6de15218:

  i915: Update MTL DMC to v2.12 (2023-03-17 14:06:32 -0300)

----------------------------------------------------------------
Gustavo Sousa (2):
      i915: Update ADLP DMC to v2.19
      i915: Update MTL DMC to v2.12

 WHENCE            |   4 ++--
 i915/adlp_dmc.bin | Bin 78500 -> 79044 bytes
 i915/mtl_dmc.bin  | Bin 48512 -> 49104 bytes
 3 files changed, 2 insertions(+), 2 deletions(-)
