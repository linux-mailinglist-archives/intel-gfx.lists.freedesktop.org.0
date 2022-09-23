Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DBE5E773F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 11:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E8A10E7EF;
	Fri, 23 Sep 2022 09:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FBE410E7F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 09:33:30 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28N8uxnu015039;
 Fri, 23 Sep 2022 09:32:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2022-7-12;
 bh=RU26HfDTuZskgyMF/ZW12IPmj0H4Kv8gEq4x6WMRfhY=;
 b=LTc8Khjxvhd8JO6YwvlK8ldgeKABP2tnxLqi3ADCgjf1K9a9SMReSv3QcT0B9wHpIkZM
 KXYYeGWv+i9/XOnTm4MMhmIyyBWANLqzNieKc82aeG0c/cE+dhYO7mHbqKTkHZqN2ZIN
 l66ikCRkw97813UjczC0CjucvwxCiiJxHzISOMyddrkUNrw7eYr97VCqr2GUmGUJOGtn
 VNB+678Pmdn6vU+2QDu0McMMdRz5FXDALRf7lT4q+DoYjpbZ8rwzIe8KFBEDmIJncdfW
 hjZaJYzAoyOyEVpt9e9g8d7klW+8fuunRWeuH1LsjqtqWhWZz4SGdXX4SDnlJR2TG4nz bA== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3jn69m05c4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Sep 2022 09:32:59 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 28N6mn5f001911; Fri, 23 Sep 2022 09:32:58 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2175.outbound.protection.outlook.com [104.47.55.175])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3jp39tr8c8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Sep 2022 09:32:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yfwj6ifNLMfRy4YPstbd5y3oZ+f53fLiHrg4mDDZD+SBiLzn+xSnfxj7XJIm0hNSZHWdAqukcF07OW6AEJVtZ1LTfbwcLCsYtjGhusmK4TpEAGI50W0BRbAISUCanfZQ14/GXR78VaJivfgkrEq8gieFkcqajSCIazh7hKhMC0qmTiflj7OvEvwQfmn9AtG//cb0kO6HVuuYztEgGNioDaP/z5wP2WLCZmTxF9pc4+FM5rtClJQpMB9K+G4W72J4jlAszauLOpEESdHETexF6g4TZruchV64dDia1jFaAd93TJrtPsBaSD945X8lxyoG/V/EgfW+0oLzAuxTmK7C3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RU26HfDTuZskgyMF/ZW12IPmj0H4Kv8gEq4x6WMRfhY=;
 b=G766adVu3rypwG639ELISvNC/Tk18RYYnDWEj5HomqU5d2lVLSgLEIpXXvRrImqn9c21L//nLjIHiW3nq3j3vHrZf/zHpAzvRCD8oGyIuib+hIL5rftJZ3MiuIxpfK4gTfZ+06BBfmQyVA0DHs7jwjBZPaC0dyBYijTGimf1roqKp7Q+RZ6uFci7UJcHS6o0moljb2stBGSFUnny7ApjtT4qPsXtYz/RGvgOm+akR6NsJugA9F7pC5YGvAX4Zy4K2DOlipQxZSyr+NbR2iXUd6GjVXgyQ4YmMOtoeDNG36M4QMSunRq412o1tAfU/7v5s74Ur4acp4GSLGmAX3xhfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RU26HfDTuZskgyMF/ZW12IPmj0H4Kv8gEq4x6WMRfhY=;
 b=J3jknBoWFjQo8/jODb5sbcQWx8OoCGmmxDP58h+RO33Hl4yOh8Iwd2reDSwbZN14IwU7MrL3/R4+gvR7NXjBK0La3rfZ10NDANbGDqA9adRub2Cx0uyIc8HmdtfegVdkXBc9IZsgkFnQFwul/me/oEXK94w05sxVGlBKAG3yrmY=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MW4PR10MB6605.namprd10.prod.outlook.com
 (2603:10b6:303:229::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Fri, 23 Sep
 2022 09:32:56 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::a493:38d9:86ee:73d6]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::a493:38d9:86ee:73d6%6]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 09:32:56 +0000
Date: Fri, 23 Sep 2022 12:32:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <Yy19N2LHs0TeH3HI@kadam>
References: <Yyxwn4XN6tnD1E6Z@kili>
 <68d3cbb5-0d3c-62f0-dc89-891361660742@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68d3cbb5-0d3c-62f0-dc89-891361660742@intel.com>
