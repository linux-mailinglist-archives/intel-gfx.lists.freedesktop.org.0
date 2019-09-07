Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841CBAC43B
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 05:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A28E6E153;
	Sat,  7 Sep 2019 03:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 877E36E153
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 03:23:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 20:23:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; 
 d="gz'50?scan'50,208,50";a="213357911"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 20:23:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i6RK9-0007fx-QK; Sat, 07 Sep 2019 11:23:41 +0800
Date: Sat, 7 Sep 2019 11:23:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <201909071017.Plzko3it%lkp@intel.com>
References: <20190906093256.26198-7-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lnfjddbj42hw2ipz"
Content-Disposition: inline
In-Reply-To: <20190906093256.26198-7-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH v15 06/13] drm/i915/perf: move perf types to
 their own header
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--lnfjddbj42hw2ipz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lionel,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3-rc7]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-Vulkan-performance-query-support/20190907-052009
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-b001-201935 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/i915_perf.h:11:0,
                    from <command-line>:0:
>> drivers/gpu/drm/i915/i915_perf_types.h:25:2: error: unknown type name 'i915_reg_t'
     i915_reg_t addr;
     ^~~~~~~~~~
>> drivers/gpu/drm/i915/i915_perf_types.h:30:12: error: 'UUID_STRING_LEN' undeclared here (not in a function); did you mean '_LINUX_STRING_H_'?
     char uuid[UUID_STRING_LEN + 1];
               ^~~~~~~~~~~~~~~
               _LINUX_STRING_H_
>> drivers/gpu/drm/i915/i915_perf_types.h:73:6: error: unknown type name 'poll_table'; did you mean 'poll_to_key'?
         poll_table *wait);
         ^~~~~~~~~~
         poll_to_key
>> drivers/gpu/drm/i915/i915_perf_types.h:126:2: error: unknown type name 'intel_wakeref_t'
     intel_wakeref_t wakeref;
     ^~~~~~~~~~~~~~~

