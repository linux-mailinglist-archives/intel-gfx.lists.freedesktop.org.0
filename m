Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A5563F4A9
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 16:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AEF10E640;
	Thu,  1 Dec 2022 15:59:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5CBB10E48B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 15:27:39 +0000 (UTC)
Received: from in01.mta.xmission.com ([166.70.13.51]:35880)
 by out01.mta.xmission.com with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <ebiederm@xmission.com>)
 id 1p0Ozp-001Uik-H2; Wed, 30 Nov 2022 08:27:37 -0700
Received: from ip68-110-29-46.om.om.cox.net ([68.110.29.46]:37180
 helo=email.froward.int.ebiederm.org.xmission.com)
 by in01.mta.xmission.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <ebiederm@xmission.com>)
 id 1p0Ozo-00CIIO-F3; Wed, 30 Nov 2022 08:27:37 -0700
From: "Eric W. Biederman" <ebiederm@xmission.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
 <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
 <41455798-1dcb-135f-516d-25ab9a8082f5@linux.intel.com>
 <Y1A+9kN6bwfXeqVt@zx2c4.com>
 <8acc3e4a-abbc-32bc-626e-7a216f6755c3@linux.intel.com>
 <Y1Bby6FEEWiFIjjD@zx2c4.com>
 <d47b30e9-5619-c631-aa92-f5d89e88a909@linux.intel.com>
 <87a64brlao.fsf@email.froward.int.ebiederm.org>
 <CAHmME9pShsMrXwMhA+4FJKkc-nqCE74UQMXYy9fuEsoiDS2G=A@mail.gmail.com>
Date: Wed, 30 Nov 2022 09:26:28 -0600
In-Reply-To: <CAHmME9pShsMrXwMhA+4FJKkc-nqCE74UQMXYy9fuEsoiDS2G=A@mail.gmail.com>
 (Jason A. Donenfeld's message of "Mon, 28 Nov 2022 19:27:18 +0100")
Message-ID: <87fse0qx97.fsf@email.froward.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1p0Ozo-00CIIO-F3; ; ;
 mid=<87fse0qx97.fsf@email.froward.int.ebiederm.org>; ; ;
 hst=in01.mta.xmission.com; ; ; ip=68.110.29.46; ; ; frm=ebiederm@xmission.com;
 ; ; spf=pass
X-XM-AID: U2FsdGVkX19guLhaPc0o+ZBqhj9krm0N0rf470RxCGQ=
X-SA-Exim-Connect-IP: 68.110.29.46
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=8.0 tests=ALL_TRUSTED,BAYES_20,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,T_TooManySym_03,XMSubLong shortcircuit=no
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
 *      [score: 0.0650] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_03 6+ unique symbols in subject
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;"Jason A. Donenfeld" <Jason@zx2c4.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 526 ms - load_scoreonly_sql: 0.05 (0.0%),
 signal_user_changed: 12 (2.2%), b_tie_ro: 10 (1.9%), parse: 1.13
 (0.2%), extract_message_metadata: 39 (7.5%), get_uri_detail_list: 2.6
 (0.5%), tests_pri_-1000: 35 (6.7%), tests_pri_-950: 1.68 (0.3%),
 tests_pri_-900: 1.22 (0.2%), tests_pri_-200: 0.97 (0.2%),
 tests_pri_-100: 6 (1.2%), tests_pri_-90: 70 (13.2%), check_bayes: 61
 (11.5%), b_tokenize: 10 (1.9%), b_tok_get_all: 11 (2.0%), b_comp_prob:
 3.9 (0.7%), b_tok_touch_all: 30 (5.7%), b_finish: 1.27 (0.2%),
 tests_pri_0: 336 (63.9%), check_dkim_signature: 0.74 (0.1%),
 check_dkim_adsp: 4.6 (0.9%), poll_dns_idle: 0.44 (0.1%), tests_pri_10:
 2.2 (0.4%), tests_pri_500: 15 (2.8%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Sat, 08 Feb 2020 21:53:50 +0000)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-Mailman-Approved-At: Thu, 01 Dec 2022 15:58:17 +0000
Subject: Re: [Intel-gfx] signal: break out of wait loops on kthread_stop()
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
Cc: sultan@kerneltoast.com,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

"Jason A. Donenfeld" <Jason@zx2c4.com> writes:

> Hi Eric,
>
> On Mon, Nov 28, 2022 at 7:22 PM Eric W. Biederman <ebiederm@xmission.com> wrote:
>>
>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> writes:
>>
>> > On 19/10/2022 21:19, Jason A. Donenfeld wrote:
>> >> On Wed, Oct 19, 2022 at 09:09:28PM +0100, Tvrtko Ursulin wrote:
>> >>> Hm why is kthread_stop() after kthread_run() abuse? I don't see it in
>> >>> kerneldoc that it must not be used for stopping threads.
>> >> Because you don't want it to stop. You want to wait until it's done. If
>> >> you call stop right after run, it will even stop it before it even
>> >> begins to run. That's why you wind up sprinkling your msleeps
>> >> everywhere, indicating that clearly this is not meant to work that way.
>> > Not after kthread_run which wakes it up already. If the kerneldoc for
>> > kthread_stop() is correct at least... In which case I really do think
>> > that the yields are pointless/red herring. Perhaps they predate kthread_run and
>> > then they were even wrong.
>> >
>> >>> Yep the yields and sleeps are horrible and will go. But they are also
>> >>> not relevant for the topic at hand.
>> >> Except they very much are. The reason you need these is because you're
>> >> using kthread_stop() for something it's not meant to do.
>> >
>> > It is supposed to assert kthread_should_stop() which thread can look at as when
>> > to exit. Except that now it can fail to get to that controlled exit
>> > point. Granted that argument is moot since it implies incomplete error handling
>> > in the thread anyway.
>> >
>> > Btw there are actually two use cases in our code base. One is thread controls
>> > the exit, second is caller controls the exit. Anyway...
>> >
>> >>> Never mind, I was not looking for anything more than a suggestion on how
>> >>> to maybe work around it in piece as someone is dealing with the affected
>> >>> call sites.
>> >> Sultan's kthread_work idea is probably the right direction. This would
>> >> seem to have what you need.
>> >
>> > ... yes, it can be converted. Even though for one of the two use cases we need
>> > explicit signalling. There now isn't anything which would assert
>> > kthread_should_stop() without also asserting the signal, right?. Neither
>> > I found that the thread work API can do it.
>> >
>> > Fingers crossed we were the only "abusers" of the API. There's a quite a number
>> > of kthread_stop callers and it would be a large job to audit them all.
>>
>>
>> I have been out and am coming to this late.   Did this get resolved?
>>
>>
>> I really don't expect this affected much of anything else as the code
>> sat in linux-next for an entire development cycle before being merged.
>>
>> But I would like to make certain problems with this change were resolved.
>
> I just checked drm-next, and it looks like the i915 people resolved
> their issue, and also got rid of those pesky yield()s in the process:
> https://cgit.freedesktop.org/drm/drm/commit/?id=6407cf533217e09dfd895e64984c3f1ee3802373
>

Thank you for verifying this has been resolved.

Eric