X-ClientProxiedBy: MR1P264CA0166.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:55::7) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2365:EE_|MW4PR10MB6605:EE_
X-MS-Office365-Filtering-Correlation-Id: ed03ef8c-f49c-4c9e-b15d-08da9d469848
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bh2JePJtrZYS3q74Ep6pI2l49HiDvWgJB+3nSGLKpc5mwirJiubStNsdGkuTlIQrARu0oS0Msajket2W48v11r89xbnzkG/uc+LLfbLhMoR1RpltD/jw6ZOerk7nFUpBGlJUStLuVarEmpmW+fG65WS7bSvT6cPzDIZlTuwrh+K6hdZ7puK9gxXtYqYts0HVbHNuzNrLpqDlidpZ+r2e/aP5fuiZzshs8sYD466NCX2JobV9J+lUQBxfaYNzKUbwdV4c3x59qtieeFf7nGsqBM/gPNiu7EX5e/17Yb4Z7FKIEJaK5niPpvlAZSiFZ6GFIaGIIOrScEwq86e39O96kQ+W736QeP8eblpwqHAsZHML0PTsAFKYROS1SD1XDJZ26NKcwmMXOs5G9RVFnny5lMOez1DJBpPJmcTa0bn6j/mDGK5kTm2/9mxtFqX19EOOf6wBorcFsdpvHHKxNWTwB90x4SR3G4h3To/SdGv8sGIAnssYqZroqsCBsd8ThUQexjeajchhW6yiKXFyu9ydiihBJtAJ2s1w8lmHb6VShljRl8iT1TwKv6urXa513c4gBPtmLq7NZvgKA8rRwC3wy0txnDm9e2nGiPjoFA6M4JccO/Z3tY2msVNjXthh2splz6n9YwBeltliI7+V1PfJ82AzxJBnx073BlUNqmikybv9x8bQSdphC2zOF513KknxinIYQ3ZJ1eed+DT0ab85hw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(136003)(366004)(346002)(39860400002)(396003)(451199015)(83380400001)(478600001)(6486002)(66946007)(66556008)(6916009)(6506007)(53546011)(316002)(6666004)(86362001)(41300700001)(4326008)(8936002)(66476007)(26005)(5660300002)(186003)(9686003)(38100700002)(6512007)(33716001)(44832011)(2906002)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FKCPg2I0ZPWGLiCy0sK7MtBtdGn6THqL+ROcjrv1K8if0mFcEcQnbfXA7a5N?=
 =?us-ascii?Q?wcc/8rIAZVMHwQQZyMDSw0vF+B86nmRb25Vbq8YpL/Vssuw9MNwFEn12mOLT?=
 =?us-ascii?Q?NHJG/yag5XHpPkrucV5dgJGFcdJMHb/bg3xzLWzcEi8X+UqC2sLpknfz/ARy?=
 =?us-ascii?Q?AinzukB6Ag2t0DTWNJB7fV0DVRCiD0qBVV+jOJCpxzYJ91PPeU3juOWapU9s?=
 =?us-ascii?Q?F4IoLGkIqookwrGXh5Se6+giS/z/tcyeY1AoSvQsTLVxv4LGyGl+Yv5tOOPC?=
 =?us-ascii?Q?wOvz262K3pu+8PW/fqoQ/mANP7G3bASoY+hApSxz3aprr4LjmriWj1nY6JCE?=
 =?us-ascii?Q?sl8px443oDwP+6EhwwOsGVbDAUOXhHralYzhgDG2eidjBsIHqiaWylbYMDlu?=
 =?us-ascii?Q?VF41I1ECwoLghc/qDoSHpei2izxaiwlib1npiaVFFK8YKA7XnI+XGOn2yn3H?=
 =?us-ascii?Q?o96A6GpvtsxM3aLDwWFlRVKYy3Z93kZLCc0+VdGZ7fn1NDPPGqPcOsSdwV9S?=
 =?us-ascii?Q?JEPillSi3po99MSCH/tAgYFaaGrc3nVn+n2AtXv2N9G0LuSqTyT4blCEcnJF?=
 =?us-ascii?Q?Q0or1/RGuJ2rtazX89fa1aN7Dnlsfbtx9aIflvcVVlvO0mFw7wgJVnBWsl6c?=
 =?us-ascii?Q?Xg2kHISY5Dx1qaeyIpyswZHT7/AxdmNvmIsu1O7wv7Qrv5aFKstaP1npsS2v?=
 =?us-ascii?Q?SJjKcOCatFElrOdOwzYaEkiURtNLIJLJdGhFlewogjs0zk/Nuf8fIcVMsZA4?=
 =?us-ascii?Q?+y90d4h/41uVsMDk1onFKvFTQBxJ7w/fgQcMyLIFwIhKVS4oBIsbMAIMlXeR?=
 =?us-ascii?Q?Q/i5ACl2chBU96msI4umMFus/JZULwYyc3PUqpeLo9auOspQW7UgwdhJ4S5O?=
 =?us-ascii?Q?T2yfDN84lRLAUi9L9Z90zwk7agGOW2cHtlvH467iVqL3nmI4ufLJxkGxulq5?=
 =?us-ascii?Q?lyGPHUIjArTioQlUygk8FCqDpXQuKhNlUMTRLbLeub5kGNO8V50155NVZK1M?=
 =?us-ascii?Q?O/3KU1F2RuYIwNJrgJL7KKu8RM296HwTLSw/4Yn99kjIBPyR4hNiH8igP7GL?=
 =?us-ascii?Q?fNPaYa2OKYvOaqw4ZCDylMssmDLIm0qPh7nZc3MroXzmeueVWWLfbomtMOqp?=
 =?us-ascii?Q?PjpAkXZRogb3ZBziYMrtT8ybltoSqfJVmsmkqUbcIJi9Hw1sCsLy0kbozDz8?=
 =?us-ascii?Q?IbOdyZ+baSZHNYRUU48wQ9qoIZ5zUkfSjQby7HJa5ssV7a6y8dLkJJwUQ0uE?=
 =?us-ascii?Q?5T1bxXxpsLTyN+wKwQXgSW1xdtvuatuovR9JXQSj3ZGjSpEai6dEEafaP732?=
 =?us-ascii?Q?qSD/zXuzci9z78mj7Di8JX6UyDtbf8uYq3hegjDfGtrpoZm68odd6j5KbPyQ?=
 =?us-ascii?Q?zg+jDuy8Qya9jNr294dnW659om8XAZemBKpXmlPE+uaHXYHkwqYTLSLktbxO?=
 =?us-ascii?Q?pA6QReN3L0FArDfSUH7Xdyfwk15RYNbth9sqvc+bt/uGMsPAZ4OVPlLCX0zV?=
 =?us-ascii?Q?dfUUvgDQfHk9Dvx3UxuBp1qvjqA3zYo38HGZ2YxoaqBkzsUC5mJOr036ZCFt?=
 =?us-ascii?Q?mlrItARnUEDi2d7JXlkBbjwaNKnSKQ0C92ldiwsn?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed03ef8c-f49c-4c9e-b15d-08da9d469848
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 09:32:55.7956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ncak6VeMcSqhznqkW6jLXr76QE2rNou6fpBCzv74BI4esoIIRhGVDbGSLSqYloYDwO7n9zt/S20X+uhFCBe1Z41Padr6Bl14mgYqxqXqVYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6605
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-23_02,2022-09-22_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209230061
X-Proofpoint-ORIG-GUID: 4f76tjlI4a6hShZYnoLIzupqiw9ktmT4
X-Proofpoint-GUID: 4f76tjlI4a6hShZYnoLIzupqiw9ktmT4
Subject: Re: [Intel-gfx] [bug report] drm/i915/guc: Implement multi-lrc
 submission
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