vim +/i915_reg_t +25 drivers/gpu/drm/i915/i915_perf_types.h

    23	
    24	struct i915_oa_reg {
  > 25		i915_reg_t addr;
    26		u32 value;
    27	};
    28	
    29	struct i915_oa_config {
  > 30		char uuid[UUID_STRING_LEN + 1];
    31		int id;
    32	
    33		const struct i915_oa_reg *mux_regs;
    34		u32 mux_regs_len;
    35		const struct i915_oa_reg *b_counter_regs;
    36		u32 b_counter_regs_len;
    37		const struct i915_oa_reg *flex_regs;
    38		u32 flex_regs_len;
    39	
    40		struct attribute_group sysfs_metric;
    41		struct attribute *attrs[2];
    42		struct device_attribute sysfs_metric_id;
    43	
    44		atomic_t ref_count;
    45	};
    46	
    47	struct i915_perf_stream;
    48	
    49	/**
    50	 * struct i915_perf_stream_ops - the OPs to support a specific stream type
    51	 */
    52	struct i915_perf_stream_ops {
    53		/**
    54		 * @enable: Enables the collection of HW samples, either in response to
    55		 * `I915_PERF_IOCTL_ENABLE` or implicitly called when stream is opened
    56		 * without `I915_PERF_FLAG_DISABLED`.
    57		 */
    58		void (*enable)(struct i915_perf_stream *stream);
    59	
    60		/**
    61		 * @disable: Disables the collection of HW samples, either in response
    62		 * to `I915_PERF_IOCTL_DISABLE` or implicitly called before destroying
    63		 * the stream.
    64		 */
    65		void (*disable)(struct i915_perf_stream *stream);
    66	
    67		/**
    68		 * @poll_wait: Call poll_wait, passing a wait queue that will be woken
    69		 * once there is something ready to read() for the stream
    70		 */
    71		void (*poll_wait)(struct i915_perf_stream *stream,
    72				  struct file *file,
  > 73				  poll_table *wait);
    74	
    75		/**
    76		 * @wait_unlocked: For handling a blocking read, wait until there is
    77		 * something to ready to read() for the stream. E.g. wait on the same
    78		 * wait queue that would be passed to poll_wait().
    79		 */
    80		int (*wait_unlocked)(struct i915_perf_stream *stream);
    81	
    82		/**
    83		 * @read: Copy buffered metrics as records to userspace
    84		 * **buf**: the userspace, destination buffer
    85		 * **count**: the number of bytes to copy, requested by userspace
    86		 * **offset**: zero at the start of the read, updated as the read
    87		 * proceeds, it represents how many bytes have been copied so far and
    88		 * the buffer offset for copying the next record.
    89		 *
    90		 * Copy as many buffered i915 perf samples and records for this stream
    91		 * to userspace as will fit in the given buffer.
    92		 *
    93		 * Only write complete records; returning -%ENOSPC if there isn't room
    94		 * for a complete record.
    95		 *
    96		 * Return any error condition that results in a short read such as
    97		 * -%ENOSPC or -%EFAULT, even though these may be squashed before
    98		 * returning to userspace.
    99		 */
   100		int (*read)(struct i915_perf_stream *stream,
   101			    char __user *buf,
   102			    size_t count,
   103			    size_t *offset);
   104	
   105		/**
   106		 * @destroy: Cleanup any stream specific resources.
   107		 *
   108		 * The stream will always be disabled before this is called.
   109		 */
   110		void (*destroy)(struct i915_perf_stream *stream);
   111	};
   112	
   113	/**
   114	 * struct i915_perf_stream - state for a single open stream FD
   115	 */
   116	struct i915_perf_stream {
   117		/**
   118		 * @dev_priv: i915 drm device
   119		 */
   120		struct drm_i915_private *dev_priv;
   121	
   122		/**
   123		 * @wakeref: As we keep the device awake while the perf stream is
   124		 * active, we track our runtime pm reference for later release.
   125		 */
 > 126		intel_wakeref_t wakeref;
   127	
   128		/**
   129		 * @engine: Engine associated with this performance stream.
   130		 */
   131		struct intel_engine_cs *engine;
   132	
   133		/**
   134		 * @sample_flags: Flags representing the `DRM_I915_PERF_PROP_SAMPLE_*`
   135		 * properties given when opening a stream, representing the contents
   136		 * of a single sample as read() by userspace.
   137		 */
   138		u32 sample_flags;
   139	
   140		/**
   141		 * @sample_size: Considering the configured contents of a sample
   142		 * combined with the required header size, this is the total size
   143		 * of a single sample record.
   144		 */
   145		int sample_size;
   146	
   147		/**
   148		 * @ctx: %NULL if measuring system-wide across all contexts or a
   149		 * specific context that is being monitored.
   150		 */
   151		struct i915_gem_context *ctx;
   152	
   153		/**
   154		 * @enabled: Whether the stream is currently enabled, considering
   155		 * whether the stream was opened in a disabled state and based
   156		 * on `I915_PERF_IOCTL_ENABLE` and `I915_PERF_IOCTL_DISABLE` calls.
   157		 */
   158		bool enabled;
   159	
   160		/**
   161		 * @ops: The callbacks providing the implementation of this specific
   162		 * type of configured stream.
   163		 */
   164		const struct i915_perf_stream_ops *ops;
   165	
   166		/**
   167		 * @oa_config: The OA configuration used by the stream.
   168		 */
   169		struct i915_oa_config *oa_config;
   170	
   171		/**
   172		 * The OA context specific information.
   173		 */
   174		struct intel_context *pinned_ctx;
   175		u32 specific_ctx_id;
   176		u32 specific_ctx_id_mask;
   177	
   178		struct hrtimer poll_check_timer;
   179		wait_queue_head_t poll_wq;
   180		bool pollin;
   181	
   182		bool periodic;
   183		int period_exponent;
   184	
   185		/**
   186		 * State of the OA buffer.
   187		 */
   188		struct {
   189			struct i915_vma *vma;
   190			u8 *vaddr;
   191			u32 last_ctx_id;
   192			int format;
   193			int format_size;
   194			int size_exponent;
   195	
   196			/**
   197			 * Locks reads and writes to all head/tail state
   198			 *
   199			 * Consider: the head and tail pointer state needs to be read
   200			 * consistently from a hrtimer callback (atomic context) and
   201			 * read() fop (user context) with tail pointer updates happening
   202			 * in atomic context and head updates in user context and the
   203			 * (unlikely) possibility of read() errors needing to reset all
   204			 * head/tail state.
   205			 *
   206			 * Note: Contention/performance aren't currently a significant
   207			 * concern here considering the relatively low frequency of
   208			 * hrtimer callbacks (5ms period) and that reads typically only
   209			 * happen in response to a hrtimer event and likely complete
   210			 * before the next callback.
   211			 *
   212			 * Note: This lock is not held *while* reading and copying data
   213			 * to userspace so the value of head observed in htrimer
   214			 * callbacks won't represent any partial consumption of data.
   215			 */
   216			spinlock_t ptr_lock;
   217	
   218			/**
   219			 * One 'aging' tail pointer and one 'aged' tail pointer ready to
   220			 * used for reading.
   221			 *
   222			 * Initial values of 0xffffffff are invalid and imply that an
   223			 * update is required (and should be ignored by an attempted
   224			 * read)
   225			 */
   226			struct {
   227				u32 offset;
   228			} tails[2];
   229	
   230			/**
   231			 * Index for the aged tail ready to read() data up to.
   232			 */
   233			unsigned int aged_tail_idx;
   234	
   235			/**
   236			 * A monotonic timestamp for when the current aging tail pointer
   237			 * was read; used to determine when it is old enough to trust.
   238			 */
   239			u64 aging_timestamp;
   240	
   241			/**
   242			 * Although we can always read back the head pointer register,
   243			 * we prefer to avoid trusting the HW state, just to avoid any
   244			 * risk that some hardware condition could * somehow bump the
   245			 * head pointer unpredictably and cause us to forward the wrong
   246			 * OA buffer data to userspace.
   247			 */
   248			u32 head;
   249		} oa_buffer;
   250	};
   251	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--lnfjddbj42hw2ipz
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--lnfjddbj42hw2ipz
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--lnfjddbj42hw2ipz--
