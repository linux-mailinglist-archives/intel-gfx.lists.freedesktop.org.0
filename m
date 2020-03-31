Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A903A199D39
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 19:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE366E872;
	Tue, 31 Mar 2020 17:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1799 seconds by postgrey-1.36 at gabe;
 Tue, 31 Mar 2020 17:51:44 UTC
Received: from 6.mo5.mail-out.ovh.net (6.mo5.mail-out.ovh.net [178.32.119.138])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54716E871
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 17:51:44 +0000 (UTC)
Received: from player726.ha.ovh.net (unknown [10.108.54.72])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 2639C276FD9
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 19:13:16 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player726.ha.ovh.net (Postfix) with ESMTPSA id 1F66010E5A908;
 Tue, 31 Mar 2020 17:13:10 +0000 (UTC)
Date: Tue, 31 Mar 2020 20:13:09 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200331171309.GC26946@jack.zhora.eu>
References: <20200331164508.51514-1-andi@etezian.org>
 <158567361246.5852.4972436644557691162@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158567361246.5852.4972436644557691162@build.alporthouse.com>
X-Ovh-Tracer-Id: 8803129897050227209
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrtddtgdejjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedviedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: move remaining debugfs
 interfaces into gt
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Tue, Mar 31, 2020 at 05:53:32PM +0100, Chris Wilson wrote:
> Quoting Andi Shyti (2020-03-31 17:45:08)
> > +static void intel_sseu_copy_subslices(const struct sseu_dev_info *sseu,
> > +                                     int slice, u8 *to_mask)
> > +{
> > +       int offset = slice * sseu->ss_stride;
> > +
> > +       memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
> > +}
> 
> Worth moving all the sseu into their file? There's quite a few of them
> and each quite chunky.
> 
> > +static int interrupt_info_show(struct seq_file *m, void *data)
> 
> And if we start there, we might end up with debugfs_gt_irq.c as well?
> (Not that I see any use for this debugfs info :)

add a debufs_gt_sseu.c and debugfs_gt_irq.c, isn't it a bit
excessive? I also do agree that everything in one file looks a
bit stuffed.

> > +static int reset_get(void *data, u64 *val)
> > +{
> > +       struct intel_gt *gt = data;
> > +       int ret = intel_gt_terminally_wedged(gt);
> > +
> > +       switch (ret) {
> > +       case -EIO:
> > +               *val = 1;
> > +               return 0;
> > +       case 0:
> > +               *val = 0;
> > +               return 0;
> > +       default:
> > +               return ret;
> > +       }
> 
> reset_get? Ok if you document it as reporting wedged status :)
> 
> > +}
> > +
> > +static int reset_set(void *data, u64 val)
> > +{
> > +       struct intel_gt *gt = data;
> > +
> > +       /* Flush any previous reset before applying for a new one */
> > +       wait_event(gt->reset.queue,
> > +                  !test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> > +
> > +       intel_gt_handle_error(gt, val, I915_ERROR_CAPTURE,
> > +                             "Manually set wedged engine mask = %llx", val);
> 
> No hint of i915_wedged any more. Just "Manual reset engine mask %llx",
> or somesuch will do.

OK, I will try to improve the transition freom "wedged" to
"reset". Thanks.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