On Thu, Sep 22, 2022 at 01:01:48PM -0700, John Harrison wrote:
> On 9/22/2022 07:26, Dan Carpenter wrote:
> > Hello Matthew Brost,
> > 
> > The patch 6b540bf6f143: "drm/i915/guc: Implement multi-lrc
> > submission" from Oct 14, 2021, leads to the following Smatch static
> > checker warning:
> > 
> > 	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:752 __guc_add_request()
> > 	warn: refcount leak 'ce->ref.refcount.refs.counter': lines='752'
> > 
> > drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >      672 static int __guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >      673 {
> >      674         int err = 0;
> >      675         struct intel_context *ce = request_to_scheduling_context(rq);
> >      676         u32 action[3];
> >      677         int len = 0;
> >      678         u32 g2h_len_dw = 0;
> >      679         bool enabled;
> >      680
> >      681         lockdep_assert_held(&rq->engine->sched_engine->lock);
> >      682
> >      683         /*
> >      684          * Corner case where requests were sitting in the priority list or a
> >      685          * request resubmitted after the context was banned.
> >      686          */
> >      687         if (unlikely(intel_context_is_banned(ce))) {
> >      688                 i915_request_put(i915_request_mark_eio(rq));
> >      689                 intel_engine_signal_breadcrumbs(ce->engine);
> >      690                 return 0;
> >      691         }
> >      692
> >      693         GEM_BUG_ON(!atomic_read(&ce->guc_id.ref));
> >      694         GEM_BUG_ON(context_guc_id_invalid(ce));
> >      695
> >      696         if (context_policy_required(ce)) {
> >      697                 err = guc_context_policy_init_v70(ce, false);
> >      698                 if (err)
> >      699                         return err;
> >      700         }
> >      701
> >      702         spin_lock(&ce->guc_state.lock);
> >      703
> >      704         /*
> >      705          * The request / context will be run on the hardware when scheduling
> >      706          * gets enabled in the unblock. For multi-lrc we still submit the
> >      707          * context to move the LRC tails.
> >      708          */
> >      709         if (unlikely(context_blocked(ce) && !intel_context_is_parent(ce)))
> >      710                 goto out;
> >      711
> >      712         enabled = context_enabled(ce) || context_blocked(ce);
> >      713
> >      714         if (!enabled) {
> >      715                 action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
> >      716                 action[len++] = ce->guc_id.id;
> >      717                 action[len++] = GUC_CONTEXT_ENABLE;
> >      718                 set_context_pending_enable(ce);
> >      719                 intel_context_get(ce);
> >      720                 g2h_len_dw = G2H_LEN_DW_SCHED_CONTEXT_MODE_SET;
> >      721         } else {
> >      722                 action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT;
> >      723                 action[len++] = ce->guc_id.id;
> >      724         }
> >      725
> >      726         err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
> >      727         if (!enabled && !err) {
> >      728                 trace_intel_context_sched_enable(ce);
> >      729                 atomic_inc(&guc->outstanding_submission_g2h);
> >      730                 set_context_enabled(ce);
> >      731
> >      732                 /*
> >      733                  * Without multi-lrc KMD does the submission step (moving the
> >      734                  * lrc tail) so enabling scheduling is sufficient to submit the
> >      735                  * context. This isn't the case in multi-lrc submission as the
> >      736                  * GuC needs to move the tails, hence the need for another H2G
> >      737                  * to submit a multi-lrc context after enabling scheduling.
> >      738                  */
> >      739                 if (intel_context_is_parent(ce)) {
> >      740                         action[0] = INTEL_GUC_ACTION_SCHED_CONTEXT;
> >      741                         err = intel_guc_send_nb(guc, action, len - 1, 0);
> > 
> > Should this have a something like:
> > 
> > 				if (err)
> > 					intel_context_put(ce);
> No.
> 
> The ce has been marked as enabled above because the actual enable call
> succeeded.? This is a secondary call to 'poke' the context. If this fails,
> the context might not get scheduled in a timely manner but the tracking
> state is still correct. The context is now in use by GuC and therefore must
> be reference locked. And the 'context_enabled' flag is set on the i915 side
> to note that the reference count is held.
> 
> If you want to unwind at this point, you would need to send a
> CONTEXT_MODE_SET(DISABLE) H2G message (amongst other things) and only once
> that call has completed, can you call intel_context_put(ce).
> 
> I don't get why the analyser would be claiming a leak here. I'm not sure if
> it is just that the analyser is confused or if there is some other potential
> route to a leak. Is it possible to get more details as to how it thinks the
> leak can occur?

Thanks, this helps me a lot!

This is a Smatch static analysis thing I'm working on.  It simple enough
to silence the false positive.  I add this line which says that after
set_context_enabled() then ignore the reference counting.

	add_function_param_key_hook("set_context_enabled", &match_ignore,
			0, "$->ref.refcount.refs.counter", NULL);

The heuristic that the check is using is that if some error paths drop
the refcount then all error paths should do it.  So adding the if
statement I suggested would silence the warning (but introduce a bug in
the kernel).

regards,
dan carpenter
